//
//  HeadlinesTableViewController.swift
//  HeadlinesApp
//
//  Created by David Szemenkar on 2018-04-18.
//  Copyright © 2018 David Szemenkar. All rights reserved.
//

import Foundation
import UIKit

class HeadlinesTableViewController : UITableViewController {
    
    var sourceViewModel : SourceViewModel!
    private var headlineListViewModel: HeadlineListViewModel!
    private var dataSource: TableViewDataSource<HeadlineTableViewCell, HeadlineViewModel>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    private func updateUI() {
        
        self.title = self.sourceViewModel.name
        self.headlineListViewModel = HeadlineListViewModel(sourceViewModel: self.sourceViewModel) {
            self.dataSource = TableViewDataSource(cellIdentifier: "Cell", items: self.headlineListViewModel.headlineViewModels) {
                cell, vm in
                cell.titleLabel.text = vm.title
                cell.descriptionLabel.text = vm.description
            }
            self.tableView.dataSource = self.dataSource
            self.tableView.reloadData()
        }

    }
    
}
