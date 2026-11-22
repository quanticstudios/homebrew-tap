# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.4/pitwall_darwin_arm64.tar.gz"
      sha256 "42fc1108cb5713d697506cd9d834281dd5414eb234747f5fe6645de8992542ab"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.4/pitwall_darwin_amd64.tar.gz"
      sha256 "87deb879c5785a8501aa806729e2569c9e481ad9aec0ef460438c369bda6d89f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.4/pitwall_linux_arm64.tar.gz"
      sha256 "0666b2f0029cd6367c63094bddd1eb867e80f4b941f8461b50cd93afa447bb25"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.4/pitwall_linux_amd64.tar.gz"
      sha256 "5d1c102396044de55e8e8c77ec00ef53e848d44c83e0ebe7023e12c6b621206b"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
