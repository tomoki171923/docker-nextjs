# docker-nextjs
Next.js on docker-compose.

## start next.js app in development mode.
~~~
docker-compose up
~~~

## install package
~~~
docker-compose exec node npm install
~~~

## Reference 

### install create-next-app command && create sample app (for the first time only)
~~~
docker run -it --rm node:16.4-slim npm install -g npm && npm install create-next-app && npx create-next-app sample-app --use-npm --typescript
~~~