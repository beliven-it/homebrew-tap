# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsiAT1111 < Formula
  desc "All-in-one CLI for Beliven Ops daily usage!"
  homepage ""
  version "1.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.11.1/opsi_1.11.1_darwin_amd64.tar.gz"
      sha256 "93ed759fadf6808cb00f203c4894c9e73eb185e4eb56ffb80dd4a1c7f7cc07c0"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/opsi/releases/download/1.11.1/opsi_1.11.1_darwin_arm64.tar.gz"
      sha256 "53ccc3c65621377c864c95f28063621fe829ccea12e4a8876013c7b99fe051df"

      def install
        bin.install "opsi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.11.1/opsi_1.11.1_linux_amd64.tar.gz"
      sha256 "6dab11845872781265c9868b610b8e8e0eba645b6154ab22d7c2c41529a6a187"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/opsi/releases/download/1.11.1/opsi_1.11.1_linux_arm64.tar.gz"
      sha256 "9be1479a1aa941b38490f15a457fd10f49c8f0ca6e0416c3c8e33f9524b2bf2f"

      def install
        bin.install "opsi"
      end
    end
  end

  def caveats
    <<~EOS
      Run `opsi init` to generate config file inside
       `~/.config/opsi/config.yml` (works only if not exists yet).

       Type `opsi help` for further information.
    EOS
  end
end
