# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.0-beta.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.18/pitwall_darwin_arm64.tar.gz"
      sha256 "1c24d7571fcd7c323231b64d6937d99be66f642e9842baa4f1e1a47f3fd1ec5b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.18/pitwall_darwin_amd64.tar.gz"
      sha256 "5dde2c75b5a9c6f106e54dd7e9709f955f34984cf94c68364087b0c1ec1c6b90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.18/pitwall_linux_arm64.tar.gz"
      sha256 "0c52bdffb10451fe31e02374413e2671f00d0aba89c327b7f62229edce8ce4e3"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.0-beta.18/pitwall_linux_amd64.tar.gz"
      sha256 "cd742eaf35d536a4eb344cbb813241af5da5c1213deebc61be533955c8f8d32f"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
