import 'package:student_amaliyot_app/widgets/davomat_page.dart';

import '../../utils/tools/file_importers.dart';

class TapBarPage extends StatelessWidget {
  const TapBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Status barni shaffof qiladi
        statusBarIconBrightness: Brightness.light, // Android uchun qora ikonlar
        statusBarBrightness: Brightness.light, // iOS uchun
      ),
      child: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            body: const TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                Center(child: Text("🏠 Asosiy sahifa", style: TextStyle(fontSize: 20))),
                Center(child: Text("📋 Topshiriqlar", style: TextStyle(fontSize: 20))),
                // Center(child: Text("📅 Davomat", style: TextStyle(fontSize: 20))),
                DavomatPage(),
                Center(child: Text("📸 Rasmga tushirish sahifasi", style: TextStyle(fontSize: 20))),
                Center(child: Text("⚙️ Sozlamalar", style: TextStyle(fontSize: 20))),

              ],
            ),

            bottomNavigationBar: Container(height: 90,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                indicatorColor: Colors.amber,
                indicatorWeight: 3,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Bosh sahifa"),
                  Tab(icon: Icon(Icons.assignment), text: "Topshiriqlar"),
                  Tab(icon: Icon(Icons.calendar_today), text: "Davomat"),
                  Tab(icon: Icon(Icons.camera_alt), text: "Kamera"),
                  Tab(icon: Icon(Icons.settings), text: "Sozlamalar"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
