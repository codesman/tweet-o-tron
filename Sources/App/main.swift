import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"],
        "winky": "stinky"
    ])
}

drop.resource("posts", PostController())

drop.run()
