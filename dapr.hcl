description = "Command-line tools for Dapr."
binaries = ["dapr"]
test = "dapr --version"

platform "darwin" "amd64" {
  source = "https://github.com/dapr/cli/releases/download/v${version}/dapr_${os}_${arch}.tar.gz"
}

platform "darwin" "arm64" {
  source = "https://github.com/dapr/cli/releases/download/v${version}/dapr_${os}_${arch}.tar.gz"
}

platform "linux" "amd64" {
  source = "https://github.com/dapr/cli/releases/download/v${version}/dapr_${os}_${arch}.tar.gz"
}

version "1.10.0" {
  auto-version {
    github-release = "dapr/cli"
  }
}

sha256sums = {
  "https://github.com/dapr/cli/releases/download/v1.10.0/dapr_linux_amd64.tar.gz": "48063b751a08f4e311c56c4930cfec48bc25be62ceb61bf6691300a0b9729f61",
  "https://github.com/dapr/cli/releases/download/v1.10.0/dapr_darwin_amd64.tar.gz": "746b823cf95d29840eb05f9dc7a7b48d0bd4bf4c764f6272abb494ab2ab9155d",
  "https://github.com/dapr/cli/releases/download/v1.10.0/dapr_darwin_arm64.tar.gz": "130091c7135f3c8c72c7cb8d02fef6b40f91b4483eb07186ec561882e0bdd502",
}
