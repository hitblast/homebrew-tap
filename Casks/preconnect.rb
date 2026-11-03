cask "preconnect" do
  version "2.1.3+202611009"
  escaped_version = version.to_s.gsub("+", "%2B")

  url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.pkg"
  sha256 "3f31c9f093b1f9c8f230b5eefc872106db5ab20c0957de72fadef7894fbf506c"

  name "PreConnect"
  desc "Fast, Calm Academic Companion App. An initiative run by BRAC University students."
  homepage "https://github.com/sabbirba/preconnect"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  pkg "PreConnect-macos-release-#{version}.pkg"
  app "PreConnect.app"
end
