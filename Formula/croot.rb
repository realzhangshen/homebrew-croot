class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.4/croot-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "50529af0fe55c34a49d800c8c5d2ec21202995b0d7bbc2f293ab4ae0e7588d7e"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.4/croot-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "ddb8b59ecdb404fc6565b7917828bc07ee5907f6f72a85a5a14c778aa6f22d52"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
