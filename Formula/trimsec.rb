# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.5.7'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '62719f9857b33ca88ef6e9b74ebb2e5cc7b3cf438bdcb9216b9dc17663ba7e91'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 '4af2be0f847ae2693c7e2e14112b1f7559054471796c9970b51fa35bcde8828f'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
