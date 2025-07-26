# Instant OCR Screenshot for Hyprland

A fast, local OCR server that integrates with Hyprland to instantly recognize text from a screenshot and copy it to your clipboard.

This project solves the slowness of typical command-line OCR tools by running a persistent background server, allowing for near-instantaneous text recognition after the initial model load.

## Features

* 🚀 **Fast Performance:** Loads the OCR model once for near-instantaneous results (~1-2 seconds per request).
* 📋 **Clipboard Integration:** Automatically copies recognized text to the Wayland clipboard.
* 🐧 **Linux & Wayland Focused:** Built for Hyprland using tools like `grim`, `slurp`, and `wl-copy`.
* 🔧 **Easy Management:** Simple shell scripts to start, stop, and restart the background server.
* 🔒 **Fully Local:** Your images are processed on your machine and never sent to the cloud.

---

## Prerequisites

Before you begin, ensure you have the following system dependencies installed.

On Arch Linux, you can install them with:
```bash
sudo pacman -S python git grim slurp curl wl-clipboard