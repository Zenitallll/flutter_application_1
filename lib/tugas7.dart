import 'package:flutter/material.dart';

class Tugas7 extends StatefulWidget {
  const Tugas7({super.key});

  @override
  State<Tugas7> createState() => _Tugas7State();
}

class _Tugas7State extends State<Tugas7> {
  // Checkbox
  bool setuju = false;

  // Switch
  bool modeGelap = false;

  // Dropdown
  String? kategori;

  // Date Picker
  DateTime? tanggalLahir;

  // Time Picker
  TimeOfDay? waktuPengingat;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: modeGelap ? Brightness.dark : Brightness.light,
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text("Tugas 7")),

        // DRAWER
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Text(
                  "Menu Input",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.check_box),
                title: const Text("Checkbox"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.toggle_on),
                title: const Text("Switch"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.arrow_drop_down),
                title: const Text("Dropdown"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.calendar_month),
                title: const Text("Tanggal"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.access_time),
                title: const Text("Jam"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        // BODY
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CHECKBOX
              const Text(
                "Syarat & Ketentuan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Saya menyetujui semua persyaratan yang berlaku",
                ),
                value: setuju,
                onChanged: (value) {
                  setState(() {
                    setuju = value!;
                  });
                },
              ),

              Text(
                setuju
                    ? "Lanjutkan pendaftaran diperbolehkan"
                    : "Anda belum bisa melanjutkan",
                style: TextStyle(color: setuju ? Colors.green : Colors.red),
              ),

              const SizedBox(height: 30),

              // SWITCH
              const Text(
                "Mode Gelap",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Aktifkan Mode Gelap"),
                value: modeGelap,
                onChanged: (value) {
                  setState(() {
                    modeGelap = value;
                  });
                },
              ),

              Text(modeGelap ? "Mode Gelap Aktif" : "Mode Terang Aktif"),

              const SizedBox(height: 30),

              // DROPDOWN
              const Text(
                "Pilih Kategori Produk",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Kategori",
                ),
                value: kategori,
                items: const [
                  DropdownMenuItem(
                    value: "Elektronik",
                    child: Text("Elektronik"),
                  ),
                  DropdownMenuItem(value: "Pakaian", child: Text("Pakaian")),
                  DropdownMenuItem(value: "Makanan", child: Text("Makanan")),
                  DropdownMenuItem(value: "Lainnya", child: Text("Lainnya")),
                ],
                onChanged: (value) {
                  setState(() {
                    kategori = value;
                  });
                },
              ),

              const SizedBox(height: 10),

              Text(
                kategori == null
                    ? "Anda memilih kategori: ___"
                    : "Anda memilih kategori: $kategori",
              ),

              const SizedBox(height: 30),

              // DATE PICKER
              const Text(
                "Pilih Tanggal Lahir",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () async {
                  DateTime? hasil = await showDatePicker(
                    context: context,
                    initialDate: DateTime(1945, 8, 17),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );

                  if (hasil != null) {
                    setState(() {
                      tanggalLahir = hasil;
                    });
                  }
                },
                child: const Text("Pilih Tanggal Lahir"),
              ),

              if (tanggalLahir != null)
                Text(
                  "Tanggal Lahir: ${tanggalLahir!.day} "
                  "${_namaBulan(tanggalLahir!.month)} "
                  "${tanggalLahir!.year}",
                ),

              const SizedBox(height: 30),

              // TIME PICKER
              const Text(
                "Atur Pengingat",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? hasil = await showTimePicker(
                    context: context,
                    initialTime: const TimeOfDay(hour: 7, minute: 30),
                  );

                  if (hasil != null) {
                    setState(() {
                      waktuPengingat = hasil;
                    });
                  }
                },
                child: const Text("Pilih Waktu Pengingat"),
              ),

              if (waktuPengingat != null)
                Text(
                  "Pengingat diatur pukul: "
                  "${waktuPengingat!.format(context)}",
                ),
            ],
          ),
        ),
      ),
    );
  }

  String _namaBulan(int bulan) {
    const namaBulan = [
      "",
      "Januari",
      "Februari",
      "Maret",
      "April",
      "Mei",
      "Juni",
      "Juli",
      "Agustus",
      "September",
      "Oktober",
      "November",
      "Desember",
    ];

    return namaBulan[bulan];
  }
}
