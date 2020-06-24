//
//  ViewController.swift
//  ne-ios-sdk-samples
//
//  Created by landland-company on 06/16/2020.
//  Copyright (c) 2020 landland-company. All rights reserved.
//

import UIKit
import StepRule

class ViewController: UIViewController {

    @IBOutlet weak var todayStepsLabel: UILabel!
    @IBOutlet weak var authButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if HealthDataManager.shared.isAvailable() {
            self.authButton.backgroundColor = .gray
        }
    }
    
    @IBAction func tappedGetSteps() {
        let calendar = Calendar.current
        let date = Date()
        // 昨日
        guard let yesterday = calendar.date(byAdding: .day, value: -1, to: calendar.startOfDay(for: date)) else { return }
        HealthDataManager.shared.queryStepCounts(start: yesterday, end: date) { (model, success) in
            guard let steps = model.stepCount(at: date) else { return }
            DispatchQueue.main.async {
                self.todayStepsLabel.text = "今日の歩数: \(steps)歩"
            }
        }
    }
    
    @IBAction func tappedAuth() {
        let stepRuleVC = StepRuleAuthRequestViewController.getViewController()
        self.navigationController?.pushViewController(stepRuleVC, animated: true)
    }
}
