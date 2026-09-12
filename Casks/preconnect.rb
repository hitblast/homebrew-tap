cask "preconnect" do
  version "2.0.9+202609013"
  escaped_version = version.to_s.gsub("+", "%2B")

  on_arm do
    url "https://github.com/sabbirba/preconnect/releases/download/v#{escaped_version}/PreConnect-macos-release-#{escaped_version}.pkg"
    sha256 "a4c2d8671ae82b6756e07e63a5318ffdb5fc49ac65b2ed39cbb265f59650c943"
  end

  name "PreConnect"
  desc "Fast, Calm Academic Companion App. An initiative run by BRAC University students."
  homepage "https://github.com/sabbirba/preconnect"

  depends_on macos: :big_sur

  pkg "PreConnect-macos-release-#{escaped_version}.pkg"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-c", "#{appdir}/PreConnect.app"],
                   must_succeed: false
  end

  app "PreConnect.app"
end
