import 'package:orbit/orbit.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Button(
            label: 'Show Dialog',
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  label: 'Allow',
                  onPressed: () => Navigator.pop(context),
                ),
              );
              dialog.show(context: context);
            },
          ),
          Button(
            label: 'Show Dialog',
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  label: 'Allow',
                  onPressed: () => Navigator.pop(context),
                ),
                description:
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings',
              );
              dialog.show(context: context);
            },
          ),
          Button(
            label: 'Show Dialog',
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  label: 'Allow',
                  onPressed: () => Navigator.pop(context),
                ),
                // TODO ButtonLink
                secondaryAction: Button(
                  label: 'Cancel',
                  onPressed: () => Navigator.pop(context),
                ),
                description:
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings',
              );
              dialog.show(context: context);
            },
          ),
          Button(
            label: 'Show Dialog',
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  label: 'Allow',
                  onPressed: () => Navigator.pop(context),
                ),
                // TODO ButtonLink
                secondaryAction: Button(
                  label: 'Cancel',
                  onPressed: () => Navigator.pop(context),
                ),
                illustration: Image.asset('images/illustration.png'),
                description:
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings',
              );
              dialog.show(context: context);
            },
          ),
        ],
      ),
    );
  }
}
