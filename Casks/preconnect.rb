cask "preconnect" do
  version "2.0.9+202609013"

  name "PreConnect"
  desc "Fast, Calm Academic Companion App. An initiative run by BRAC University students."
  homepage "https://github.com/sabbirba/preconnect"

  depends_on macos: :big_sur

  on_arm do
    url "https://github.com/sabbirba/preconnect/releases/download/v#{version}/PreConnect-macos-release-#{version}.pkg"
    sha256 "a4c2d8671ae82b6756e07e63a5318ffdb5fc49ac65b2ed39cbb265f59650c943"
  end

  pkg "PreConnect-macos-release-#{version}.pkg"
  app "PreConnect.app"
end
