# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.15/pitwall_darwin_arm64.tar.gz"
      sha256 "d573dabfb216ad2885e4225875f4ce993e7545f70a58c111576fbedd14245c17"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.15/pitwall_darwin_amd64.tar.gz"
      sha256 "45cf5fdaf53593987946280708c1e9f86f3f76be81a3c4205e4be911d959a692"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.15/pitwall_linux_arm64.tar.gz"
      sha256 "de53f7756a42c2c339deab7596bb04fcd4d0e6b08e85f544f189de88cc3dd4db"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.2.15/pitwall_linux_amd64.tar.gz"
      sha256 "20fb02073d9dedb7c39700ea0904683e3b7d3e713dfe0d354904ab1bd3408b11"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
