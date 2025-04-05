import { Elysia } from "elysia";

const app = new Elysia().get("/", () => "Hello Elysia new commit").listen(3000);

console.log(
  `🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port} new commit`,
);
