cask "preconnect" do
  version "2.1.4+202611011"
  escaped_version = version.to_s.gsub("+", "%2B")

  url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.pkg"
  sha256 "d2ac488d1fa73e99052adc4b6c1704a18cc6ae6108970f96cfe7615b3d53655f"

  name "PreConnect"
  desc "Fast, Calm Academic Companion App. An initiative run by BRAC University students."
  homepage "https://github.com/sabbirba/preconnect"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  pkg "PreConnect-macos-release-#{version}.pkg"
  app "PreConnect.app"
end
