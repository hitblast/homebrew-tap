cask "preconnect" do
  version "1.6.5+202605037"

  on_arm do
    escaped_version = version.to_s.gsub("+", "%2B")
    url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.dmg"
    sha256 "eea68e3f2e4e3e2be01dad60d684df6ad07428bcc15cab32e825b40deced5684"
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
