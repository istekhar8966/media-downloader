# YouTube Media Downloader (Bash Script)

A simple but powerful tool to download YouTube content as MP3 or MP4 files. Works on Linux, macOS, and WSL.
What It Does

Convert YouTube videos to MP3 (audio) or MP4 (video)

Handles both single videos and entire playlists

Keeps your files organized with clean filenames

Shows progress right in your terminal

Preserves video/audio quality

Requirements

You'll need these installed first:

yt-dlp (the best YouTube downloader)

ffmpeg (for converting formats)

Installation Guide

For Ubuntu/Debian:
bash

    sudo apt update && sudo apt install -y yt-dlp ffmpeg

For Arch/Manjaro:
bash

    sudo pacman -S yt-dlp ffmpeg

For macOS (using Homebrew):
bash

    brew install yt-dlp ffmpeg

If your package manager doesn't have them, you can try:
bash

    pip install -U yt-dlp

How to Use

Download the script

Make it executable:
bash

    chmod +x media-downloader.sh

Run it:
bash

    ./media-downloader.sh

The script will guide you through the rest - just follow the prompts!
Supported Systems

✔️ Most Linux distros (Ubuntu, Arch, Fedora, etc.)
✔️ macOS (both Intel and Apple Silicon)
✔️ Windows Subsystem for Linux (WSL)
❌ Regular Windows (not supported yet)
Tips

For playlists, the script creates a separate folder to keep things tidy

MP3 files come with proper metadata (title, artist, etc.)

You can choose video quality when downloading MP4

Let me know if you run into any issues!
