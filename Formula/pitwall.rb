# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.1/pitwall_darwin_arm64.tar.gz"
      sha256 "d6b3d4fc7a2b7038f6a8e598916d9afc3f21b39a012839b5661bd490ee5de53e"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.1/pitwall_darwin_amd64.tar.gz"
      sha256 "06d33be5d24ef31a28e513dc158b3f6622cd3a48081e17422a8814849bc9239a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.1/pitwall_linux_arm64.tar.gz"
      sha256 "26a8f75f0fc3b4d37c05c334033ad7d7d2847096c926f44759021789a4aa2639"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.1/pitwall_linux_amd64.tar.gz"
      sha256 "821cd259eae4dc0de6c17fbf1a31e80fea9b7f6d3d75f159d57498ace523ad0f"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
