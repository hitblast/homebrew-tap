# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.7.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '86753a7ec581592af8d679f60e99e048a13c28b7654007ad8645089db90ebfd5'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 '5952560540b551c8595f670ce9ad4887a9219246b29d5e73847a779dceead710'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
