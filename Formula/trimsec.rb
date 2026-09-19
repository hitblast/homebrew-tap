# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '3.0.1'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-macos-latest.tar.gz"
    sha256 '04d7e6c4d7673be6a164a7e9be2d0489ab11bda9cd75954a2386cef6871cb07b'
  else
    odie 'trimsec is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on macos: :big_sur

  def install
    bin.install 'ts'
  end
end
