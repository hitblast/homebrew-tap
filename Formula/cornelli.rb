# frozen_string_literal: true

# Write to your future self.
class Cornelli < Formula
  version '1.4.0'
  desc 'Write to your future self.'
  homepage 'https://github.com/hitblast/cornelli'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/cornelli/releases/download/v#{version}/cornelli-macos-latest.tar.gz"
    sha256 'ea1a1b259d79aa3037c5f3ebceb1b1cbf3dc9598b3f38b7c457dd91adaec5b86'
  else
    odie 'cornelli is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on :macos

  def install
    bin.install 'nelli'
  end
end
