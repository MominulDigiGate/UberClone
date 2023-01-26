//
//  LocationSearchVM.swift
//  UberClone
//
//  Created by Mac Mini 5 on 24/1/23.
//

import Foundation
import MapKit

class LocationSearchVM: NSObject, ObservableObject{
    //MARK: - Properties
    
    @Published var results = [MKLocalSearchCompletion]()
    
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = ""{
        didSet{
            print("DEBUG: Query fragment is \(queryFragment)")
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
}

//MARK: - MKLocalSearchCompleterDelegate
extension LocationSearchVM: MKLocalSearchCompleterDelegate{
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}
