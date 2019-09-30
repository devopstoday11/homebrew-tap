# This file was generated by GoReleaser. DO NOT EDIT.
class KudoCli < Formula
  desc "Interact with KUDO via the kubectl plugin"
  homepage "https://kudo.dev"
  version "0.7.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kudobuilder/kudo/releases/download/v0.7.1/kudo_0.7.1_darwin_x86_64.tar.gz"
    sha256 "102dea479dc1048e4e2bfe6e6afaa7dd7303216012d2fcd91c33a726005badc5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudobuilder/kudo/releases/download/v0.7.1/kudo_0.7.1_linux_x86_64.tar.gz"
      sha256 "28feb587f44cb302010eecbcabe152ede847df3ff7f87d0ce2277bf579e0c1d0"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/kudobuilder/kudo/releases/download/v0.7.1/kudo_0.7.1_linux_armv6.tar.gz"
        sha256 "4239da099af9320ce769920d94524adcdf33150ed3a980317ab24d6956a91691"
      end
    end
  end
  
  depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-kudo"
  end
end
