import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            topButton(
              Icons.arrow_back_ios_outlined, 
              () {
              Navigator.pop(context);
            },
            iconColor: Colors.red,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'List Produk',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            topButton(Icons.person, () {}),
          ],
        ),
      ),
  body: Column(
  children: [
   
    Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(5), 
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddPage()),
            );
          },
          icon: const Icon(Icons.add, size: 16), 
          label: const Text("Add Data", style: TextStyle(fontSize: 14)), 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), 
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          ),
        ),
      ),
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Foto',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Nama Produk',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Harga',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Aksi',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
         
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        'assets/burger.jpg',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Burger King Medium',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Rp50.000,00',
                        style: GoogleFonts.lato(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: IconButton(
                        icon:
                            const Icon(CupertinoIcons.trash, color: Colors.red),
                        onPressed: () {
                        
                        },
                      ),
                    ),
                  )
                ],
                
              ),
              const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
            ],
            
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/teh.jpg', 
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'teh Botol',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Rp4.000,00',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: IconButton(
                      icon: const Icon(CupertinoIcons.trash, color: Colors.red),
                      onPressed: () {}),
                ),
              ),
             
            ],
          ),
  const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/burger.jpg', 
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Burger King Medium',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Rp50.000,00',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: IconButton(
                    icon: const Icon(CupertinoIcons.trash, color: Colors.red),
                    onPressed: () {},
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              )
            ],
          ),
            const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
        ],
      ),
    );
  }
  

 Widget topButton(IconData icon, VoidCallback onPressed,
   {Color iconColor = Colors.black}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: iconColor),
        onPressed: onPressed,
      ),
    );
  }
}
