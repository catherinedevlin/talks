podman build -t demo -f Dockerfile
podman build -t demo-wpy -f Dockerfile-wpy
podman build -t demo-fat -f Dockerfile-fat
podman build -t demo-old -f Dockerfile-old
quarto render uv-ultimate-victory.qmd
./clean.sh
