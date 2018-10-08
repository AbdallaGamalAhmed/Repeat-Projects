//import Foundation
//import UIKit
//
//class ShadowTableViewController: UITableView {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureSelf()
//        configureShadow()
//        addSubviews()
//    }
//    
//    private let containerView: UIView = UIView()
//    private let tableView: UITableView = UITableView()
//    private let buttonBackView: UIView = UIView()
//    
//    private static let cornerRadius: CGFloat = 10
//    private static let reusableIdentifier: String = "cellReusableIdentifier"
//    
//    private func configureSelf() {
//        view.backgroundColor = UIColor.lightGray
//        buttonBackView.backgroundColor = UIColor.darkGray
//        
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: ShadowTableViewController.reusableIdentifier)
//        tableView.dataSource = self
//    }
//    
//    private func configureShadow() {
//        containerView.backgroundColor = UIColor.clear
//        containerView.layer.shadowColor = UIColor.darkGray.cgColor
//        containerView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
//        containerView.layer.shadowOpacity = 0.6
//        containerView.layer.shadowRadius = 5.0
//        
//        tableView.layer.cornerRadius = ShadowTableViewController.cornerRadius
//        tableView.layer.masksToBounds = true
//    }
//    
//    private func addSubviews() {
//        view.addSubview(containerView)
//        containerView.addSubview(tableView)
//        view.addSubview(buttonBackView)
//        
//        containerView.snp.makeConstraints { (make) in
//            make.left.top.equalTo(view).offset(30)
//            make.right.equalTo(view).offset(-20)
//            make.bottom.equalTo(buttonBackView.snp.top).offset(ShadowTableViewController.cornerRadius)
//        }
//        
//        tableView.snp.makeConstraints { (make) in
//            make.edges.equalTo(containerView)
//        }
//        
//        buttonBackView.snp.makeConstraints { (make) in
//            make.left.right.bottom.equalTo(view)
//            make.height.equalTo(60)
//        }
//    }
//}
//
//extension ShadowTableViewController: UITableViewDataSource {
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 40
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: ShadowTableViewController.reusableIdentifier, for: indexPath)
//        cell.textLabel?.text = "wiersz nr \(indexPath.item)"
//        return cell
//    }
//}
