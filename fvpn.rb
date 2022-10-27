# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.1-beta.1-post.1"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.1-beta.1-post.1/fvpn_darwin_amd64.tar.gz"
      sha256 "8f1df5dcb736a023c0099a4d49e348b4e128c05cd960ced7861834964965871b"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.1-beta.1-post.1/fvpn_darwin_arm64.tar.gz"
      sha256 "28c4cdb72856e0ea2a91d7ab881ffec1024dbe661be6e3010c9fb59d17e3e7b9"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.1-beta.1-post.1/fvpn_linux_arm64.tar.gz"
      sha256 "678cd497e7afedc8732d244206969df271b294e0a68f67d9714ccebb0d381b9c"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.1-beta.1-post.1/fvpn_linux_amd64.tar.gz"
      sha256 "7b531cf21281d364089f648cc229267a472ae666208e3e933a40a3357f22e380"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
