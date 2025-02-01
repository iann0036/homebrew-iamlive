# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.14"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.14/iamlive-v1.1.14-darwin-amd64.zip"
    sha256 "febe26e86c24e4e2d693653761b094f9ed4e1e3ca45a12fd858f56c155385cb2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.14/iamlive-v1.1.14-darwin-arm64.zip"
    sha256 "285f4c3d2bd01c6ed2da8a2bc28f76c16111150a4e2457c91cd321610de0e564"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.14/linux-v1.1.14-linux-386.tar.gz"
    sha256 "59b63fa9269de39dd52fd5a7b87765ecfea4746e6d6918e69ddc55bb7633c820"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.14/linux-v1.1.14-linux-amd64.tar.gz"
    sha256 "8d174f00790a206ec326689856a7d34a2e623b9c19ff23737b50ce455f77d7b1"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.14/linux-v1.1.14-linux-arm64.tar.gz"
    sha256 "a669a88e4fe973e2ba5cb38c3ed90a0dae407925d3412d9fcf8220aef667ac67"
  end

  def install
    bin.install "iamlive"
  end
end
