cask "quantum-launcher" do
  version "0.5.1"

  on_arm do
    url "https://github.com/Mrmayman/quantumlauncher/releases/download/v#{version}/quantum_launcher_macos_aarch64.dmg"
  end
  on_intel do
    url "https://github.com/Mrmayman/quantumlauncher/releases/download/v#{version}/quantum_launcher_macos_x86_64.dmg"
  end

  name "QuantumLauncher"
  desc "A simple, powerful Minecraft launcher"
  homepage "https://github.com/Mrmayman/quantumlauncher"
  sha256 :no_check

  depends_on macos: ">= :big_sur"

  app "quantum-launcher.app"
end
