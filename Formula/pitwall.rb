# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.1/pitwall_darwin_arm64.tar.gz"
      sha256 "15a08efc1cc8d3f9d2ee2c9e5f631038b7f91f1ce16826cd0599735f4b6c9dea"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.1/pitwall_darwin_amd64.tar.gz"
      sha256 "620b5cd08658ae51c6d609e87a67005512b9b1bbfa140622801e941f2f434b12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.1/pitwall_linux_arm64.tar.gz"
      sha256 "edf3b0520a359359043978d32c33860f1652af43183dcf833f29455ca8a1fd32"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.1/pitwall_linux_amd64.tar.gz"
      sha256 "4af8bdbd0318edd8ae26bdb7305bf85b30a13e3ba130803bc9980a14ea642138"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
