# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.12/pitwall_darwin_arm64.tar.gz"
      sha256 "b0754b537298b584260a5644c65127cc7123fc9d5bd95b7cfa79d3b54ac280aa"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.12/pitwall_darwin_amd64.tar.gz"
      sha256 "e5f12a2844d61e6adb8ca3d1d06c71a494d231df6e5d4e84bb48b073d027686c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.12/pitwall_linux_arm64.tar.gz"
      sha256 "1193d2fefb5271502d95baa9ae5521830c7134fdc9fa9103247ba3b99ff218c2"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.12/pitwall_linux_amd64.tar.gz"
      sha256 "6242170f8615174999dd58328ec11eb1f4d9dab319208cd4e1fc69ed31871526"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
