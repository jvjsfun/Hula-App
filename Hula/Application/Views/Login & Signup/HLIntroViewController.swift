//
//  HLIntroViewController.swift
//  Hula
//
//  Created by Star on 3/8/17.
//  Copyright © 2017 star. All rights reserved.
//

import UIKit

class HLIntroViewController: UserBaseViewController, UIScrollViewDelegate {
    
    @IBOutlet var introView1: UIView!
    @IBOutlet var introView2: UIView!
    @IBOutlet var introView3: UIView!
    @IBOutlet var introView4: UIView!
    @IBOutlet var introView5: UIView!
    @IBOutlet var pageCtrl: UIPageControl!
    @IBOutlet var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
        self.initData()
        self.initView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    func initUI(){

    }
    func initData(){
        pageCtrl.currentPage = 0
    }
    func initView(){
        introView1.frame = CGRect(x: 0.0, y: 0.0, width: mainScrollView.frame.size.width, height: mainScrollView.frame.size.height)
        introView2.frame = CGRect(x: mainScrollView.frame.size.width, y: 0.0, width: mainScrollView.frame.size.width, height: mainScrollView.frame.size.height)
        introView3.frame = CGRect(x: mainScrollView.frame.size.width * 2.0, y: 0.0, width: mainScrollView.frame.size.width, height: mainScrollView.frame.size.height)
        introView4.frame = CGRect(x: mainScrollView.frame.size.width * 3.0, y: 0.0, width: mainScrollView.frame.size.width, height: mainScrollView.frame.size.height)
        introView5.frame = CGRect(x: mainScrollView.frame.size.width * 4.0, y: 0.0, width: mainScrollView.frame.size.width, height: mainScrollView.frame.size.height)
        
        mainScrollView.addSubview(introView1)
        mainScrollView.addSubview(introView2)
        mainScrollView.addSubview(introView3)
        mainScrollView.addSubview(introView4)
        mainScrollView.addSubview(introView5)
        mainScrollView.contentSize = CGSize(width: mainScrollView.frame.size.width * 5.0, height: 0)
        mainScrollView.contentOffset = CGPoint(x: 0.0, y: 0.0)
    }
    
    //#MARK - ScrollView Delegate
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        let posX: Int! = Int(mainScrollView.contentOffset.x / mainScrollView.frame.size.width)
        pageCtrl.currentPage = posX
        if (mainScrollView.contentOffset.x > 4.0 * mainScrollView.frame.size.width) {
            self.navToMainView()
        }
    }
}
