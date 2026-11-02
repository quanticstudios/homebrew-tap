# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.8/pitwall_darwin_arm64.tar.gz"
      sha256 "36f574564ccb95f62690682613c76eba65b7685eabaf93114a3974b877434167"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.8/pitwall_darwin_amd64.tar.gz"
      sha256 "bb0f77b1c14ca0afe23a48290d743ff7cb1f386e4e82f6ba0f972d58d34b287c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.8/pitwall_linux_arm64.tar.gz"
      sha256 "cd4d9b58dc8534c6acafbed54eb36f11e557e0858c926646eee5300aa88f29da"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.8/pitwall_linux_amd64.tar.gz"
      sha256 "3eaa255f2fa7136cdb6b9e3aa722bfd43336443e25edb49ee5bc23866021ec8a"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
