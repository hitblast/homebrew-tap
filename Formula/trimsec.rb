# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.0.1'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 '650a168b2103ba9484e14517bddf0f07cf763892ac6dca91e1f6095e55aee348'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 '99cc62f6404994b9c42715cc0cb3924b5e25949e05b90a777bb6a053cbdc1832'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
