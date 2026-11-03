# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.10/pitwall_darwin_arm64.tar.gz"
      sha256 "a26aef397c427e40912e5477028df2d0ce057e226df147f0c47ac2cd0a7b68d3"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.10/pitwall_darwin_amd64.tar.gz"
      sha256 "530814718fe9e85f575d695424e8bcece392b883b218f44c26837ca35f5cce02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.10/pitwall_linux_arm64.tar.gz"
      sha256 "2704d5d20434db337e4d783bba5d3c5d35587426b1deb7598e3c0b91655c960e"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.10/pitwall_linux_amd64.tar.gz"
      sha256 "4f29adc83a626b48f09696c68d9f2c15a679f39a6920615616e0b4ce07beb7fb"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
