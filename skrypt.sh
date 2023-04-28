if [[ "$1" == "--init" ]]; then
    git clone https://github.com/Pawel51482/Lab4.git
    echo "export PATH=\"\${PATH}:$(pwd)/Lab4\"" >> ~/.bashrc
fi