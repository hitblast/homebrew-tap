cask "preconnect" do
  version "2.1.0+202610001"
  escaped_version = version.to_s.gsub("+", "%2B")

  url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.pkg"
  sha256 "75a37de34a830df1692b0b7f4a27d96c3ee9f6ac7e7db07971a484b4a5dfbb49"

  name "PreConnect"
  desc "Fast, Calm Academic Companion App. An initiative run by BRAC University students."
  homepage "https://github.com/sabbirba/preconnect"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  pkg "PreConnect-macos-release-#{version}.pkg"
  app "PreConnect.app"
end
