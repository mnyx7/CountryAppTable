//
//  ConutryListController.swift
//  CountryAppTable
//
//  Created by Minaya Yagubova on 28.01.23.
//

import UIKit

class CountryListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var countryNames: UITableView!
    
    var item = [Country]()
   // let modelCountry = [Country(name: "Azerbaijan", image: "aze", city: [City(name: "Baku", image: "aze", info: "Baku is capital of Azerbaijan"), City(name: "Ganja", image: "aze", info: "Ganja is second largest city of Azerbaijan")]), Country(name: "Turkey", image: "tr", city: [City(name: "Istanbul", image: "tr", info: "Test Istanbul West"), City(name: "Izmir", image: "tr", info: "Salam Izmir")])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Country list"
        jsonFileRead()
    }
    
    func jsonFileRead(){
        if let jsonFile = Bundle.main.url(forResource: "country", withExtension: "json"),
           let data = try? Data(contentsOf: jsonFile){
            do {
                item = try JSONDecoder().decode([Country].self, from: data)
                countryNames.reloadData()
            } catch {
                print(error.localizedDescription)
            }
        } else {
        print("file not found")
        }
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        item.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CountryNameCell
        cell.countryName.text = item[indexPath.row].name
        cell.countryImage.image = UIImage(named: item[indexPath.row].image)
        return cell
        
        
        
    }
}
