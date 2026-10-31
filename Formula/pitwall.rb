# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.7/pitwall_darwin_arm64.tar.gz"
      sha256 "4661a09698f7d8ef7b82bc4b5621691126f95c56920c96f721ed584bade66f9e"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.7/pitwall_darwin_amd64.tar.gz"
      sha256 "602be12d04739619128d90c9e85d30ebc1a0b9d036fa3b3de25f4dd7698c2ada"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.7/pitwall_linux_arm64.tar.gz"
      sha256 "e8ec6601410cdb4fb5aca302214e7a00ba063dbed3428ce975b07b2626b361c6"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.7/pitwall_linux_amd64.tar.gz"
      sha256 "18af7711b27cea9000d7b00b5b7a2577ddf2b367cb3c97aa168ae39489cf8dc9"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
