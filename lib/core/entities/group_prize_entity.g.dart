// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_prize_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupStandPrizeEntityImpl _$$GroupStandPrizeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupStandPrizeEntityImpl(
      lottery:
          LotteryEntity.fromJson(json['lotteries'] as Map<String, dynamic>),
      quinielaFirstPrize: json['quiniela_first_prize'] as num,
      quinielaSecondPrize: json['quiniela_second_prize'] as num,
      quinielaThirdPrize: json['quiniela_third_prize'] as num,
      paleFirstSecondPrize: json['pale_first_second_prize'] as num,
      paleFirstThirdPrize: json['pale_first_third_prize'] as num,
      paleSecondThirdPrize: json['pale_second_third_prize'] as num,
      tripletaPrize: json['tripleta_prize'] as num,
    );

Map<String, dynamic> _$$GroupStandPrizeEntityImplToJson(
        _$GroupStandPrizeEntityImpl instance) =>
    <String, dynamic>{
      'lotteries': instance.lottery,
      'quiniela_first_prize': instance.quinielaFirstPrize,
      'quiniela_second_prize': instance.quinielaSecondPrize,
      'quiniela_third_prize': instance.quinielaThirdPrize,
      'pale_first_second_prize': instance.paleFirstSecondPrize,
      'pale_first_third_prize': instance.paleFirstThirdPrize,
      'pale_second_third_prize': instance.paleSecondThirdPrize,
      'tripleta_prize': instance.tripletaPrize,
    };
