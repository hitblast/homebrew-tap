cask "preconnect" do
  version "1.6.6+202605057"

  on_arm do
    escaped_version = version.to_s.gsub("+", "%2B")
    url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.dmg"
    sha256 "171daf7fe2d9846f45f0676c43643763bd8c86dd1cd1ceb50d8291a3c017d895"
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
