import 'package:doctorq/core/utils/image_constant.dart';

class InviteFriendLocalModel {
  String? name;
  String? phoneNumber;
  String? image;
  bool? isInvite;

  InviteFriendLocalModel({
    this.name,
    this.phoneNumber,
    this.image,
    this.isInvite,
  });
}

//list of model upto 10 length

List<InviteFriendLocalModel> inviteFriendLocalList = [
  InviteFriendLocalModel(
      name: 'Adam Smith',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend1,
      isInvite: true),
  InviteFriendLocalModel(
      name: 'Robert Fox',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend2,
      isInvite: false),
  InviteFriendLocalModel(
      name: 'Adam Smith',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend1,
      isInvite: true),
  InviteFriendLocalModel(
      name: 'Adam Smith',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend1,
      isInvite: true),
  InviteFriendLocalModel(
      name: 'Robert Fox',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend2,
      isInvite: false),
  InviteFriendLocalModel(
      name: 'Adam Smith',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend1,
      isInvite: true),
  InviteFriendLocalModel(
      name: 'Robert Fox',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend2,
      isInvite: false),
  InviteFriendLocalModel(
      name: 'Adam Smith',
      phoneNumber: '+1 987 654 3210',
      image: ImageConstant.friend1,
      isInvite: true),
];
