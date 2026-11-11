# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.7/pitwall_darwin_arm64.tar.gz"
      sha256 "9fc338b9d8c41ccb0f540b7e1c4457ef9aa6d6b2408d3c2903fb92723dfe6bbf"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.7/pitwall_darwin_amd64.tar.gz"
      sha256 "f813f163b70098b1729749a5ea6c16875b1f7e6102bc1c2cc3ca7678ed3b9a54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.7/pitwall_linux_arm64.tar.gz"
      sha256 "ceded386e9ba465010a3da504f3b32e5426cb448250de8ae8be0f172bbe0b952"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.7/pitwall_linux_amd64.tar.gz"
      sha256 "29a96408f3595753957b786baf4bf5c73bb3e13117f6af1aeb63d50089ab1a35"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
