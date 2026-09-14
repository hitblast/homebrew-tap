# frozen_string_literal: true

cask 'alter' do
  version '1.3.0'

  name 'Alter'
  desc 'Alter is a minimal macOS app which can be used to customize your app icons with ease.'
  homepage 'https://github.com/hitblast/Alter'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/Alter/releases/download/v#{version}/alter-v#{version}-darwin-arm64.zip"
    sha256 '3814a0eb127a0a8df1cf71903ad9edae1917760a6e392b738f4ce909eca17b9e'
  else
    odie 'Alter is only available for ARM-based Macs (Apple Silicon).'
  end

  depends_on macos: :sequoia

  app 'Alter.app'
end
