import Vapor
import Leaf

func routes(_ app: Application) throws {

    app.get { req in
        req.view.render("index")
    }

    app.get("kitchen-sink", "share") { req in
        req.view.render("index")
    }
    
    app.get("mirror-mirror", "share") { req in
        req.view.render("index")
    }
}
