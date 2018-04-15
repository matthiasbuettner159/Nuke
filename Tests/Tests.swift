// The MIT License (MIT)
//
// Copyright (c) 2015-2018 Alexander Grebenyuk (github.com/kean).

import Nuke
import XCTest

let defaultURL = URL(string: "http://test.com")!

let defaultImage: Image = {
    let bundle = Bundle(for: MockImagePipeline.self)
    let URL = bundle.url(forResource: "Image", withExtension: "jpg")
    let data = try! Data(contentsOf: URL!)
    return Nuke.DataDecoder().decode(data: data, response: URLResponse())!
}()

extension String: Error {}
