# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TsshAT130 < Formula
  desc "A CLI to easily list, search and connect to Goleport nodes"
  homepage ""
  version "1.3.0"
  license "MIT"

  depends_on "fzf"
  depends_on "teleport"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/tssh/releases/download/v1.3.0/tssh_1.3.0_darwin_amd64.tar.gz"
      sha256 "7f34ffb7c500a89dcafe28bf313d7d7135f48a62c8f019a86a57fed97ee353ba"

      def install
        bin.install "tssh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/tssh/releases/download/v1.3.0/tssh_1.3.0_darwin_arm64.tar.gz"
      sha256 "45e3e3e8aa83926e59aeac07286b60070fe713c67be0c54eb783856687a06d2a"

      def install
        bin.install "tssh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/tssh/releases/download/v1.3.0/tssh_1.3.0_linux_arm64.tar.gz"
      sha256 "c7f9e97a4a3e4eedb3981be585e6cb0995f494a6b1f09fca097df179d6e41138"

      def install
        bin.install "tssh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/tssh/releases/download/v1.3.0/tssh_1.3.0_linux_amd64.tar.gz"
      sha256 "57d2819bb08684724236ce22fc8c28e5cd5f4dbebda806bee9317d2a9da74265"

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