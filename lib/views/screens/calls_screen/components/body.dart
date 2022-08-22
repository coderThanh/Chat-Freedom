import 'package:flutter/material.dart';

import '../../../../models/chat.dart';
import '../../../../models/theme_const.dart';
import '../../../widgets/avatar_active.dart';

class BodyCallsScreen extends StatelessWidget {
  const BodyCallsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: ThemeConst.padding * 2),
      itemCount: demoChatsData.length,
      itemBuilder: (context, index) {
        final bool isCallMade = index % 2 != 0 ? true : false;

        return ListTile(
          onTap: () {},
          dense: true,
          horizontalTitleGap: 15,
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.symmetric(
            horizontal: ThemeConst.padding,
            vertical: ThemeConst.padding * 0.2,
          ),
          leading: AvatarActive(
            image: demoChatsData[index].image,
            isActive: demoChatsData[index].isActive,
            imageSize: 45,
          ),
          title: Text(
            demoChatsData[index].name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                ),
            maxLines: 1,
          ),
          subtitle: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Icon(
                  isCallMade ? Icons.call_made : Icons.call_received,
                  size: 15,
                  color: isCallMade
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).errorColor,
                ),
              ),
              Opacity(
                opacity: ThemeConst.textOpacity,
                child: Text(
                  '3m ago',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
          trailing: Icon(
            isCallMade ? Icons.call : Icons.videocam,
            color: Theme.of(context).primaryColor,
          ),
        );
      },
    );
  }
}
