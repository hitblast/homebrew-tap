# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.3.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '96d26ccfac78c89c05a50cda8dcd4f07d3442c1e389cb94c4599bd0d3574e010'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 '92264298632947f2a5d1169bb8f34cf0cd8e296314bd6f5d479e939feabdce84'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
