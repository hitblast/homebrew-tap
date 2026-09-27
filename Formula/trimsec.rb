# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.5.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-macos-latest.tar.gz"
    sha256 '28daa1c2e26c60b7d14005b8b75ea2942fb36b918cc38b95b4c34fb0c1d8a092'
  else
    odie 'trimsec is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on macos: :big_sur

  def install
    bin.install 'ts'
  end
end
