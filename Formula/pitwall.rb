# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.4/pitwall_darwin_arm64.tar.gz"
      sha256 "c422af11a8208f267eef5993e9eaeb3779c0a0d5fecf2feb9f37440e5fd5f637"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.4/pitwall_darwin_amd64.tar.gz"
      sha256 "9b0337e3ad83953c79bc189aa60b5842c5c227926696094f456555d32c1925b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.4/pitwall_linux_arm64.tar.gz"
      sha256 "d3fc52e12786e953d802a68bd28d6950c34dfee885190d4db4ef675c12403f9a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.4/pitwall_linux_amd64.tar.gz"
      sha256 "d01d852a6d30092a4b9c2c93ede48aa965cee92fbdddd0a99cb2d9fb09abf372"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
