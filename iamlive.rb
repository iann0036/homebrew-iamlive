# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.11"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.11/iamlive-v1.1.11-darwin-amd64.zip"
    sha256 "ef10bf421a9a4a02b7975be7577d3dbcfd98cb2e818edde5592d8a12f8ea2cc3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.11/iamlive-v1.1.11-darwin-arm64.zip"
    sha256 "097098f11eab8e388bfb484a9116d3cf00f7f90e84f582bffd95c282735807e0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.11/linux-v1.1.11-linux-386.tar.gz"
    sha256 "fa878b5f9fcf6f9739e62c89fb9dc86de865380fed60a0f6cd66b5ba96c5ab2d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.11/linux-v1.1.11-linux-amd64.tar.gz"
    sha256 "9bcd7be880b2f651b88da875abf69e377fe1df8310817c8508eb8dfb682f9abd"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.11/linux-v1.1.11-linux-arm64.tar.gz"
    sha256 "6b0e87f4c4f7945aa35840be05387ad58f5e71bf91294a87efca57db58fb63e6"
  end

  def install
    bin.install "iamlive"
  end
end
