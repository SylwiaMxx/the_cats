//
//  TableViewController.swift
//  CatFacts_v2
//
//  Created by Sylwia Markes on 30/11/2021.
//

import UIKit

class TableViewController: UITableViewController {
    
var items = [CatFactsItem]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Fact", for: indexPath)
        let item = items[indexPath.row]
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = items[indexPath.row]
            item.isFavourite.toggle()
            
            configureCheckmark(for:cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: CatFactsItem) {

        if item.isFavourite {
        cell.accessoryType = .checkmark
        } else {
        cell.accessoryType = .none
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: CatFactsItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
        let item1 = CatFactsItem()
        item1.text = "Walk the dog"
        items.append(item1)

        let item2 = CatFactsItem()
        item2.text = "Brush my teeth"
        item2.isFavourite = true
        items.append(item2)

        let item3 = CatFactsItem()
        item3.text = "Learn iOS development"
        item3.isFavourite = true
        items.append(item3)

        let item4 = CatFactsItem()
        item4.text = "Soccer practice"
        items.append(item4)

        let item5 = CatFactsItem()
        item5.text = "Eat ice cream"
        items.append(item5)
        
        let item6 = CatFactsItem()
        item6.text = "Try harder"
        item6.isFavourite = true
        items.append(item6)
    }
}
