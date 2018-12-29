//
//  Build.swift
//  TcxDataProtocol
//
//  Created by Kevin Hoogheem on 9/3/18.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

/// TCX Build Type
public enum BuildType: String, Codable {
    /// Internal Build
    case `internal` = "Internal"
    /// Alpha
    case alpha = "Alpha"
    /// Beta
    case beta = "Beta"
    /// Release
    case release = "Release"
}

/// Identifies Build Information
@available(swift 4.0)
public struct Build: Codable {
    // Build_t

    /// Version
    private(set) public var version: Version

    /// Time application was Built
    ///
    /// A string containing the date and time when an application was built.
    /// Note that this is not an xsd:dateTime type because this string is
    /// generated by the compiler and cannot be readily converted to the xsd:dateTime format.
    private(set) public var time: String?

    /// The login name of the engineer who created this build
    private(set) public var builder: String?

    /// Build Type
    private(set) public var type: BuildType?

    enum CodingKeys: String, CodingKey {
        case version = "Version"
        case time = "Time"
        case builder = "Builder"
        case type = "Type"
    }
}
