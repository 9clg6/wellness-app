import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';

/// Privacy policy screen
@RoutePage()
class PrivacyPolicyScreen extends StatelessWidget {
  /// Constructor
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.privacy_policy_title.tr())),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              LocaleKeys.privacy_policy_title.tr(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Text(
              LocaleKeys.privacy_policy_last_updated.tr(),
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_introduction_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_introduction_content_1.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_introduction_content_2.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_introduction_content_3.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_information_collection_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildSubSectionTitle(
              context,
              LocaleKeys
                  .privacy_policy_information_collection_user_provided_title
                  .tr(),
            ),
            _buildParagraph(
              context,
              LocaleKeys
                  .privacy_policy_information_collection_user_provided_content
                  .tr(),
            ),
            const SizedBox(height: 8),
            _buildSubSectionTitle(
              context,
              LocaleKeys.privacy_policy_information_collection_usage_data_title
                  .tr(),
            ),
            _buildParagraph(
              context,
              LocaleKeys
                  .privacy_policy_information_collection_usage_data_content
                  .tr(),
            ),
            const SizedBox(height: 8),
            _buildSubSectionTitle(
              context,
              LocaleKeys.privacy_policy_data_title.tr(),
            ),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_data_content.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_data_usage_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_data_usage_list_1.tr(),
            ),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_data_usage_list_2.tr(),
            ),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_data_usage_list_3.tr(),
            ),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_data_usage_list_4.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_data_sharing_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_data_sharing_content.tr(),
            ),
            const SizedBox(height: 8),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_data_sharing_list_1.tr(),
            ),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_data_sharing_list_2.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_storage_security_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_storage_security_content_1.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_storage_security_content_2.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_storage_security_content_3.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_your_rights_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_your_rights_content.tr(),
            ),
            const SizedBox(height: 8),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_your_rights_list_1.tr(),
            ),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_your_rights_list_2.tr(),
            ),
            _buildListItem(
              context,
              LocaleKeys.privacy_policy_your_rights_list_3.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_your_rights_contact.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_sensitive_data_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_sensitive_data_content.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_children_data_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_children_data_content_1.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_children_data_content_2.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_policy_changes_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_policy_changes_content.tr(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(
              context,
              LocaleKeys.privacy_policy_contact_title.tr(),
            ),
            const SizedBox(height: 8),
            _buildParagraph(
              context,
              LocaleKeys.privacy_policy_contact_content.tr(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Text(text, style: Theme.of(context).textTheme.titleLarge);
  }

  Widget _buildSubSectionTitle(BuildContext context, String text) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }

  Widget _buildParagraph(BuildContext context, String text) {
    return Text(text, style: Theme.of(context).textTheme.bodyLarge);
  }

  Widget _buildListItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('• ', style: Theme.of(context).textTheme.bodyLarge),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
