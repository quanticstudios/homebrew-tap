# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.14/pitwall_darwin_arm64.tar.gz"
      sha256 "9bdcc8c5197628a50f34e04b2c966387105f075596dbea9717f23d14bc1d5faa"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.14/pitwall_darwin_amd64.tar.gz"
      sha256 "0bbeae0abfad95fb05b7f7c1aca0f4aca48c7fc5df160a2c0d5295c85510d4fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.14/pitwall_linux_arm64.tar.gz"
      sha256 "2ef32be7091934450929c6347252497072c59de5d3c38b3740384653f59a00af"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.14/pitwall_linux_amd64.tar.gz"
      sha256 "f79a326446e1d51369d4de4e24298404d87fe0e73a54537113173f1ea164223b"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
