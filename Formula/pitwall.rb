# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.9/pitwall_darwin_arm64.tar.gz"
      sha256 "e1be931691601bebb76d145636cbb459b815a489a540127166fa8a0a11794de2"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.9/pitwall_darwin_amd64.tar.gz"
      sha256 "c0f3756ca22b3e67e1582149c9d4f8ae569de627b6fd9fd6d8ffccefe910040f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.9/pitwall_linux_arm64.tar.gz"
      sha256 "0e6cc340df1c04a662c23129ddb4b804b9f61e63e6bc5ca5babf576e11b3cb29"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.9/pitwall_linux_amd64.tar.gz"
      sha256 "144d2ddba8fca2d78a935c58a243dea0b2e6a8c45c6d485c0270fa39b10af1ef"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
