//
//  SearchViewController.swift
//  Youtube
//
//  Created by 宋文通 on 2018/11/17.
//  Copyright © 2018 Wentong Song. All rights reserved.
//  搜索控制器

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var searchTextField: UITextField!
    var tableViewModel = DefaultUITableViewModel()
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func searchPressed(_ sender: Any) {
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension SearchViewController :UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.sections[0].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = tableViewModel.model(for: indexPath)
        let cell = tableView.dequeueReusableCell(withModel: model, for: indexPath)
        return cell
    }
}
extension SearchViewController :UITableViewDelegate{}
extension SearchViewController {}
extension SearchViewController {}
extension SearchViewController {}

