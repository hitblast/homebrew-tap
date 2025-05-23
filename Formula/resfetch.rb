# frozen_string_literal: true

# Homebrew formula for Resfetch: A fast and minimal alternative to neofetch.
class Resfetch < Formula
  version '1.1.2'
  desc 'A fast and minimal alternative to neofetch'
  homepage 'https://github.com/furtidev/resfetch'
  url "https://github.com/hitblast/resfetch/archive/refs/tags/#{version}.tar.gz"
  sha256 '87f1c1fd2a2c334c1d7843f9604da4cf1b857a577806d73605317fdf9029461f'
  license 'MIT'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'build', '--release', '--bin', 'resfetch'
    bin.install 'target/release/resfetch'
  end
end
