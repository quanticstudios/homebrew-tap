# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.3/pitwall_darwin_arm64.tar.gz"
      sha256 "8bbfe3522d0b28511efe700bc7f03d980d93b9261eaf62544ad105d67b5a443b"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.3/pitwall_darwin_amd64.tar.gz"
      sha256 "a2aea4f7c11017c29ff431d076ca043b59323f4a949c5cd042ca16b1cf68b589"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.3/pitwall_linux_arm64.tar.gz"
      sha256 "7bdcacf3962945f1d58cedd507169070d54c1c6acea3680229f2da388fcbea95"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.3/pitwall_linux_amd64.tar.gz"
      sha256 "b20d46f9ace4083a4548e91d4b638617b9a8088202febf7e3040217e4ad7a524"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
