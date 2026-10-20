# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.15/pitwall_darwin_arm64.tar.gz"
      sha256 "cb74ba65c036bdf776322bfbb04c07f7721d8f631ebe6bfe0deeddb20b96c49c"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.15/pitwall_darwin_amd64.tar.gz"
      sha256 "84e446ce3a3d5f6870388edcd4726f0b17801abbc40e3e5a8cb8c8670544162a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.15/pitwall_linux_arm64.tar.gz"
      sha256 "5b3840893932be50f0f320226120cde4484021706b90def1595635a0e1aa627d"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.15/pitwall_linux_amd64.tar.gz"
      sha256 "b212c16f23fc0968a99d005c778c935ee5fa743dc3d332510ace1c0ee1157859"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
