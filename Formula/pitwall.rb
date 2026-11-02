# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.9/pitwall_darwin_arm64.tar.gz"
      sha256 "a60d6600e88d4a1ddb939e3cc077054d339dd26105339c4e9fce4adde7aa4d83"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.9/pitwall_darwin_amd64.tar.gz"
      sha256 "c7b52d46d119db2dd21a79e4ec3ed77d14fb9c478c367d02de740d4cbd7d096f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.9/pitwall_linux_arm64.tar.gz"
      sha256 "0268f20cc981a7d0379431893510e9cb735bcaae5ed1f9fb1c903c96fd88110c"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.9/pitwall_linux_amd64.tar.gz"
      sha256 "d9b8222bf7701a1702ea6fcb2ceb7a92c64c90c6888830f72260eed45b1ee0fa"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
