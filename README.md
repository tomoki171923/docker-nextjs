# docker-nextjs
Next.js on docker-compose.


## start next.js app in development mode.
~~~
docker-compose up
~~~


## initial build

### install create-next-app command.
~~~
docker-compose run --rm node npm install create-next-app
~~~

### create sample app
~~~
docker-compose run --rm node npx create-next-app sample-app --use-npm
~~~
