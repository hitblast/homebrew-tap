# frozen_string_literal: true

# Flight computer for your academics.
class Jettison < Formula
  version '0.1.2'
  desc 'Flight computer for your academics.'
  homepage 'https://github.com/hitblast/jettison'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/jettison/releases/download/v#{version}/jts-macos-latest.tar.gz"
    sha256 '7d59bb0214f8b4ce71f287f8f89a7ed994b96c9699c7105455f791732eba607d'
  else
    odie 'jettison is only available for ARM versions of macOS (Apple Silicon).'
  end

  license 'MIT'

  depends_on :macos

  def install
    bin.install 'jts'
  end
end
