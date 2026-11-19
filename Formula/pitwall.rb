# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.18/pitwall_darwin_arm64.tar.gz"
      sha256 "9356bf164800c287e66d04748d1f6b5b615fe6868bf43ec10b6f13bf4a8b488d"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.18/pitwall_darwin_amd64.tar.gz"
      sha256 "2d2c9c46acfa562ba5798587b00a812ca6dcd69cf114fa3a253cfaef959f6681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.18/pitwall_linux_arm64.tar.gz"
      sha256 "591b704ff65eb78ca0d948afee2e6c02f9b67291c407b3a8b307b0274b56296b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.18/pitwall_linux_amd64.tar.gz"
      sha256 "46dc0c948af9ee9bb4d5ba845b2877a3878e4d88ac873f18ac3e4409a48e2e28"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
