#!/bin/sh -eu
# make files executable
chmod +x .sleep
chmod +x .wakeup
printf "==> Setting up SlackStatus App\n"
printf "####                     (20%%)\r"

# install sleepwatcher
brew update > /dev/null
printf "############             (60%%)\r"
brew install sleepwatcher > /dev/null
printf "################         (80%%)\r"

# load to LaunchAgents
cp de.bernhard-baehr.sleepwatcher.plist ~/Library/LaunchAgents/
launchctl unload ~/Library/LaunchAgents/de.bernhard-baehr.sleepwatcher.plist
launchctl load ~/Library/LaunchAgents/de.bernhard-baehr.sleepwatcher.plist
printf "####################     (100%%)\r"
