# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.16/pitwall_darwin_arm64.tar.gz"
      sha256 "3b082f51fbc8da13580c9dab47c0fe4d9f5dcf0ad197e464cc778b9e8d1e9d4a"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.16/pitwall_darwin_amd64.tar.gz"
      sha256 "96961a68d93205fe676b6418d33aaee5909b7a6af82f0af7cf6e524f3ec0920f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.16/pitwall_linux_arm64.tar.gz"
      sha256 "b221f001817a23596924dd9af43551118fd6b6047bab19161898523e1de971e3"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.16/pitwall_linux_amd64.tar.gz"
      sha256 "7aea6c51442afc75f50723d6bf91dbf3805879d675d7627d66cfa5a13c985595"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
