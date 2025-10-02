import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../lib.dart';

@RoutePage()
class ClientSearchTalentView extends StatefulWidget
    implements AutoRouteWrapper {
  const ClientSearchTalentView({super.key});

  @override
  State<ClientSearchTalentView> createState() => _ClientSearchTalentViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ClientSearchTalentCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _ClientSearchTalentViewState extends State<ClientSearchTalentView> {
  @override
  void initState() {
    super.initState();
    context.read<ClientSearchTalentCubit>().searchTalent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cari Talent'),
      ),
      body: BlocBuilder<ClientSearchTalentCubit, ClientSearchTalentState>(
        builder: (context, state) {
          final talents = state.talentResults?.data ?? [];

          if (talents.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              itemCount: talents.length,
              itemBuilder: (context, index) {
                final talent = talents[index];
                final photoProfile = talent.profile?.photoProfile;

                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: _buildProfileImage(photoProfile),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileImage(String? photoProfile) {
    if (photoProfile == null ||
        photoProfile.isEmpty ||
        !photoProfile.startsWith('https://')) {
      return Container(
        color: Colors.grey.shade200,
        child: const Icon(
          Icons.person,
          size: 80,
          color: Colors.grey,
        ),
      );
    }

    return Image.network(
      photoProfile,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey.shade200,
          child: const Icon(
            Icons.person,
            size: 80,
            color: Colors.grey,
          ),
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          color: Colors.grey.shade100,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
