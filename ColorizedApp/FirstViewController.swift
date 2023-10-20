//
//  FirstViewController.swift
//  ColorizedApp
//
//  Created by Татьяна Дубова on 18.10.2023.
//

import UIKit

final class FirstViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.delegate = self
        secondVC.newColorView = view.backgroundColor
    }
}

extension FirstViewController: SecondViewControllerDelegate {
    func changeСolor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
