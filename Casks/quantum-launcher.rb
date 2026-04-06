cask "quantum-launcher" do
  version "0.5.1"

  on_arm do
    sha256 "5a9744d553e4871ee5a6300ec4660333e1fa35b9689b45c56540cb1ea219a596"

    url "https://github.com/Mrmayman/quantumlauncher/releases/download/v#{version}/quantum_launcher_macos_aarch64.dmg"
  end
  on_intel do
    sha256 "6a0e9fcaa5cd92080689a9c77d11475272ce2d6e78c0ddc0d8b3fc39a6dc8b9d"

    url "https://github.com/Mrmayman/quantumlauncher/releases/download/v#{version}/quantum_launcher_macos_x86_64.dmg"
  end

  name "QuantumLauncher"
  desc "Minimalistic Minecraft launcher"
  homepage "https://github.com/Mrmayman/quantumlauncher"

  depends_on macos: ">= :big_sur"

  app "quantum-launcher.app"

  caveats do
    signed "false"
  end
end
