## Get Started

Create .env file, please refer to .env.example for the available values. Replace MONGO_URI to your personal mongo url connection

```
npm install
npm start
```


## Procedures

1. Hit the POST endpoint /newurl
2. Grab the shortened id from the response eg: "https://shortenurl.org/feETSCPk", the shortened id is "feETSCPk"
3. Append the shortened id and hit the url on the browser eg: http://localhost:4000/feETSCPk


## Quick start in local

### Prerequisite

- Install docker and docker-compose
- Create .env file, editing MONGO_URI in `.env` and `docker-compose.yaml`
- Build url_shortener image: `docker build -t url_shortener . `
- Spin up the set: `docker-compose up -d`


## Infrastructure

- Infrastructure related code are stored in `./infra`
- The application will sit behind Load Balancer. Request will be handled by Load Balancer before hitting application
- Replace `CONTAINER_IMAGE` and `CONTAINER_TAG` according to your registry before the deployment
- Replace `REPLICA` according to your desired bandwidth

## Enhancement

- MongoDB can be more secure by creating authentication.
- Self-hosted MongoDB can be replaced by dedicated database e.g DynamoDB/MongoDB atlas to help in infrastructure management 
