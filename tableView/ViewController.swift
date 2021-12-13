//
//  ViewController.swift
//  tableView
//
//  Created by Berat Yavuz on 13.12.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var ulkeler : [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["peru","japonya","iran","hollanda","norveç"]
        tableView.delegate = self
        tableView.dataSource = self
    }
    // tableViewdeki sütun sayısını belirlemek için
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // tableViewdeki başlıkları belirlemek için  bu fonskiyonu kullandık
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    //tableView satırlarına dizideki ülkeleri yazdırdık ve tableview döndüren bir fonksiyon
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for:indexPath)
        cell.textLabel?.text = ulkeler[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(ulkeler[indexPath.row])
    }
}

