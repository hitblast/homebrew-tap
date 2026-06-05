cask "preconnect" do
  version "1.6.6+202605100"

  on_arm do
    escaped_version = version.to_s.gsub("+", "%2B")
    url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.dmg"
    sha256 "14383d6551d69439f13693b9e4421d062a618d5767624e265c075db932d30164"
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
