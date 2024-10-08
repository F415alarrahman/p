import 'package:classflutter/module/assets_path.dart';
import 'package:classflutter/module/detail_page.dart';
import 'package:classflutter/module/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeNotifier(context: context),
      child: Consumer<HomeNotifier>(
        builder: (context, value, child) => Scaffold(
          body: Column(
            children: [
              SizedBox(height: 20),
              // Bagian atas dengan judul dan ikon
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'APLIKASI GUA TUH',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount:
                      value.dataList.length, // Ambil dataList dari provider
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        // Row untuk tiga konten dalam satu baris
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Konten pertama
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Expanded(
                                        child: Image.asset(
                                          ImageAssets.assets1,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(value.dataList[index]['title'] ?? ''),
                                    SizedBox(height: 2),
                                    Text(
                                        value.dataList[index]['updated'] ?? ''),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            // Konten kedua
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Expanded(
                                        child: Image.asset(
                                          ImageAssets.assets1,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(value.dataList[index]['title'] ?? ''),
                                    SizedBox(height: 2),
                                    Text(
                                        value.dataList[index]['updated'] ?? ''),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            // Konten ketiga
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Expanded(
                                        child: Image.asset(
                                          ImageAssets.assets1,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(value.dataList[index]['title'] ?? ''),
                                    SizedBox(height: 2),
                                    Text(
                                        value.dataList[index]['updated'] ?? ''),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16), // Jarak antar baris
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
