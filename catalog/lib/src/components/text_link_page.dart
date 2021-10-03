import 'package:orbit/orbit.dart';

class TextLinkPage extends StatelessWidget {
  const TextLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _coloredTextLinks(true, false, TextLinkSize.normal),
                ),
                Expanded(
                  child: _coloredTextLinks(false, false, TextLinkSize.normal),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _coloredTextLinks(true, true, TextLinkSize.normal),
                ),
                Expanded(
                  child: _coloredTextLinks(false, true, TextLinkSize.normal),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _coloredTextLinks(true, false, TextLinkSize.large),
                ),
                Expanded(
                  child: _coloredTextLinks(false, false, TextLinkSize.large),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _coloredTextLinks(true, true, TextLinkSize.large),
                ),
                Expanded(
                  child: _coloredTextLinks(false, true, TextLinkSize.large),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _coloredTextLinks(
      bool showUnderline, bool showIcon, TextLinkSize size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLink(
          'Primary link',
          onTap: () => {},
          noUnderline: !showUnderline,
          showIcon: showIcon,
          size: size,
        ),
        TextLink(
          'Secondary link',
          onTap: () => {},
          type: TextLinkType.secondary,
          noUnderline: !showUnderline,
          showIcon: showIcon,
          size: size,
        ),
        TextLink(
          'Info link',
          onTap: () => {},
          type: TextLinkType.info,
          noUnderline: !showUnderline,
          showIcon: showIcon,
          size: size,
        ),
        TextLink(
          'Success link',
          onTap: () => {},
          type: TextLinkType.success,
          noUnderline: !showUnderline,
          showIcon: showIcon,
          size: size,
        ),
        TextLink(
          'Warning link',
          onTap: () => {},
          type: TextLinkType.warning,
          noUnderline: !showUnderline,
          showIcon: showIcon,
          size: size,
        ),
        TextLink(
          'Critical link',
          onTap: () => {},
          type: TextLinkType.critical,
          noUnderline: !showUnderline,
          showIcon: showIcon,
          size: size,
        ),
      ],
    );
  }
}
