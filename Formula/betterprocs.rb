class Betterprocs < Formula
  desc "A better terminal process manager — run multiple servers from one command"
  homepage "https://github.com/uzairayed/betterprocs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uzairayed/betterprocs/releases/download/v0.1.0/betterprocs-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4083e47bf5323e3524e7d64e8aa9ddd833dc8c5c392bc98255d6893d023f4aff"
    end
  end

  def install
    bin.install "betterprocs"
  end

  test do
    assert_match "betterprocs", shell_output("#{bin}/betterprocs --help")
  end
end
