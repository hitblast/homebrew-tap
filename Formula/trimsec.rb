# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '4.7.1'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '7f38dfa65f573ad75e9632ad334abce3bf445e4846be2f8a128b63f70a75bda8'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 'e3c3f703205f14bf0e944dd1de4a20899fd66fefc292efd04316331a22fd9d48'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
