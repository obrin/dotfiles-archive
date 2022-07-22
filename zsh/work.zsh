# Aliases
alias mamba="docker pull wayfair/mamba:latest && docker run -it wayfair/mamba:latest"
alias proxy="docker run -p 443:443 -v ~/.local-certs:/certs wayfair/local-https-proxy"
alias ac="/opt/cisco/anyconnect/bin/vpn"
alias helmdry="docker pull wayfair/helm-local-dev-helper:latest && docker volume create $(basename $(pwd)) && docker run --rm -v $(pwd):/chart -v $(basename $(pwd)):/root/.helm wayfair/helm-local-dev-helper:latest -c /helm-scripts/dry.sh"
alias ac='/opt/cisco/anyconnect/bin/vpn'