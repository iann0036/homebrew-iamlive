# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.21"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.21/iamlive-v1.1.21-darwin-amd64.zip"
    sha256 "4ebf219a6f3037a3804b32258cf9bac321a9a7ff8cd695038aadafca2e3d8c42"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.21/iamlive-v1.1.21-darwin-arm64.zip"
    sha256 "60b42ede0d51e3279a84d84d8e30c40fdc498a66d033eb549d077a81d8d95bef"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.21/linux-v1.1.21-linux-386.tar.gz"
    sha256 "aaf26ffca7f481bb7e737ee521ce354a643c2b77c57fd4ac7f128366fbd24770"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.21/linux-v1.1.21-linux-amd64.tar.gz"
    sha256 "2d78175cc1934f2e882d48c7eeb5fa81d63e3a62974ac277be3f43b8ad72668e"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.21/linux-v1.1.21-linux-arm64.tar.gz"
    sha256 "401fdf64815bfa0a3af0c2c0dfe7669877cb9aa91991fbc546bedc8a7c4ba5dc"
  end

  def install
    bin.install "iamlive"
  end
end
