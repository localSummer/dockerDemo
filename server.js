let Koa = require('koa');
let app = new Koa();

app.use(async ctx => {
  ctx.body = 'Hello Docker';
});

app.listen(8080);