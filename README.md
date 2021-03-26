# datagir-escp

```bash
git clone https://github.com/datagir-escp/nosgestesclimat-site.git
```

```bash
git clone https://github.com/datagir-escp/nosgestesclimat.git
```

```bash
docker build -t datagir-escp .
```

```bash
docker run --name datagir-escp -p 80:80 datagir-escp
```

```bash
docker cp datagir-escp:/usr/src/app/. ./nosgestesclimat-site/dist
```

```bash
cd nosgestesclimat-site
```

```bash
yarn run deploy-gh
```