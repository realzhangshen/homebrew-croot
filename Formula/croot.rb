class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.2/croot-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "d3c372fb4b0c4a5c19c3744e0d79fffc6bd954ffe74e68c42b82083c9823855a"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.2/croot-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "65e9afa76f576d48a1fa46641917f959c2edfc72bf84d097210048f600bfc2a6"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
