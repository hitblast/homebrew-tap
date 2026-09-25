# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.0.1'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-macos-latest.tar.gz"
    sha256 'ccc810b0732eb35541e3637210e786c8b5b3fe0de5b134ba3713f1032883e407'
  else
    odie 'trimsec is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on macos: :big_sur

  def install
    bin.install 'ts'
  end
end
