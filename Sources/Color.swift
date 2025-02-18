//
//  Color.swift
//  Sage
//
//  Copyright 2016-2017 Nikolai Vazquez
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

/// A chess color.
public enum Color: String, CustomStringConvertible {
	
	public var hashValue: Int {
		switch self {
		case .white:
			return 0
		case .black:
			return 1
		}
	}

    #if swift(>=3)

    /// White chess color.
    case white

    /// Black chess color.
    case black

    /// White color regardless of Swift version.
    public static let _white = Color.white

    /// Black color regardless of Swift version.
    internal static let _black = Color.black

    /// An array of all colors.
    public static let all: [Color] = [.white, .black]

    #else

    /// White chess color.
    case White

    /// Black chess color.
    case Black

    /// White color regardless of Swift version.
    internal static let _white = Color.White

    /// Black color regardless of Swift version.
    internal static let _black = Color.Black

    /// An array of all colors.
    public static let all: [Color] = [.White, .Black]

    #endif

    /// Whether the color is white or not.
    public var isWhite: Bool {
        return self == ._white
    }

    /// Whether the color is black or not.
    public var isBlack: Bool {
        return self == ._black
    }

    /// A textual representation of `self`.
    public var description: String {
        return rawValue
    }

    /// The lowercase character for the color. `White` is "w", `Black` is "b".
    public var character: Character {
        return self.isWhite ? "w" : "b"
    }

    /// Create a color from a character of any case.
    public init?(character: Character) {
        switch character {
        case "W", "w": self = ._white
        case "B", "b": self = ._black
        default: return nil
        }
    }

    /// Returns the inverse of `self`.
    public func inverse() -> Color {
        return self.isWhite ? ._black : ._white
    }

    /// Inverts the color of `self`.
    public mutating func invert() {
        self = inverse()
    }

}
