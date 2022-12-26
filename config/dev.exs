import Config

  config :my_parser, MyParser.Repo,
    database: "ekis-school-sites-backend_development",
    username: "ivan",
    password: "1234",
    hostname: "localhost"
    # OR use a URL to connect instead
    # url: "postgres://ivan:1234@localhost:5432/ekis-school-sites-backend_development"
