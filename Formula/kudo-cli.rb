# This file was generated by GoReleaser. DO NOT EDIT.
class KudoCli < Formula
  desc "Interact with KUDO via the kubectl plugin"
  homepage "https://kudo.dev"
  version "0.10.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kudobuilder/kudo/releases/download/v0.10.1/kudo_0.10.1_darwin_x86_64.tar.gz"
    sha256 "be194f42f0ef0d31e1481dca0051fd65103e7dbc45af2b745912a0fb2e4f780c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudobuilder/kudo/releases/download/v0.10.1/kudo_0.10.1_linux_x86_64.tar.gz"
      sha256 "8640e1a887f23fa61a3f07e17bdd6cddf4b9e7c8ce8a64cf1bb12c0efa3eb490"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/kudobuilder/kudo/releases/download/v0.10.1/kudo_0.10.1_linux_armv6.tar.gz"
        sha256 "273d52e5f15ba9223ace58b4e3d1428a4ee56222a4d61ea27a5c77958082154a"
      end
    end
  end
  
  depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-kudo"
  end
end
