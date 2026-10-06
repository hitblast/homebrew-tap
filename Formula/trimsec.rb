# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.6.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '389643bbb99dd57beb2ed3f2cade81a284ded2cdbd12bb45b2b4dbf929afee8a'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 'c92941b7c314eaf121e920707b5ca7af3ece8b77d467f00e555614be24de76f3'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
