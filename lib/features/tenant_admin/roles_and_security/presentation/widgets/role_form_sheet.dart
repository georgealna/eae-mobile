import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/button_widget.dart';
import '../../../../../core/public_widgets/snack_bar_widget.dart';
import '../../../../../core/public_widgets/text_field_widget.dart';
import '../../../users_management/presentation/widgets/users_management_sheet_scaffold.dart';
import '../../data/models/roles_and_security_request_body.dart';
import '../../logic/roles_and_security_cubit.dart';

class RoleFormSheet extends StatefulWidget {
  final String? roleId;
  final String? initialRoleName;
  final String? initialDescription;
  final String? initialRoleCategory;

  const RoleFormSheet({
    super.key,
    this.roleId,
    this.initialRoleName,
    this.initialDescription,
    this.initialRoleCategory,
  });

  bool get isEditing => roleId != null;

  @override
  State<RoleFormSheet> createState() => _RoleFormSheetState();
}

class _RoleFormSheetState extends State<RoleFormSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _roleNameController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _roleCategoryController;
  bool _isCustom = false;

  @override
  void initState() {
    super.initState();
    _roleNameController = TextEditingController(
      text: widget.initialRoleName ?? '',
    );
    _descriptionController = TextEditingController(
      text: widget.initialDescription ?? '',
    );
    _roleCategoryController = TextEditingController(
      text: widget.initialRoleCategory ?? '',
    );
  }

  @override
  void dispose() {
    _roleNameController.dispose();
    _descriptionController.dispose();
    _roleCategoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UsersManagementSheetScaffold(
      title: widget.isEditing ? 'Update role' : 'Create role',
      subtitle: widget.isEditing
          ? 'Update role name, description, and category.'
          : 'Create a tenant role for access control.',
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFieldWidget(
              controller: _roleNameController,
              hintText: 'Proctor',
              labelText: 'Role name',
              obscureText: false,
            ),
            verticalSpace(12),
            TextFieldWidget(
              controller: _descriptionController,
              hintText: 'Live session monitoring and integrity enforcement.',
              labelText: 'Description',
              obscureText: false,
              maxLines: 3,
            ),
            verticalSpace(12),
            TextFieldWidget(
              controller: _roleCategoryController,
              hintText: 'supervisory',
              labelText: 'Role category',
              obscureText: false,
            ),
            if (!widget.isEditing) ...[
              verticalSpace(12),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Custom role',
                  style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
                value: _isCustom,
                onChanged: (value) {
                  setState(() {
                    _isCustom = value;
                  });
                },
              ),
            ],
            verticalSpace(20),
            ButtonWidget(
              title: widget.isEditing ? 'Update Role' : 'Create Role',
              width: double.infinity,
              radius: 8.r,
              backgroundColor: AppColors.secondaryColor7,
              textStyle: AppTextStyles.font14DarkGreySemiBold.copyWith(
                color: AppColors.neutralColor,
              ),
              onTap: _submit,
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    if (_roleNameController.text.trim().isEmpty ||
        _descriptionController.text.trim().isEmpty ||
        _roleCategoryController.text.trim().isEmpty) {
      showAppSnackBar(context, 'Please fill all required fields');
      return;
    }

    final cubit = context.read<RolesAndSecurityCubit>();

    if (widget.isEditing) {
      cubit.updateRole(
        widget.roleId!,
        UpdateRoleRequestBody(
          roleName: _roleNameController.text.trim(),
          description: _descriptionController.text.trim(),
          roleCategory: _roleCategoryController.text.trim(),
        ),
      );
    } else {
      cubit.createRole(
        CreateRoleRequestBody(
          roleName: _roleNameController.text.trim(),
          description: _descriptionController.text.trim(),
          roleCategory: _roleCategoryController.text.trim(),
          isCustom: _isCustom,
        ),
      );
    }

    Navigator.pop(context);
  }
}
