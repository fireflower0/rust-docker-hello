use actix_web::{get, App, HttpServer};

#[get("/")]
async fn index() -> &'static str {
    "Hello world!\r\n"
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new().service(index)
    }).bind("0.0.0.0:8080")?.run().await
}
