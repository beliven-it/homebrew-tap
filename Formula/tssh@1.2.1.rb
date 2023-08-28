# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TsshAT121 < Formula
  desc "A CLI to easily list, search and connect to Goleport nodes"
  homepage ""
  version "1.2.1"
  license "MIT"

  depends_on "fzf"
  depends_on "teleport"
  depends_on "tsh"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.1/tssh_1.2.1_darwin_amd64.tar.gz"
      sha256 "ca63a871084eef97d52a08f869b7e061073322e385c938c29e6a05804ce03166"

      def install
        bin.install "tssh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.1/tssh_1.2.1_darwin_arm64.tar.gz"
      sha256 "3990eda096bee474d71a6f1b6ba1a1baff50706f5adce42508fcf6c92cf214a0"

      def install
        bin.install "tssh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.1/tssh_1.2.1_linux_amd64.tar.gz"
      sha256 "50be13bb3896c570a71cdfb6d5bd2023c6c33ec1d815cde4324e054020a8c651"

      def install
        bin.install "tssh"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/tssh/releases/download/v1.2.1/tssh_1.2.1_linux_arm64.tar.gz"
      sha256 "a67f9cfc64049785c3c2e763bedd38bc183f16d24cc502443fa30828d6fe0e08"

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
