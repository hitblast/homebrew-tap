# frozen_string_literal: true

# Write to your future self.
class Cornelli < Formula
  version '1.3.0'
  desc 'Write to your future self.'
  homepage 'https://github.com/hitblast/cornelli'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/cornelli/releases/download/v#{version}/cornelli-macos-latest.tar.gz"
    sha256 '6facff11f83ccff284b22567d2c5a0b539df7ebbf3ff449c2cc5e9f540b5e692'
  else
    odie 'cornelli is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on :macos

  def install
    bin.install 'nelli'
  end
end
