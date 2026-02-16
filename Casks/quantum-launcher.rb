# frozen_string_literal: true

# DEVELOPMENT FORK SCRIPT
# DO NOT USE IN PRODUCTION

cask 'quantum-launcher' do
  version '0.5.0'

  name 'QuantumLauncher'
  desc '(Development Fork) A minimalistic Minecraft launcher for Windows, macOS and Linux.'
  homepage 'https://github.com/hitblast/quantumlauncher'

  depends_on macos: '>= :catalina'

  on_arm do
    url "https://github.com/hitblast/quantumlauncher/releases/download/v#{version}/quantum_launcher_macos_aarch64.zip"
    sha256 "7626b71132ec507613ef9479cff370cb69341875db7d4d5c8d2c623f32d0f34c"
  end

  on_intel do
    url "https://github.com/hitblast/quantumlauncher/releases/download/v#{version}/quantum_launcher_macos_x86_64.zip"
    sha256 "a8d452b201710a4823fe31a210bdc4bc57b806a740260971ab93ed96a101d05d"
  end

  postflight do
    system_command '/usr/bin/xattr', args: ['-d', 'com.apple.quarantine', "#{appdir}/quantum-launcher.app"]
  end

  app 'quantum-launcher.app'
end
