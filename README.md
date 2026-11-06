# Ronald Humberto Rovira Jurado — Academic Portfolio

Static, single-page academic portfolio served by Nginx in Docker.

## Deploy with Dokploy from Git

1. Upload the **contents of this folder** to the root of a GitHub/GitLab repository (including `Dockerfile`, `nginx.conf`, `index.html`, and `assets/`).
2. In Dokploy, create an **Application**, select your Git provider/repository and branch.
3. Choose **Dockerfile** as the build type, with Dockerfile path `Dockerfile` and build context `.`.
4. Set the application's internal/container port to **80** (not 3000 or 8080).
5. Configure your domain in Dokploy and enable HTTPS/Let's Encrypt there.
6. Deploy. No environment variables, database, or persistent volume are needed.

If deploying from a subdirectory of a larger repository, set the build context and Dockerfile path accordingly.

## Local test (Docker installed)

```sh
docker build -t rovira-portfolio .
docker run --rm -p 8080:80 rovira-portfolio
```

Visit http://localhost:8080. Stop the container with Ctrl+C.

## Update content

Edit `index.html` or replace images under `assets/`, commit and push to your repository, then redeploy in Dokploy (or enable automatic deployments/webhooks).

Note: Public Git repositories expose all included files and images. Do not add private CVs, certificates, credentials, or other sensitive documents.
