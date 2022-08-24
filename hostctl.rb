# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hostctl < Formula
  desc "Your dev tool to manage /etc/hosts like a pro"
  homepage "https://github.com/guumaster/hostctl"
  version "1.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/guumaster/hostctl/releases/download/v1.1.3/hostctl_1.1.3_macOS_64-bit.tar.gz"
      sha256 "34e7a04286fe2b68ef81e4a94270c8e082fb3717be5f9ca7e2469ceade32c142"

      def install
        bin.install "hostctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/guumaster/hostctl/releases/download/v1.1.3/hostctl_1.1.3_macOS_arm64.tar.gz"
      sha256 "585897bc975a6c060e9a42ab26a331b5e321e56cde7d50271a3a7ad0122d4392"

      def install
        bin.install "hostctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/guumaster/hostctl/releases/download/v1.1.3/hostctl_1.1.3_linux_arm64.tar.gz"
      sha256 "eeabc7f88d3e35c3d69ee41c4695fc413cf419e40ed6e8bb4d753a63b7b6b768"

      def install
        bin.install "hostctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/guumaster/hostctl/releases/download/v1.1.3/hostctl_1.1.3_linux_64-bit.tar.gz"
      sha256 "1dbcbd415b330e599601b6e7a27be6078bde9cc8ea1c09da4d4781f0b8349718"

      def install
        bin.install "hostctl"
      end
    end
  end

  def caveats; <<~EOS
    Remember to add sudo to modify your hosts file.
  EOS
  end
end
