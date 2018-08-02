#!/bin/bash

plist_label="com.github.bwagner5.sayquotes"

(
cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>$plist_label</string>

  <key>ProgramArguments</key>
  <array>
    <string>/Users/$USER/say-quotes/say-quotes.sh</string>
  </array>

  <key>Nice</key>
  <integer>1</integer>

  <key>StartInterval</key>
  <integer>3600</integer>

  <key>RunAtLoad</key>
  <true/>

  <key>StandardErrorPath</key>
  <string>/tmp/say-quotes.err</string>

  <key>StandardOutPath</key>
  <string>/tmp/say-quotes.out</string>
</dict>
</plist>
EOF
) > $HOME/Library/LaunchAgents/$plist_label.plist

launchctl load $HOME/Library/LaunchAgents/$plist_label.plist
