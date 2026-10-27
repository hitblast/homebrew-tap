# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.2.1'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '672b80a93efb253e49fec8903347f32a97fce02f8c94ed637e74026181b2714a'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 'dcf5621bc850ad04425931a679ecfcb6358169ead4df88769d5690fd4508c9fa'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
