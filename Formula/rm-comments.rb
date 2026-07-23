class RmComments < Formula
  desc "Strip all comments from source files, safely, via tree-sitter"
  homepage "https://github.com/bryceremick/rm-comments"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.3.0/rm-comments-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "af771639d7c3c686263516436e8c4760b4fdabbc9989b0e43fb35e6651e47391"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.3.0/rm-comments-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e2ee3bce13205ca1907d4f048aa854e0df7a3b36c5fd8ddcd95088488d5fc6c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.3.0/rm-comments-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94ade821c0ac6ca70f92c9141f85ab5d041d17ee2e02b3080da5e21b76d8ebab"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.3.0/rm-comments-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7ef07dba604be5cd2846a3417bfa8a48c442c2d52241f3889989d96e8b055fa"
    end
  end

  def install
    bin.install "rm-comments"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rm-comments --help")
  end
end
