# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Cornelli < Formula
  version '2.0.0'
  desc 'Calculate saved time on videos with multipliers.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-macos-latest.tar.gz"
    sha256 'deb863ed4cfc2c314f91a457d5072471ccf33bf4fe55a1bc388c0c0aa3d4dd5f'
  else
    odie 'trimsec is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on macos: :big_sur

  def install
    bin.install 'ts'
  end
end
