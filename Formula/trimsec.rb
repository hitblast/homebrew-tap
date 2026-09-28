# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.5.8'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '6a51aed00ebbc17b14691862da79f8667191c8f60a50d187805807859478943e'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 'b97932eb9bc0f2f59732a5603046a1638bfbbe8ef4fc1283c49758938709ee8e'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
