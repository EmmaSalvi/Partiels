# Create Heroku apps for staging and production
resource "heroku_app" "development" {
  name   = "development-partielapp"
  region = "eu"

  #On précise que dans l'environnement on utilise le runtime Go = il sait que c'est une app en Go
  buildpacks = [ 
    "heroku/go"
  ]
}

resource "heroku_app" "staging" {
  name   = "staging-partielapp"
  region = "eu"

  #On précise que dans l'environnement on utilise le runtime Go = il sait que c'est une app en Go
  buildpacks = [ 
    "heroku/go"
  ]
}

resource "heroku_app" "production" {
  name   = "production-partielapp"
  region = "eu"

  buildpacks = [ 
    "heroku/go"
  ]
}
