# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.15"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.15/iamlive-v1.1.15-darwin-amd64.zip"
    sha256 "7cec00dc8d4a3ce464f2fb14fda81f5f9d3f3a928471624b70e192a58080cd63"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.15/iamlive-v1.1.15-darwin-arm64.zip"
    sha256 "054eb939d341eb324f5bdfe137fd67c98220eaee801c860911a118f12734bfad"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.15/linux-v1.1.15-linux-386.tar.gz"
    sha256 "8f88a0b1700f79300a8f26894415efb1335953b3479b0cb8c82f15a18f1e6144"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.15/linux-v1.1.15-linux-amd64.tar.gz"
    sha256 "0b9bd42558dc64614137e8bc1c0d01b565c1cc56101e0026fd816e4d92b08b79"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.15/linux-v1.1.15-linux-arm64.tar.gz"
    sha256 "28a21c7a3d88afb717f96e6179c974c3ea02966a0629c2c67aab3a6016c5a5f2"
  end

  def install
    bin.install "iamlive"
  end
end
