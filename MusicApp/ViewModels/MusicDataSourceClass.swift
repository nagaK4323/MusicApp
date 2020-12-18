//
//  MusicDataSourceClass.swift
//  MusicApp
//
//  Created by Naga k on 12/16/20.
//

import Foundation

import UIKit

class MusicTableViewDataSource<ARTISTCELL : UITableViewCell,T> : NSObject, UITableViewDataSource {
    
    private var cellIdentifier : String!
    private var artistItems : [T]!
    var artistCell : (ARTISTCELL, T) -> () = {_,_ in }
    
    
    init(cellIdentifier : String, items : [T], configureCell : @escaping (ARTISTCELL, T) -> ()) {
        self.cellIdentifier = cellIdentifier
        self.artistItems =  items
        self.artistCell = configureCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ARTISTCELL
        
        
        let item = self.artistItems[indexPath.row]
        self.artistCell(cell, item)
        return cell
    }
}
