# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tssh < Formula
  desc "A CLI to easily sync, list, search and connect to Goleport nodes"
  homepage ""
  version "1.2.2"
  license "MIT"

  depends_on "fzf"
  depends_on "teleport"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.2/tssh_1.2.2_darwin_amd64.tar.gz"
      sha256 "a60c54a7d96e77c63f166cc2209a6aaeb438f6e75ca6af127fee63747cb3d06d"

      def install
        bin.install "tssh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.2/tssh_1.2.2_darwin_arm64.tar.gz"
      sha256 "1fbfa314a712dc057378e36afbba013cb41e203af079a9406a6baa40669c7e4b"

      def install
        bin.install "tssh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.2/tssh_1.2.2_linux_amd64.tar.gz"
      sha256 "8d0e6906c27e8f57304229bc0aa0a74984254fc319d5d13b0057bd21c24e046d"

      def install
        bin.install "tssh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.2/tssh_1.2.2_linux_arm64.tar.gz"
      sha256 "dacc4c818ede1e44d2120ff8e537bbb1e9c9442cab4b78cc3cac61efc35d4ced"

      def install
        bin.install "tssh"
      end
    end
  end

  def caveats
    <<~EOS
      Run `tssh init` to generate config file inside
       `~/.config/tssh/config.yml` (works only if not exists yet)
       or let the CLI creating it automatically on first run (every command).

       Type `tssh help` for further information.
    EOS
  end
end
