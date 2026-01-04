# frozen_string_literal: true

cask 'alter' do
  version '1.2.0'

  name 'Alter'
  desc 'Alter is a minimal macOS app which can be used to customize your app icons with ease.'
  homepage 'https://github.com/hitblast/Alter'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/Alter/releases/download/v#{version}/alter-v#{version}-darwin-arm64.zip"
    sha256 'fa70acfa1d7623b5238cf06857d7872a4d268b02d3d3e6f95a5bd262eb6a5c04'
  else
    odie 'Alter is only available for ARM-based Macs (Apple Silicon).'
  end

  depends_on macos: '>= :sequoia'

  postflight do
    system_command '/usr/bin/xattr', args: ['-d', 'com.apple.quarantine', "#{appdir}/Alter.app"]
  end

  app 'Alter.app'
end
