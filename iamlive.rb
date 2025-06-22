# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.25"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.25/iamlive-v1.1.25-darwin-amd64.zip"
    sha256 "c75729442583142e6ee25d18c36c1214f15fa51115ad90d845e093159e0c8574"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.25/iamlive-v1.1.25-darwin-arm64.zip"
    sha256 "3a68e587f03f97472071311f8f4ec849a5fd57da1a51837a3cb808df22d75af5"
  end
  if OS.linux? && Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.25/iamlive-v1.1.25-linux-386.tar.gz"
    sha256 "4aa12d4e1447a429e8e25ddf83f11112ff01992e88906e5d60911557775a6369"
  end
  if OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.25/iamlive-v1.1.25-linux-amd64.tar.gz"
    sha256 "881c781bf6d9a231ee23e5158eb77ee823ba5bf06d3d48179147c5ed66f2994f"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.25/iamlive-v1.1.25-linux-arm64.tar.gz"
    sha256 "6a6c15de0c76373aeadc39667b88fa20620cb8f0c7b9cbd0b931d2f0df649fe8"
  end

  def install
    bin.install "iamlive"
  end
end
