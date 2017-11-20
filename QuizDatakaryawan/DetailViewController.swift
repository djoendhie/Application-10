//
//  DetailViewController.swift
//  QuizDatakaryawan
//
//  Created by Macbook pro on 27/10/17.
//  Copyright © 2017 Smk IDN. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var etFullname: UITextField!
    @IBOutlet weak var etStaff: UITextField!
    @IBOutlet weak var etGaji: UITextField!
    @IBOutlet weak var etID: UITextField!
    @IBOutlet weak var etGol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSaveTask(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //deklarasi task
        let namekaryawan = Karyawan(context: context) //deklarasi nameTask sebagai konteks dari entiti Task
        
        namekaryawan.nama_karyawan = etFullname.text
        namekaryawan.nama_staff = etStaff.text
        namekaryawan.id_karyawan = etID.text
        namekaryawan.golongan = etGol.text
        namekaryawan.gaji = etGaji.text
        
        if etFullname.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi ke button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etStaff.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi ke button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etID.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi ke button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etGol.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi ke button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etGaji.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alert = UIAlertController(title: "Warning", message: "Task Cannot Be Empty", preferredStyle: UIAlertControllerStyle.alert)
            //menambahkan aksi ke button
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            //ketika kondisi tesk task nya tidak kosong
            //data di simpan ke core Data
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            _ = navigationController?.popViewController(animated: true)
            
            //mencetak kalau data berhasil ditambahkan
            print("Data berhasil disimpan")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
