# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.7.2'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '832135b71c29cf549d9fde95344659a8126117595caa1e0260a8ac818886f1cd'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 'd301f49b356b969d48b0a95d94ffb77db346d3503b0ba2b2de6cebb0e14197be'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
