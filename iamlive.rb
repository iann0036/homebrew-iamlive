# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.18"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.18/iamlive-v1.1.18-darwin-amd64.zip"
    sha256 "6e4515b94445c7fa4cb296143e94b754762fc84f32e213816c0aa44af49fe62d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.18/iamlive-v1.1.18-darwin-arm64.zip"
    sha256 "e06aabca9caf25bce2517f5baf711a00c8ef5b8252f5b7b8729de750cb533461"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.18/linux-v1.1.18-linux-386.tar.gz"
    sha256 "97e7bc20fbed0ceee8fbc12901fba5e133797b9fddae019e61c43132ec09e795"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.18/linux-v1.1.18-linux-amd64.tar.gz"
    sha256 "77e92a5818cb7e98d4209b9fed5022191b004c94de72674c401a2f618f45ca5d"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.18/linux-v1.1.18-linux-arm64.tar.gz"
    sha256 "18506abef6cbc82a5d2833fe8179001987cbb16998fedd6ff005e532e4a92b99"
  end

  def install
    bin.install "iamlive"
  end
end
