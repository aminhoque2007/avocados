//
//  RipeningModel.swift
//  Avocados
//
//  Created by Amin Hoque on 22/7/23.
//

import SwiftUI

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}
