# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.2.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-macos-latest.tar.gz"
    sha256 'dea27a7a127f59a94fb1755e52c070ba01e2ab0560bfd51998bcb6442a186470'
  else
    odie 'trimsec is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on macos: :big_sur

  def install
    bin.install 'ts'
  end
end
