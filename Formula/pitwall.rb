# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.5/pitwall_darwin_arm64.tar.gz"
      sha256 "fc91785b707c0759d309e118d4f9319fc46f01626a653c919f8c3569248e949f"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.5/pitwall_darwin_amd64.tar.gz"
      sha256 "825a0dfa06ab6ad8e068b5f6e9d38713d2fcbd63bd733dcb0f06b7aed5bed95f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.5/pitwall_linux_arm64.tar.gz"
      sha256 "dbf8e99216cae854f65772f6abcc76fe3b763f3d852f87f95376ea7928ad9f38"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.5/pitwall_linux_amd64.tar.gz"
      sha256 "c71192e8f66f1c3823d169ea7e97fbf2024bec82f666fe6765424e2a45cee607"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
