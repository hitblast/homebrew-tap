# frozen_string_literal: true

# Write to your future self.
class Cornelli < Formula
  version '1.4.1'
  desc 'Write to your future self.'
  homepage 'https://github.com/hitblast/cornelli'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/cornelli/releases/download/v#{version}/cornelli-macos-latest.tar.gz"
    sha256 'aadb768bdbcea7e31d137b536e0ac5cc0e513a3a77a8178932bfa6fe80c81f8c'
  else
    odie 'cornelli is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on :macos

  def install
    bin.install 'nelli'
  end
end
