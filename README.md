# QLI Client Docker Setup

This repository contains a Docker setup for running the QLI Client, designed to connect to the backend API of qubic.li and receive tasks for AI training. It's tailored for ease of use on systems where the native binary may not be directly compatible, such as macOS or other Linux distributions.

## Prerequisites

Before you begin, ensure you have Docker installed and running on your machine. Docker allows you to package an application with all of its dependencies into a standardized unit for software development.

## Getting Started

1. **Clone the Repository**

   Start by cloning this repository to your local machine:

   ```bash
   git clone https://github.com/barrettathome/qli-client-docker-setup.git
   cd qli-client-docker-setup
    ```
2. **Configure the Application**

   Copy appsettings.json.example to appsettings.json:

   ```bash
   cp appsettings.json.example appsettings.json
   ```
   Edit appsettings.json to suit your configuration needs. This file contains various settings crucial for the operation of the QLI Client, such as your Qubic ID, thread configuration, and more.

3. **Build the Docker Image**

   Build the Docker image using the provided Dockerfile:

   ```bash
   docker build -t qli-client .
   ```
4. **Run the Docker Container**

   Run the Docker container using the image you just built:

   ```bash
   docker run -d --name qli-client qli-client
   ```
## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Acknowledgments

* Thanks to the qubic.li team for developing the QLI Client.
* This Docker setup is created for educational and simplification purposes.

## Support

If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a coffee.

[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/barrettathome)

Thank you for your support!
