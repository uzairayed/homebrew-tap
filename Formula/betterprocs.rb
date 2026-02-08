class Betterprocs < Formula
  desc "A better terminal process manager — run multiple servers from one command"
  homepage "https://github.com/uzairayed/betterprocs"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uzairayed/betterprocs/releases/download/v0.2.0/betterprocs-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f56904d2a5c4b609feefb6f46c1bccc5840f2388b2ad63a15e54e33209d7ba3"
    end
  end

  def install
    bin.install "betterprocs"
  end

  test do
    assert_match "betterprocs", shell_output("#{bin}/betterprocs --help")
  end
end
