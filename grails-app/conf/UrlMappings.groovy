class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/index"(view: '/index')
		"/"(controller: 'store')

		"500"(view:'/error')
	}
}
