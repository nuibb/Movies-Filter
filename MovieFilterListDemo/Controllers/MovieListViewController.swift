//
//  AppDelegate.swift
//  MovieFilterListDemo
//
//  Created by Steve JobsOne on 5/14/19.
//  Copyright © 2019 MobioApp Limited. All rights reserved.
//

import UIKit

class MovieListViewController: UITableViewController {
    
    var movies = [Movie]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    let formatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute]
        formatter.unitsStyle = .abbreviated
        formatter.maximumUnitCount = 1
        return formatter
    }()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = "\(formatter.string(from: movie.duration) ?? ""), \(movie.genre.capitalized), rating: \(movie.rating)"
        return cell
    }
    
}
