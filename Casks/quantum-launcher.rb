# frozen_string_literal: true

# DEVELOPMENT FORK SCRIPT
# DO NOT USE IN PRODUCTION

cask 'quantum-launcher' do
  version '0.5.0'

  name 'QuantumLauncher'
  desc 'A minimalistic Minecraft launcher for Windows, macOS and Linux.'
  homepage 'https://github.com/Mrmayman/quantumlauncher'

  depends_on macos: '>= :catalina'

  on_arm do
    url ""
    sha256 ""
  end

  on_intel do
    url ""
    sha256 ""
  end

  postflight do
    system_command '/usr/bin/xattr', args: ['-d', 'com.apple.quarantine', "#{appdir}/quantum-launcher.app"]
  end

  app 'quantum-launcher.app'
end
