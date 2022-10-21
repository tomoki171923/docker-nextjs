# docker-nextjs
Next.js on docker-compose.

## install package
~~~
docker-compose run --rm node npm install
~~~

## start next.js app in development mode.
~~~
docker-compose up node
~~~

develop mode
<http://localhost:3000/>

## start next.js app in production mode on local.
~~~
docker-compose run --rm node npm run build
docker-compose up node_prod
~~~

production mode
<http://localhost:3333/>


## Reference 

### install create-next-app command && create sample app (for the first time only)
~~~
docker run -it --rm node:16.4-slim npm install -g npm && npm install create-next-app && npx create-next-app app --use-npm --typescript
~~~
