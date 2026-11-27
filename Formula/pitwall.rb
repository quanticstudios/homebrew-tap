# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.10/pitwall_darwin_arm64.tar.gz"
      sha256 "6e98ac83a6565d48a396e823d7bb7c4ee0800f8821c29ab541243a8bfe4eccb9"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.10/pitwall_darwin_amd64.tar.gz"
      sha256 "19a033650d5d5b7f6999008f6bc68cedd5dae387d7df73ee11cff703b8698f06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.10/pitwall_linux_arm64.tar.gz"
      sha256 "42fc383a9156a692fd9bebdee661e91fb2c0c19e959dd6899534860f655c2ed1"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.3.10/pitwall_linux_amd64.tar.gz"
      sha256 "b87a9d9cbe3b24ee097232b6715737263759a973d3b553f5f18b5e0b06a02f9a"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
