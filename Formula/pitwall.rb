# Rendered by scripts/pkgrender in quanticstudios/pitwall for each release.
class Pitwall < Formula
  desc "Terminal multiplexer for coding agents"
  homepage "https://github.com/quanticstudios/pitwall"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.6/pitwall_darwin_arm64.tar.gz"
      sha256 "056fcadcaaeef28887b416a3999702a7ab54dfaf5d8c8ab5a22270a1d2c5a490"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.6/pitwall_darwin_amd64.tar.gz"
      sha256 "cb59e0c26999d6edb3b2194c5ca3df71f9a06375f68f33930075d3461867a640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.6/pitwall_linux_arm64.tar.gz"
      sha256 "3f356fd162058690ac2725a2f2a84b89c7281f5a9dd4ee6e898639843af74ca3"
    end
    on_intel do
      url "https://github.com/quanticstudios/pitwall/releases/download/v0.1.6/pitwall_linux_amd64.tar.gz"
      sha256 "27e7e1477885b51a9205e81ecabdb21af14244995004345420bdb2a5be44b314"
    end
  end

  def install
    bin.install "pitwall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitwall --version")
  end
end
