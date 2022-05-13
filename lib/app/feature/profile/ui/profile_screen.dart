import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/extension/build_context.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:fbase_auth_test/app/feature/profile/bloc/profile_list_cubit.dart';
import 'package:fbase_auth_test/app/feature/profile/repository/profile_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../core/ui/widget/rounded_box.dart';
import 'component/profile_list_view.dart';

class ProfileScreen extends StatelessWidget {
  static const route = '/profile';
  static const title = 'Profiles';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ProfileRepository(
        Provider.of<BackendApi>(context, listen: false).getProfileApi(),
      ),
      child: BlocProvider(
          create: (context) => ProfileListCubit(
                repository: RepositoryProvider.of<ProfileRepository>(context),
              ),
          child: PmtScaffold(
            body: BlocListener<ProfileListCubit, ProfileListState>(
              listener: _snackBarNotificationListener,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileFilter(),
                  SizedBox(height: Config.defaultPadding),
                  const ProfileList(),
                ],
              ),
            ),
          )),
    );
  }

  void _snackBarNotificationListener(
      BuildContext context, ProfileListState state) {
    if (state.status == ListStatus.failed) {
      context.showErrorSnackBar('Failed! Reason: ${state.error}');
    }
  }
}

class ProfileFilter extends StatelessWidget {
  const ProfileFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Center(
        child: Row(
          children: [
            SizedBox(width: Config.defaultPadding),
            ElevatedButton(
                onPressed: () => context.read<ProfileListCubit>().search(),
                child: const Text('Search'))
          ],
        ),
      ),
    );
  }
}
