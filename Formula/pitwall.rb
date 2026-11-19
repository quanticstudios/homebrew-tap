# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.17/pitwall_darwin_arm64.tar.gz"
      sha256 "140cbd5e3ace5600ad07dc29ad0019084f6ef5cbbf99a9d1657e15e5d8901ca0"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.17/pitwall_darwin_amd64.tar.gz"
      sha256 "504d9f1cc8e341f393e83dacefd77559b099071455f0b86feeec184b8bdc28ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.17/pitwall_linux_arm64.tar.gz"
      sha256 "d033c1772dfe1c31f49cfb37921d030566e5bf96305fa745ebc1d81f495533b6"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.17/pitwall_linux_amd64.tar.gz"
      sha256 "d8780b7a6e49866ab4fadece0178e9004e22fce3530cd72403bf97154e48c289"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
