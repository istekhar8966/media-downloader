#!/bin/bash

# ---------------------------------------------
# YouTube Media Downloader (Audio/Video)
# By: Md Istekhar
# Dependencies: yt-dlp, ffmpeg
# ---------------------------------------------

# ✅ Check dependencies
command -v yt-dlp >/dev/null 2>&1 || { echo >&2 "yt-dlp not installed. Please install it."; exit 1; }
command -v ffmpeg >/dev/null 2>&1 || { echo >&2 "ffmpeg not installed. Please install it."; exit 1; }

# 🧼 Clear screen & intro
clear
echo "==============================="
echo "   YouTube Media Downloader"
echo "==============================="
echo ""
echo "Select download type:"
echo "1) Audio (MP3)"
echo "2) Video (MP4)"
read -p "Enter choice [1/2]: " choice

# 🔗 Get URL
read -p "Enter YouTube video or playlist URL: " raw_url
url=$(echo "$raw_url" | tr -d '[:space:]')

if [[ -z "$url" ]]; then
    echo "Error: URL cannot be empty."
    exit 1
fi

# 🤖 Detect playlist vs single video
if [[ "$url" == *"list="* ]]; then
    playlist_flag=""
else
    playlist_flag="--no-playlist"
fi

# 📁 Set output folder
output_dir="Downloads"
mkdir -p "$output_dir"

# 📦 Archive file to avoid re-downloads
archive_file="downloaded.txt"

# 🎵 Function: Download audio
download_audio() {
    echo ""
    echo "Downloading audio (MP3)..."
    yt-dlp $playlist_flag \
        -x --audio-format mp3 --audio-quality 0 \
        --download-archive "$archive_file" \
        --restrict-filenames \
        --ignore-errors --retries 5 --fragment-retries 5 \
        --embed-metadata --embed-thumbnail \
        --newline \
        -o "$output_dir/%(playlist_title,video_title)s/%(title)s.%(ext)s" \
        "$url"
}

# 🎥 Function: Download video
download_video() {
    echo ""
    echo "Fetching available video formats..."
    yt-dlp $playlist_flag -F "$url"

    echo ""
    read -p "Enter the format code (e.g. 18 = 360p, 22 = 720p): " format_code
    echo ""
    echo "Downloading video..."
    yt-dlp $playlist_flag \
        -f "$format_code" \
        --download-archive "$archive_file" \
        --restrict-filenames \
        --ignore-errors --retries 5 --fragment-retries 5 \
        --newline \
        -o "$output_dir/%(playlist_title,video_title)s/%(title)s.%(ext)s" \
        "$url"
}

# 🚦 Main logic
if [[ "$choice" == "1" ]]; then
    download_audio
elif [[ "$choice" == "2" ]]; then
    download_video
else
    echo "Invalid choice. Exiting."
    exit 1
fi

echo ""
echo "✅ Download complete. Files saved in '$output_dir/'"
