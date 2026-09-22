cask "preconnect" do
  version "2.0.9+202609020"
  escaped_version = version.to_s.gsub("+", "%2B")

  url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.pkg"
  sha256 "194eccb8933f81ca670fb1a54d8aa9b640d2e8f98ede392411cd9ef8dd380a0c"

  name "PreConnect"
  desc "Fast, Calm Academic Companion App. An initiative run by BRAC University students."
  homepage "https://github.com/sabbirba/preconnect"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  pkg "PreConnect-macos-release-#{version}.pkg"
  app "PreConnect.app"
end
