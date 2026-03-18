class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.3/croot-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "840cd4a2f01de34a0db2a1cf3267f0a936cce18c0c2b7d1c6a24a22c68c5b561"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.3/croot-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "c3a4b90f9afd423f7d416cea966b3591b147c870d8d5e38a663b7afbd45ddffa"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
