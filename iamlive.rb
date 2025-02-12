# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.19"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.19/iamlive-v1.1.19-darwin-amd64.zip"
    sha256 "2380bac610cc029efc52eda99d9abb46ba8cd1c030447109db64b9e055e4d9e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.19/iamlive-v1.1.19-darwin-arm64.zip"
    sha256 "d50373d8ee8faecd9a1c4579f676ff4344527ec3539610188d09c02dd76ecf21"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.19/linux-v1.1.19-linux-386.tar.gz"
    sha256 "dcbe249737e5b70a3dbe65689cae8195f663370343f84847f1ea1255ab13c666"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.19/linux-v1.1.19-linux-amd64.tar.gz"
    sha256 "973389be0d8b318dc7ea30cfae7c4cfe994d6d6ec4732875ed17f27deb31c346"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.19/linux-v1.1.19-linux-arm64.tar.gz"
    sha256 "d97f32d95c5f00dca947b58914aa271bf751009df936091bcd05c8683ba8d25f"
  end

  def install
    bin.install "iamlive"
  end
end
