// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 * Class that represents a generic Geek Code related error.
 */
class GeekCodeError extends ArgumentError {

  /**
   * Creates a [GeekCodeError] object with a [message].
   */
  GeekCodeError(String message) : super(message);
}
