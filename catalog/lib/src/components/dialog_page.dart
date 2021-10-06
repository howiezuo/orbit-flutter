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
            child: Text('Show Dialog'),
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  child: Text('Allow'),
                  onPressed: () => Navigator.pop(context),
                ),
              );
              dialog.show(context: context);
            },
          ),
          Button(
            child: Text('Show Dialog (with description)'),
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  child: Text('Allow'),
                  onPressed: () => Navigator.pop(context),
                ),
                description:
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings',
              );
              dialog.show(context: context);
            },
          ),
          Button(
            child: Text('Show Dialog (two buttons)'),
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  child: Text('Allow'),
                  onPressed: () => Navigator.pop(context),
                ),
                // TODO ButtonLink
                secondaryAction: Button(
                  child: Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                ),
                description:
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings',
              );
              dialog.show(context: context);
            },
          ),
          Button(
            child: Text('Show Dialog (with image)'),
            onPressed: () {
              final dialog = Dialog(
                title: 'Kiwi.com would like to send you notifications.',
                primaryAction: Button(
                  child: Text('Allow'),
                  onPressed: () => Navigator.pop(context),
                ),
                // TODO ButtonLink
                secondaryAction: Button(
                  child: Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                ),
                illustration: Image.asset('images/illustration.png'),
                description:
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings',
              );
              dialog.show(context: context);
            },
          ),
          Button(
            child: Text('Show Dialog (three dialogs)'),
            onPressed: () {
              final dialog = Dialog.actions(
                title: 'Kiwi.com would like to send you notifications.',
                actions: [
                  Button(
                    child: Text('Allow'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  // TODO ButtonLink
                  Button(
                    child: Text('Setting'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  // TODO ButtonLink
                  Button(
                    child: Text('Cancel'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
                illustration: Image.asset('images/illustration.png'),
                description:
                    'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings',
              );
              dialog.show(context: context);
            },
          ),
          Button(
            child: Text('Show Dialog (error)'),
            type: ButtonType.critical,
            onPressed: () {
              final dialog = Dialog(
                title: 'Do you really want to delete your account?',
                primaryAction: Button(
                  child: Text('Delete'),
                  onPressed: () => Navigator.pop(context),
                  type: ButtonType.critical,
                ),
                // TODO ButtonLink
                secondaryAction: Button(
                  child: Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                  type: ButtonType.critical,
                ),
                illustration: Image.asset('images/error.png'),
                description:
                    'This action is irreversible, once you delete your account, it\'s gone. It will not affect any bookings in progress.',
              );
              dialog.show(context: context);
            },
          ),
        ],
      ),
    );
  }
}
