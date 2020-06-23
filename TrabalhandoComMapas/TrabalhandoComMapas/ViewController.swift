//
//  ViewController.swift
//  TrabalhandoComMapas
//
//  Created by Jackson Wandekoken on 12/04/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self //Diz que o método irá puxar de CLLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //Diz a precisão necessária do app
        locationManager.requestWhenInUseAuthorization() //pede e informa a autorização do app para o usuário. GERENCIADO NO "Info.plist", inserindo requisições no "Requires Device Capabilities" e autorizações no "Information Property List".
        locationManager.startUpdatingLocation() //Atualiza o local a todo momento que o user se mover.
        
        /*
        let latitude: CLLocationDegrees = -20.341888
        let longitude: CLLocationDegrees = -40.288782
        
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        
        let localization: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude) //Define a localização no mapa.
        let visualizationArea: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude) //latitude delta e longitude delta. Utilizado para definir o zoom. Quanto menor o valor, mais o zoom do mapa é aproximado.
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: localization, span: visualizationArea)
        
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation() //utilizado para inserir um marcador no mapa
        //configurar
        annotation.coordinate = localization //escolhe a localização para o marcador
        annotation.title = "Shopping Praia da Costa"
        annotation.subtitle = "Primeiro Shopping de Vila Velha, situado na Praia da Costa"
        
        map.addAnnotation(annotation)
        */
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) { //usado para de fato mostrar a atualização do local do usuário
        let userLocation: CLLocation = locations.last! //informa que queremos sempre utilizar a última localização do Array de localizações
            //Lembrando de ir no Main.storyboard, clicar no Mapa > Atribute Inspector e selecionar "User Location" para que seja de fato repassada a localização do user.
        
        //monta a exibição do mapa
        let latitude: CLLocationDegrees = userLocation.coordinate.latitude
        let longitude: CLLocationDegrees = userLocation.coordinate.longitude
        
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        
        let localization: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude) //Define a localização no mapa.
        let visualizationArea: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude) //latitude delta e longitude delta. Utilizado para definir o zoom. Quanto menor o valor, mais o zoom do mapa é aproximado.
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: localization, span: visualizationArea)
        
        map.setRegion(region, animated: true)
        
    }


}

