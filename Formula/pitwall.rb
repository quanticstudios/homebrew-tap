# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.13/pitwall_darwin_arm64.tar.gz"
      sha256 "45162a360208c20c9e005bb8df08fed386c185d2f767aea8eea92bc5f2d5a2e9"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.13/pitwall_darwin_amd64.tar.gz"
      sha256 "d5370c86aeb52dabf052818a2e4d91531040a1a7facc01d1c8b841beac142c03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.13/pitwall_linux_arm64.tar.gz"
      sha256 "081169f4b03b79f1265bd84d3949a9b48195d547ac98f85835c0d8cd057cbe5a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.13/pitwall_linux_amd64.tar.gz"
      sha256 "784230bc9f1cb4f7923530bd41be78fb4c4d6a4d853d6819f5c22a5be0598bd2"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
