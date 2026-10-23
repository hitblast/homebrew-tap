# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.1.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '7d27eea7423278d42d1845ba91a7645606c5019a85f546d15c2d8c4836d42226'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 '6e8eda755e1c50d2133324ca6a64837d9a3fbfb55e514ed30c353e3d8e21ac41'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
