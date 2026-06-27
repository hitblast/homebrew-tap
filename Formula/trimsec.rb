# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '2.1.0'
  desc 'Calculate saved time on videos with multipliers.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-macos-latest.tar.gz"
    sha256 'a72f9f7d53f9af96d8e632300573b66ac342a4cd38bffe92f701cb3da81f024e'
  else
    odie 'trimsec is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on macos: :big_sur

  def install
    bin.install 'ts'
  end
end
