# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.1.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '25ed817887bc6d3ab23eed53823bd08a379f6923aa66c93f181864465067faef'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 'a6c4e3146760b6c80ce0288e441e4392a4ddfafd5010039073669b5a5c6df26e'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
