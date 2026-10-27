# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.2.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '1dee87c3ba38e6bf541c850bbded1a2c126d767c8522af779105b7f36080c34e'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 'c71f0d6f84a039466a6ee2efdc5070d7be2e90e13fe83ddbd59fdfdf8f96cb6c'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
