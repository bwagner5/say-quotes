class SayQuotes < Formula
  desc "Uses the mac \"say\" command to speak quotes every so often. Fun to quickly install if someone leaves their computer unlocked :)"
  homepage "https://github.com/bwagner5/say-quotes"
  url "https://github.com/bwagner5/say-quotes/archive/1.1.tar.gz"
  sha256 "b3f3f7408aea1276d954c7a4ffe9796ad779f0c19b0167ccb147df525ea4799f"

  def install
    bin.install "say-quotes"
  end

  test do
    system "#{bin}/say-quotes --help"
  end

  plist_options :startup => true

  def plist; <<-EOS
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>#{plist_name}</string>

  <key>ProgramArguments</key>
  <array>
    <string>#{bin}/say-quotes</string>
  </array>

  <key>Nice</key>
  <integer>1</integer>

  <key>StartInterval</key>
  <integer>1440</integer>

  <key>RunAtLoad</key>
  <true/>

  <key>StandardErrorPath</key>
  <string>/dev/null</string>

  <key>StandardOutPath</key>
  <string>/dev/null</string>
</dict>
</plist>
EOS
  end
end

