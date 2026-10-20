# frozen_string_literal: true

# Calculate saved time on videos with multipliers.
class Trimsec < Formula
  version '5.0.0'
  desc 'Plan your content intake.'
  homepage 'https://github.com/hitblast/trimsec'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-aarch64-apple-darwin-v#{version}.tar.gz"
    sha256 'e9e39be1e4041d5f32ce6f8defa790c00d4acdee5f23680e5e19cfcaee96ac91'
  else
    url "https://github.com/hitblast/trimsec/releases/download/v#{version}/trimsec-x86_64-apple-darwin-v#{version}.tar.gz"
    sha256 '6c3f7d5f631d873bbeb0bf8f871e7b045f1ff4cc382312d738ec894846e8e916'
  end

  license 'MIT'

  def install
    bin.install 'ts'
  end
end
