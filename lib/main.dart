import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit/features/login/presentation/screens/login.dart';
import 'core/router.dart';
// ignore: implementation_imports, unnecessary_import, import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/src/multi_bloc_provider.dart';
import 'features/login/presentation/blocs/login_bloc.dart';
import 'locator.dart' as di;
import 'locator.dart';

void main() {
  Routers.defineRoutes();
  WidgetsFlutterBinding.ensureInitialized();

  di.init();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<LoginBloc>(),
        ),
      ],
      child: MaterialApp(
          title: 'QIT',
          theme: ThemeData(
            fontFamily: 'Roboto',
          ),
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
          initialRoute: 'login',
          onGenerateRoute: Routers.router.generator),
    );
  }
}
