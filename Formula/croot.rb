class Croot < Formula
  desc "Lightweight terminal file tree sidebar with vim-style navigation"
  homepage "https://github.com/realzhangshen/croot"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.0/croot-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "89cca80b3792f213601d094a145ac367c02f05627a186916604274712e90402c"
    else
      url "https://github.com/realzhangshen/croot/releases/download/v0.5.0/croot-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "a83596f7cb9c5e82c20f0aed938f129c882df9f30a5262465fb2779fb3adfad2"
    end
  end

  def install
    bin.install "croot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/croot --version")
  end
end
