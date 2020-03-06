//
//  AudioFile.swift
//  PlayCall
//
//  Created by Lambda_School_loaner_226 on 3/4/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import Foundation

struct AudioFile {
    var audioFileName: String
    var audioFileType: String
    var audioFileAnswer: String
    
    init(audioFileName: String, audioFileType: String, audioFileAnswer: String) {
        self.audioFileName = audioFileName
        self.audioFileType = audioFileType
        self.audioFileAnswer = audioFileAnswer
    }
}
