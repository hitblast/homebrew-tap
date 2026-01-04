# frozen_string_literal: true

# Write to your future self.
class Cornelli < Formula
  version '1.2.0'
  desc 'Write to your future self.'
  homepage 'https://github.com/hitblast/cornelli'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/cornelli/releases/download/v#{version}/cornelli-macos-latest.tar.gz"
    sha256 '76388e50ed89163fe2846174764ed3a21335d477cde61208c32990ffcdfead7b'
  else
    odie 'cornelli is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on :macos

  def install
    bin.install 'nelli'
  end
end
