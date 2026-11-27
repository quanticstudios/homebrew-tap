# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.12/pitwall_darwin_arm64.tar.gz"
      sha256 "b665364f549066da7d120ec850c1291a3807319c55a256bc0ce871ba792c1b89"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.12/pitwall_darwin_amd64.tar.gz"
      sha256 "2e5b3a3f4e3abfe03e63b45f83c16901b19320435c78ace6efb2ba8a9a2506c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.12/pitwall_linux_arm64.tar.gz"
      sha256 "c261292d7c3e1fdfc298fd784c4745b56c3d6bcb90666268b67808237a268c44"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.12/pitwall_linux_amd64.tar.gz"
      sha256 "589dcdc4fde6a59c072357b636d138fb976dd557763b28648a412a6e3420b7d3"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
