#!/bin/bash

# Install system dependencies for Chromium
apt-get update
apt-get install -y \
    libxfixes3 libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxi6 libxtst6 libxrandr2 \
    libasound2 libatk1.0-0 libcups2 libdbus-1-3 libgdk-pixbuf2.0-0 libgtk-3-0 libnspr4 \
    libnss3 libxss1 libxshmfence1

# Install Puppeteer if not already installed
npm install puppeteer

# Reinstall Puppeteer Chromium
npx puppeteer browsers install chrome
