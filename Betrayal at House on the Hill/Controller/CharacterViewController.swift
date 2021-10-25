//
//  CharacterViewController.swift
//  Betrayal at House on the Hill
//
//  Created by Sean Tesch on 10/21/21.
//

import UIKit

class CharacterViewController: UIViewController {

    @IBOutlet var characterTableView: UITableView!
    
    var characters = Characters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        characterTableView.dataSource = self
        characterTableView.delegate = self
        
        characterTableView.register(UINib(nibName: "CharacterCellTableViewCell", bundle: nil), forCellReuseIdentifier: "CharacterCellTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let selectedIndexPath = characterTableView.indexPathForSelectedRow {
            characterTableView.deselectRow(at: selectedIndexPath, animated: animated)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let indexPath = characterTableView.indexPathForSelectedRow
        let character = characters.characters[indexPath!.row]
        let detailViewController = segue.destination as! CharacterInfoViewController
        
        detailViewController.name = character.name
        detailViewController.speed = "\(character.speed[character.speedIndex])"
        detailViewController.might = "\(character.might[character.mightIndex])"
        detailViewController.sanity = "\(character.sanity[character.sanityIndex])"
        detailViewController.knowledge = "\(character.knowledge[character.knowledgeIndex])"
    }
    
}

//MARK: - UITableViewDataSource

extension CharacterViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return characters.characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let character = characters.characters[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCellTableViewCell", for: indexPath) as? CharacterCellTableViewCell
        
        cell!.name?.text = character.name
        cell!.backgroundColor = character.color
        
        return cell!
    }
}

//MARK: - UITableViewDelegate

extension CharacterViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        performSegue(withIdentifier: "characterListToCharacterInfo", sender: indexPath.row)
    }
}
