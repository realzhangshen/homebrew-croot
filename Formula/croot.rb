class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.3/croot-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "34fb5da88aaa883421f2e182813aa3741c780d9e56dc366849f689004488f344"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.2.3/croot-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "b381efc5f6eeb5643aed95990cd3673d0cc8f34290ddbcfc1726ce6a146804b4"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
