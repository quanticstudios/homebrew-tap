# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.2/pitwall_darwin_arm64.tar.gz"
      sha256 "8bb6cf1001dc2b62ccd26002f168ae6053b5d8ff2e22d6e8cf8e81eef0ccb2dc"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.2/pitwall_darwin_amd64.tar.gz"
      sha256 "5b7573e9816966a3ab90eae634e0e12d440dd3063b803b4e0af62ba76e7b911d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.2/pitwall_linux_arm64.tar.gz"
      sha256 "283dfe8202af30360a2887a092817226f26f829d1f79fe4e190da114b4269b85"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.2/pitwall_linux_amd64.tar.gz"
      sha256 "350c64132f0229515444e9da11d67fbd2b7061d86ee8e208cec179485fd7d426"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
