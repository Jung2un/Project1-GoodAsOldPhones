//
//  TableViewController.swift
//  project-01
//
//  Created by 정은 on 2023/04/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    let image = ["image-cell1", "image-cell2", "image-cell3", "image-cell4"]
    let label = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Moto Portable"]
    let fullImg = ["phone-fullscreen1.png", "phone-fullscreen2.png", "phone-fullscreen3.png", "phone-fullscreen4.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
                
            cell.cellImageView.image = UIImage(named: image[indexPath.row])
            cell.cellLabel.text = label[indexPath.row]
            
            return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let imageVC = storyboard.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        
        imageVC.imageName = fullImg[indexPath.row] + ".png"
        imageVC.labelText = label[indexPath.row]
        
        navigationController?.pushViewController(imageVC, animated: true)
    }
}
