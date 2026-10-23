# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.1.2'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '42c1b2493ed6c7c5606d784e1609d3b62c70e805e549b4bb5cf9fcfede4c34c7'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 '7999ff7d3a0e2c063d72faa20ae3575a0f2fb4c5fb3826662c20f14f883ce59c'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
