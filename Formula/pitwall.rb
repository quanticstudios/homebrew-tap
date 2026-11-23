# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.6/pitwall_darwin_arm64.tar.gz"
      sha256 "e88b802d4597dc25503c4d262521a86b35452ba64bfc5ccfe536d458f129d59a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.6/pitwall_darwin_amd64.tar.gz"
      sha256 "bd6f405629ea4b195a1877ca70035c4165f971e24123ddd4cfa0a243ade569f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.6/pitwall_linux_arm64.tar.gz"
      sha256 "1da3c2a6ec8748892344ad88f047cac9719c21655eb196783f96d800b3c4531e"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.6/pitwall_linux_amd64.tar.gz"
      sha256 "b87134204a7057d0273e00da69c36a2972560f53bc24af96d57d6d5b127160a3"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
