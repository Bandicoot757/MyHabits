//
//  InfoViewController.swift
//  MyHabits
//
//  Created by Stanislav Leontyev on 03.11.2020.
//

import UIKit

class InfoViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private lazy var navigationBar: UINavigationBar = {
        let navigationBar: UINavigationBar = UINavigationBar()
        navigationBar.barTintColor = .white
        let navigationItem = UINavigationItem(title: "Информация")
        navigationBar.setItems([navigationItem], animated: false)
        return navigationBar
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView: UIScrollView = UIScrollView()
        scrollView.delegate = self
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var infoTitleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.text = "Привычка за 21 день"
        return label
    }()
    
    private lazy var infoTextLabel: UILabel = {
        let textLabel: UILabel = UILabel()
        textLabel.numberOfLines = 0
        textLabel.text = "Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму:\n\n 1. Провести 1 день без обращения к старым привычкам, стараться вести себя так, как будто цель, загаданная в перспективу, находится на расстоянии шага\n\n 2. Выдержать 2 дня в прежнем состоянии самоконтроля.\n\n 3. Отметить в дневнике первую неделю изменений и подвести первые итоги — что оказалось тяжело, что — легче, с чем еще предстоит серьезно бороться.\n\n 4. Поздравить себя с прохождением первого серьезного порога в 21 день. За это время отказ от дурных наклонностей уже примет форму осознанного преодоления и человек сможет больше работать в сторону принятия положительных качеств.\n\n 5. Держать планку 40 дней. Практикующий методику уже чувствует себя освободившимся от прошлого негатива и двигается в нужном направлении с хорошей динамикой.\n\n 6. На 90-й день соблюдения техники все лишнее из «прошлой жизни» перестает напоминать о себе, и человек, оглянувшись назад, осознает себя полностью обновившимся.\n\n Источник: psychbook.ru"
        return textLabel
    }()
    
    override func viewWillLayoutSubviews() {
        
        view.addSubviews(scrollView)
        view.addSubviews(navigationBar)
        
        scrollView.addSubviews(contentView)
        
        contentView.addSubviews(infoTitleLabel)
        contentView.addSubviews(infoTextLabel)
        
        NSLayoutConstraint.activate([
            
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationBar.heightAnchor.constraint(equalToConstant: 44),
        
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: navigationBar.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            infoTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            infoTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            infoTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 22),
            infoTitleLabel.bottomAnchor.constraint(equalTo: infoTextLabel.topAnchor, constant: -16),
            
            infoTextLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            infoTextLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            infoTextLabel.topAnchor.constraint(equalTo: infoTitleLabel.bottomAnchor, constant: 16),
            infoTextLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
        ])
    }
    

}
