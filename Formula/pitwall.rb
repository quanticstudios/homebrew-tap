# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.15/pitwall_darwin_arm64.tar.gz"
      sha256 "28571baef8a277e245143d6c785998b25cdb5b8c3674fef5deabeba21b458e55"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.15/pitwall_darwin_amd64.tar.gz"
      sha256 "14a980446627df74fe64f810d3547a9a7ec0828c1f36ba842c839eb486b53cd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.15/pitwall_linux_arm64.tar.gz"
      sha256 "1b77c969c0f2254ea7c60e1902f238c6cd392a598f6865e1d9bf7aec86dd0bb9"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.15/pitwall_linux_amd64.tar.gz"
      sha256 "b3e4f9dd6262f382c4254535b66566a241714e3c68a7542b065cc01d733ffe51"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
