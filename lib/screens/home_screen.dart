import 'package:student_amaliyot_app/screens/widgets/appbar.dart';
import 'package:student_amaliyot_app/screens/widgets/tap_bar.dart';

import '../utils/tools/file_importers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBarPage(title: "Amaliyot tizimi")
        ),
        body: TapBarPage()
      ),
    );
  }
}
