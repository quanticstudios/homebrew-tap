# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.8/pitwall_darwin_arm64.tar.gz"
      sha256 "34559cff19afc0a8a6950310d8a4046641e8067241f666590968ee69f1101a88"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.8/pitwall_darwin_amd64.tar.gz"
      sha256 "7e6f9ce826581fac03f18f50ec9c00b8c58a9cf402bee151e1d1a234976517c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.8/pitwall_linux_arm64.tar.gz"
      sha256 "982439cd075134d386b488ce7b85b6bf749204c61e1a37dbb6fcef67b28d5634"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.8/pitwall_linux_amd64.tar.gz"
      sha256 "c07b691b11e91ca8e7b7f33763ed9af2ee53bc91dc921bc5ff06e69f345e58ac"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
