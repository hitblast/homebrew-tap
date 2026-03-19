# frozen_string_literal: true

# DEVELOPMENT FORK SCRIPT
# DO NOT USE IN PRODUCTION

cask 'quantumlauncher' do
  version '0.5.1'

  name 'QuantumLauncher'
  desc 'A minimalistic Minecraft launcher for Windows, macOS and Linux.'
  homepage 'https://github.com/Mrmayman/quantumlauncher'

  depends_on macos: '>= :catalina'

  on_arm do
    url "https://github.com/Mrmayman/quantumlauncher/releases/download/v0.5.1/quantum_launcher_macos_aarch64.dmg"
    sha256 "5a9744d553e4871ee5a6300ec4660333e1fa35b9689b45c56540cb1ea219a596"
  end

  on_intel do
    url "https://github.com/Mrmayman/quantumlauncher/releases/download/v0.5.1/quantum_launcher_macos_x86_64.dmg"
    sha256 "6a0e9fcaa5cd92080689a9c77d11475272ce2d6e78c0ddc0d8b3fc39a6dc8b9d"
  end

  postflight do
    system_command '/usr/bin/xattr', args: ['-d', 'com.apple.quarantine', "#{appdir}/quantum-launcher.app"]
  end

  app 'quantum-launcher.app'
end
