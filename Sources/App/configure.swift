import Vapor
import Leaf

public func configure(_ app: Application) throws {

    // Serves files from `Public/` directory
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // Configure Leaf
    app.views.use(.leaf)
    
    app.http.server.configuration.port = 9200
    
    if !app.environment.isRelease {
        (app.leaf.cache as? DefaultLeafCache)?.isEnabled = false
    }

    try routes(app)
}
