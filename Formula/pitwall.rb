# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-alpha.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-alpha.24/pitwall_darwin_arm64.tar.gz"
      sha256 "23d97887bfed316eaf38ce25dac481461f1627cdaffd4db889639c83a14718be"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-alpha.24/pitwall_darwin_amd64.tar.gz"
      sha256 "a2a59100f0e83a4e7ac29c9298bfa75bdb04deeafc8eb718158e8c3ce160861b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-alpha.24/pitwall_linux_arm64.tar.gz"
      sha256 "d5c44013f350e1c3953d1260d0f19e063ddab32c3f87ed5fbfc6bb2d81db8fcd"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-alpha.24/pitwall_linux_amd64.tar.gz"
      sha256 "0e1c08ddfa6e2178605683a6af4f7e015617c471bb697d6d74ca1814dd458842"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
