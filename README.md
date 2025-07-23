# media-downloader
# 🎧 YouTube Media Downloader - Bash Script

This is a powerful and simple Bash script to download **YouTube songs**, **videos**, and **playlists** directly in **MP3 (audio)** or **MP4 (video)** format — with support for high-quality downloads, metadata, and progress tracking.

---

## 🧰 What It Does

- Downloads **YouTube playlists**, **single videos**, or **songs**
- Choose whether to download as:
  - 🎵 Audio (MP3)
  - 🎥 Video (MP4 with resolution option)
- Works on:
  - ✅ Playlists
  - ✅ Single video URLs
- Sanitizes file names (removes spaces/special characters)
- Prints clean progress info in terminal (no emojis)
- Automatically embeds **thumbnail, metadata**, and **title** in audio
- Lightweight and 100% command-line based

---

## 💻 Supported Operating Systems

| OS / Distro        | Status       |
|--------------------|--------------|
| Ubuntu / Debian    | ✅ Supported |
| Arch / Manjaro     | ✅ Supported |
| Fedora / RHEL      | ✅ Supported |
| Alpine Linux       | ✅ Supported |
| macOS (Intel/ARM)  | ✅ Supported |
| Windows WSL        | ✅ Supported |
| Native Windows     | ❌ Not Supported (yet) |

---

## 📦 Installation (Dependencies)

Script needs **yt-dlp** and **ffmpeg** installed.

### 🐧 Ubuntu / Debian

```bash
sudo apt update
sudo apt install -y yt-dlp ffmpeg

