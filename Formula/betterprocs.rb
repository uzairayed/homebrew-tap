class Betterprocs < Formula
  desc "A better terminal process manager — run multiple servers from one command"
  homepage "https://github.com/uzairayed/betterprocs"
  url "https://github.com/uzairayed/betterprocs/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "67421f271d5350e087205e0993b327d60a517a2c26cfba5a4f2518568fc0b007"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "betterprocs", shell_output("#{bin}/betterprocs --help")
  end
end
