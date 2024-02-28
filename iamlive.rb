# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.8/iamlive-v1.1.8-darwin-amd64.zip"
    sha256 "8e98d75d27ff1854c95a19bbf0a247748ccd1d83b3b38fddea12f83270796b4e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.8/iamlive-v1.1.8-darwin-arm64.zip"
    sha256 "5c11c2ee83ff164d41b513cf49325ecbda8fd95dfbe1274710d28cb0d25a84c3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.8/linux-v1.1.8-linux-386.tar.gz"
    sha256 "d102a9c391e06b721c926109b86e653cb538b807fad72d3e58e3109c55e476fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.8/linux-v1.1.8-linux-amd64.tar.gz"
    sha256 "0a5b0fdd8a954ae0d6c016e76bdf9ea8a66995db7ec172f708295c3a0ad4ecd7"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.8/linux-v1.1.8-linux-arm64.tar.gz"
    sha256 "189c8d0d6709821c271a9e19e9be9bf93833db5037492ab907fdf8ec30dae161"
  end

  def install
    bin.install "iamlive"
  end
end
