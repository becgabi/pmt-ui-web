import 'package:backend_api/backend_api.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/feature/profile/bloc/profile_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileListCubit, ProfileListState>(
      builder: (context, state) {
        return Stack(
          children: [
            _buildTable(context, state),
            if ([ListStatus.loading].contains(state.status))
              _progressIndicator(),
          ],
        );
      },
    );
  }

  Widget _buildTable(BuildContext context, ProfileListState state) {
    return Container(
      padding: EdgeInsets.all(Config.defaultPadding),
      decoration: BoxDecoration(
        color: Config.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profiles",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: Config.defaultPadding,
              minWidth: 600,
              columns: const [
                DataColumn(label: Text("UID")),
                DataColumn(label: Text("Display name")),
                DataColumn(label: Text("First name")),
                DataColumn(label: Text("Last name")),
                DataColumn(label: Text("Email")),
                DataColumn(label: Text("Phone")),
              ],
              rows: List.generate(
                state.profiles.length,
                (index) => _buildDataRow(state.profiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildDataRow(Profile profile) {
    return DataRow(
      cells: [
        DataCell(Text(profile.id ?? "")),
        DataCell(Text(profile.displayName ?? "")),
        DataCell(Text(profile.firstName ?? "")),
        DataCell(Text(profile.lastName ?? "")),
        DataCell(Text(profile.email ?? "")),
        DataCell(Text(profile.phone ?? "")),
      ],
    );
  }

  Widget _progressIndicator() {
    return Container(
        color: Colors.transparent,
        child: const Center(child: CircularProgressIndicator()));
  }
}
