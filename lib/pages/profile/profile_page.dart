import 'package:digital_sport/helpers/color_style.dart';
import 'package:digital_sport/helpers/layout_style.dart';
import 'package:digital_sport/helpers/text_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget _headers(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.40,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            color: ColorApp.colorPrimary,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logoes/logo1.png',
                    height: 75,
                  ),
                  Image.asset(
                    'assets/logoes/logo 2.png',
                    height: 30,
                  ),
                  Image.asset(
                    'assets/logoes/logo 3.png',
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: LayoutMargin.marginHorizontal20,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white, width: 1.5),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        'https://i.stack.imgur.com/l60Hf.png',
                        height: 90,
                        width: 90,
                        fit: BoxFit.fill,
                        errorBuilder: (context, _, __) {
                          return Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                                color: Colors.white,
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://i.stack.imgur.com/l60Hf.png'),
                                    fit: BoxFit.fill)),
                          );
                        },
                      ),
                    ),
                  ),
                  FlatButton(
                    height: 26,
                    minWidth: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    onPressed: () async {},
                    color: ColorApp.colorSecondary2.withOpacity(0.4),
                    child: Text('Logout',
                        style: TextSetting.p2.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: ColorApp.colorSecondary2)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _desciptionProfil() {
    return Padding(
      padding: LayoutMargin.marginHorizontal20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amril Rismanto Ichsan',
            style: TextSetting.h1.copyWith(fontWeight: FontWeight.w600),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: ColorApp.colorPrimary),
            child: Text(
              'Anggota Aktif',
              style: TextSetting.p2
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget _formProfileButton() {
    return Padding(
      padding: LayoutMargin.marginHorizontal20,
      child: Column(
        children: [
          FlatButton(
              padding: const EdgeInsets.only(bottom: 10),
              onPressed: () {},
              child: Row(children: [
                Image.asset(
                  'assets/icons/edit_profil.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 30),
                Text(
                  'Edit profil',
                  style: TextSetting.p2.copyWith(
                    fontSize: 12,
                    color: ColorApp.txColorPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward,
                    size: 12, color: ColorApp.txColorsecondary)
              ])),
          FlatButton(
              padding: const EdgeInsets.symmetric(vertical: 10),
              onPressed: () {},
              child: Row(children: [
                Image.asset(
                  'assets/icons/edit_password.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 30),
                Text(
                  'Ubah Katasandi',
                  style: TextSetting.p2.copyWith(
                    fontSize: 12,
                    color: ColorApp.txColorPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward,
                    size: 12, color: ColorApp.txColorsecondary)
              ])),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(children: [
                Image.asset(
                  'assets/icons/version.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 30),
                Text(
                  'EMA Mobile ',
                  style: TextSetting.p2.copyWith(
                    fontSize: 12,
                    color: ColorApp.txColorPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  'v 1.0.2',
                  style: TextSetting.p2.copyWith(
                    fontSize: 12,
                    color: ColorApp.txColorPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ])),
          FlatButton(
              padding: const EdgeInsets.symmetric(vertical: 10),
              onPressed: () {},
              child: Row(children: [
                Image.asset(
                  'assets/icons/info.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 30),
                Text(
                  'Tentang EMA',
                  style: TextSetting.p2.copyWith(
                    fontSize: 12,
                    color: ColorApp.txColorPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward,
                    size: 12, color: ColorApp.txColorsecondary)
              ])),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _headers(context),
          const SizedBox(
            height: 20,
          ),
          _desciptionProfil(),
          const SizedBox(
            height: 20,
          ),
          _formProfileButton(),
        ],
      ),
    );
  }
}