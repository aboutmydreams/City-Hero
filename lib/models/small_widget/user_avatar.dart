import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget userAvatar(String imgUrl, {double height}) {
  height ??= 34;
  imgUrl ??=
      "https://cdn.nlark.com/yuque/0/2020/png/164272/1583597800825-5f03a2f1-1eb6-460d-b250-96034a598f5e.png";
  // 如果不包含某些关键词 则使用压缩模式
  imgUrl = (imgUrl.contains("dingtalk") ||
          (imgUrl.contains("aliyuncs") ||
              (imgUrl.contains("alipay") ||
                  (imgUrl.contains("assets/") ||
                      (imgUrl.contains("x-oss-process"))))))
      ? imgUrl
      : imgUrl +
          "?x-oss-process=image%2Fresize%2Cm_fill%2Cw_120%2Ch_120%2Fformat%2Cpng";

  return ClipRRect(
    borderRadius: BorderRadius.circular(height / 2 + 3),
    child: Container(
      width: height,
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(128, 116, 116, 116),
            offset: Offset(0, 0),
            blurRadius: 1,
          ),
        ],
      ),
      child: ClipOval(
        child: imgUrl.contains("assets/")
            ? Image.asset(imgUrl)
            : CachedNetworkImage(
                imageUrl: imgUrl,
                placeholder: (context, url) =>
                    CircularProgressIndicator(), //Colors.white10,
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
      ),
    ),
  );
}
