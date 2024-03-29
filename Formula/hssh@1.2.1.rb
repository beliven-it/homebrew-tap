# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HsshAT121 < Formula
  desc "A CLI to easily sync, list, search and connect to SSH hosts"
  homepage ""
  version "1.2.1"
  license "MIT"

  depends_on "fzf"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/hssh/releases/download/1.2.1/hssh_1.2.1_darwin_amd64.tar.gz"
      sha256 "55a2136170f3aef062e409e456261b96ebfb1235ff1cae9b6b9dab411f173c46"

      def install
        bin.install "hssh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/hssh/releases/download/1.2.1/hssh_1.2.1_darwin_arm64.tar.gz"
      sha256 "6642697117f2e0c1d77a7706917f3ff0da2a9241af22b6dae08956294ef28f2a"

      def install
        bin.install "hssh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/hssh/releases/download/1.2.1/hssh_1.2.1_linux_arm64.tar.gz"
      sha256 "18965fb54a99215de89f63846901b25aed1a98e9a8df60c23600a8daf45ca700"

      def install
        bin.install "hssh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/hssh/releases/download/1.2.1/hssh_1.2.1_linux_amd64.tar.gz"
      sha256 "76fe960f1850bd656ec3b773fa8446461e8f54363f854a21f4450656f6004c10"

      def install
        bin.install "hssh"
      end
    end
  end

  def caveats
    <<~EOS
      Run `hssh init` to generate config file inside
       `~/.config/hssh/config.yml` (works only if not exists yet)
       or let the CLI creating it automatically on first run (every command).

       Type `hssh help` for further information.
    EOS
  end
end
