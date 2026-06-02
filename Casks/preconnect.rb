cask "preconnect" do
  version "1.6.6+202605074"

  on_arm do
    escaped_version = version.to_s.gsub("+", "%2B")
    url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.dmg"
    sha256 "2551b6475abb82027e3e87aa1c041806d82cbba61dcccf3b454fe7afbd7b2138"
  end

  name "PreConnect"
  desc "Fast, Calm Academic Companion App. An initiative run by BRAC University students."
  homepage "https://github.com/sabbirba/preconnect"

  depends_on macos: ">= :big_sur"

  postflight do
    system_command "/usr/bin/xattr", args: ["-r", "-c", "#{appdir}/PreConnect.app"]
  end

  app "PreConnect.app"
end
