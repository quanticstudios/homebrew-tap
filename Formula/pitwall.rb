# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.14/pitwall_darwin_arm64.tar.gz"
      sha256 "7d54dc82d0ab28344c8cfb178fe1418cd0107e315f521f827c149099f234491f"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.14/pitwall_darwin_amd64.tar.gz"
      sha256 "012d24a169a1447e10e07539d3de385b0212ae8ce65cd369163ed7bdf88630b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.14/pitwall_linux_arm64.tar.gz"
      sha256 "fb31f5036c517d9a30470cb136ecf1a2301a71a99cb9f867cac260704a4a945d"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.14/pitwall_linux_amd64.tar.gz"
      sha256 "78dede7beef244428d57a6e7140f2d9c9e087d9d90c6b24e98483d4d0d775dfd"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
