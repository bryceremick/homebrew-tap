class RmComments < Formula
  desc "Strip all comments from source files, safely, via tree-sitter"
  homepage "https://github.com/bryceremick/rm-comments"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.1.0/rm-comments-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d3d37646c2257a4b3f3ce5425ff6a7c52c5a85ecca43b362888248b050551aec"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.1.0/rm-comments-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6874b5e19aefddd51a145b1e69d6a1268f45e15a16439c5797817561dbaea8b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.1.0/rm-comments-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0314857dc564c9745481b5ec6d06c2b5f783ed0fe2a8b4369f38c89b575b02c"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.1.0/rm-comments-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db284f3b8588fb6389c152473f6e03a13356d0b8379944de57c0d04296448069"
    end
  end

  def install
    bin.install "rm-comments"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rm-comments --help")
  end
end
