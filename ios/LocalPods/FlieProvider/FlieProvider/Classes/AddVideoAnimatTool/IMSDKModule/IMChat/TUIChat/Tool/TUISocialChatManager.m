//
//  TUISocialChatManager.m

#import "TUISocialChatManager.h"
#import "V2TIMManager+Message.h"
#import <YYCategories/YYCategories.h>
#import "FlieProvider/FlieProvider-Swift.h"

@interface TUISocialChatManager ()

@end

@implementation TUISocialChatManager


/// 获取消息插入的时间戳
+ (long long)getMessageInsertTime {
    long long timeStamp = 0;
    NSTimeInterval curDate = [[NSDate date] timeIntervalSince1970];
    long long msInterval = floor(curDate * 1000);
    long long deltaTime = [[V2TIMManager sharedInstance] getServerTime]; //秒为单位
    if (deltaTime < 1) {
        deltaTime = 0;
    }
    timeStamp = msInterval - deltaTime;
    return timeStamp;
}

- (long long)getMessageInsertTime {
    return [self.class getMessageInsertTime];
}

#pragma mark - 腾讯IM

/*!腾讯IM消息插入*/
+ (TUIMessageCellData *)insertTXMessageModelWithExtral:(NSDictionary *)extral
                                                 toUid:(NSString *)toUid
                                              isSender:(BOOL)isSend
                                                 isTip:(BOOL)isTip{
    TUIMessageCellData *data = [TUISocialChatManager handleTXMessageSendModelWithExtral:extral isSender:isSend isTip:isTip];
    if (data != nil) {
        [[HiddenConversationListener shared] priveteSendAtTargetId:toUid msgCellData:data isPrivete:YES];
    }
    return data;
}

/// 腾讯IM发送消息组装
/// - Parameters:
///   - extral: 字典数据
///   - isSend: 是否发送方
///   - isTip: 是否提示
+ (TUIMessageCellData *)handleTXMessageSendModelWithExtral:(NSDictionary *)extral
                                                  isSender:(BOOL)isSend
                                                     isTip:(BOOL)isTip {
    if (isTip) {
        NSMutableDictionary *extralDict = [NSMutableDictionary dictionaryWithDictionary:extral];
        extralDict[@"msgType"] = @"tips";
        NSDictionary *extraDict = @{@"extra":extralDict};
        NSString *extra = [extraDict jsonStringEncoded];
        AddCellData *data = [[AddCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        NSData *cData = [extra dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        data.innerMessage.isExcludedFromLastMessage = YES;
        LockModel *model = [[LockModel alloc]init];
        EqualModel *tipModel = [EqualModel modelWithDic:extralDict];
        model.tips = tipModel;
        data.msgModel = model;
        return data;
    }
    
    NSMutableDictionary *tempDict = [NSMutableDictionary dictionaryWithDictionary:extral];
    NSDictionary *msgInfo = extral[@"msgInfo"];
    tempDict[@"user"] = @{
        @"uid":IndexStyleAppManager.share.loginUserMode.userID,
        @"nickname":IndexStyleAppManager.share.loginUserMode.nickname,
        @"headPic":IndexStyleAppManager.share.loginUserMode.headPic,
        @"age":IndexStyleAppManager.share.loginUserMode.age
    };
    
    extral = [tempDict copy];
    NSDictionary *extraDict = @{@"extra":extral};
    NSString *extraString = [extraDict jsonStringEncoded];
    
    // 礼物
    if ([msgInfo[@"msgType"] isEqualToString:@"gift"]) {
        TUIMessageCellData *data = nil;
        if ([msgInfo[@"isGroup"] isEqualToString:@"1"]) { // 群聊
            data = [[KeyCompartmentCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        } else {
            data = [[CellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        }
        
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        
        return data;
    }
    
    // 索要礼物
    if ([msgInfo[@"msgType"] isEqualToString:@"WantGift"]) {
        TUIMessageCellData *data = nil;
        data = [[GrantCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        
        return data;
    }
    
    // 文字
    if ([msgInfo[@"msgType"] isEqualToString:@"txt"]) {
        TUIMessageCellData *data = nil;
        if ([msgInfo[@"isGroup"] isEqualToString:@"1"]) { // 群聊
            data = [[PresentationCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        } else {
            data = [[BackgroundLabelCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        }
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        
        return data;
    }
    
    // 图片
    if ([msgInfo[@"msgType"] isEqualToString:@"img"]) {
        TalkingManagerCollectionCellData *data = [[TalkingManagerCollectionCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        
        return data;
    }
    
    // 视频
    if ([msgInfo[@"msgType"] isEqualToString:@"video"]) {
        TalkingCellData *data = [[TalkingCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        
        return data;
    }
    
    // 语音
    if ([msgInfo[@"msgType"] isEqualToString:@"audio"]) {
        ClearCellData *data = [[ClearCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        return data;
    }

    // 打招呼
    if (extral[@"gift"] != nil && [msgInfo[@"messageType"] integerValue] == 4) {
        BackgroundLabelCellData *data = [[BackgroundLabelCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        
        return data;
    }

    if ([msgInfo[@"msgType"] isEqualToString:@"map"]) {
        TUIMessageCellData *data = nil;
        data = [[HiddenCellData alloc] initWithDirection:isSend? MsgDirectionOutgoing:MsgDirectionIncoming];
        NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
        data.innerMessage = [[V2TIMManager sharedInstance] createCustomMessage:cData];
        LockModel *model = [LockModel modelWithDic:extral];
        data.msgModel = model;
        return data;
    }
    
    return nil;
}

/*!腾讯IM重发消息组装 （只有私聊在用）*/
+ (TUIMessageCellData *)handleTXMessageReSendModelWithData:(TUIMessageCellData *)cellData {
    // 图片
    if ([cellData isKindOfClass:[TalkingManagerCollectionCellData class]]) {
        TalkingManagerCollectionCellData *reCellData = (TalkingManagerCollectionCellData *)cellData;
        NSArray *path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        NSString *filePath = [path objectAtIndex:0];
        filePath = [filePath stringByAppendingPathComponent:[OverdoReactiveCompatible accumulationName]];
        filePath = [filePath stringByAppendingPathComponent:[reCellData.imageUrl lastPathComponent]];
        
        if ([[NSFileManager defaultManager] fileExistsAtPath:filePath] == NO) {
            return nil;
        }
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        NSMutableDictionary *msgInfo = [NSMutableDictionary dictionary];
        [msgInfo setObject:@"ImgMsg" forKey:@"contentType"];
        [msgInfo setObject:@"img" forKey:@"msgType"];
        [msgInfo setObject:filePath forKey:@"imageUri"];
        [dic setObject:msgInfo forKey:@"msgInfo"];
        
        [params setObject:@"ImgMsg" forKey:@"type"];
        [params setObject:filePath forKey:@"pic"];
        // 重发私密照片
        if (reCellData.msgModel.msgInfo.customSend.isBurn != nil &&  reCellData.msgModel.msgInfo.customSend.isBurn.length > 0) {
            [params setObject:reCellData.msgModel.msgInfo.customSend.isBurn forKey:@"isBurn"];
        }else{
            [params setObject:@"0" forKey:@"isBurn"];

        }
        if (reCellData.msgModel.msgInfo.customSend.giftId != nil && reCellData.msgModel.msgInfo.customSend.giftId.length > 0) {
            [params setObject:reCellData.msgModel.msgInfo.customSend.giftId forKey:@"giftId"];
        }else{
            [params setObject:@"0" forKey:@"giftId"];
        }
        
        [dic setObject:params forKey:@"params"];
        
        TUIMessageCellData *data = [TUISocialChatManager handleTXMessageSendModelWithExtral:dic isSender:YES isTip:NO];
        data.status = Msg_Status_Fail;
        
        return data;
    }
    
    // 视频
    if ([cellData isKindOfClass:[TalkingCellData class]]) {
        TalkingCellData *reCellData = (TalkingCellData *)cellData;
        reCellData.status = Msg_Status_Fail;

        return reCellData;
    }
    
    // 语音
    if ([cellData isKindOfClass:[ClearCellData class]]) {
        ClearCellData *reCellData = (ClearCellData *)cellData;
        QualityMsgTable *voiceModel = [AddInfoManager mapStreamWithMessage:reCellData.innerMessage];
        NSMutableDictionary * dic = [NSMutableDictionary dictionary];

        NSMutableDictionary *msgInfo   = [NSMutableDictionary dictionary];
        NSMutableDictionary *params = [NSMutableDictionary dictionary];

        if (voiceModel.db_audioLength.length > 0) {
            [msgInfo setObject:voiceModel.db_audioLength forKey:@"audioLength"];
            [params setObject:voiceModel.db_audioLength forKey:@"len"];
        }
        if (voiceModel.db_filePath.length > 0) {
            [msgInfo setObject:voiceModel.db_filePath forKey:@"audioSandbox"];
            [params setObject:voiceModel.db_filePath forKey:@"audioSandbox"];
        }
        [msgInfo setObject:@"audio" forKey:@"msgType"];
        [msgInfo setObject:IndexStyleAppManager.share.loginUserMode.userID forKey:@"senderId"];
        [dic setObject:msgInfo forKey:@"msgInfo"];
        
        [params setObject:@"AudioMsg" forKey:@"type"];
        
        [dic setObject:params forKey:@"params"];

        TUIMessageCellData *data = [TUISocialChatManager handleTXMessageSendModelWithExtral:dic isSender:YES isTip:NO];
        data.status = Msg_Status_Fail;
        
        return data;
    }
    
    // 文本
    if ([cellData isKindOfClass:[BackgroundLabelCellData class]]) {
        BackgroundLabelCellData *reCellData = (BackgroundLabelCellData *)cellData;
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        {
            NSMutableDictionary * msgInfo = [NSMutableDictionary dictionary];
            [msgInfo setObject:reCellData.contentStr?:@"" forKey:@"content"];
            [msgInfo setObject:@"txt" forKey:@"msgType"];
            [dic setObject:msgInfo forKey:@"msgInfo"];
            [params setObject:@"TxtMsg" forKey:@"type"];
            [params setObject:reCellData.contentStr?:@"" forKey:@"message"];
            
            if (reCellData.msgModel.quoteMsgInfo.key) { // 引用消息重发
                [params setObject:reCellData.msgModel.quoteMsgInfo.msgId forKey:@"quoteMsgId"];
                [dic setObject:reCellData.msgModel.quoteMsgInfo.toDictionary forKey:@"quoteMsgInfo"];
            }
            [dic setObject:params forKey:@"params"];
        }

        TUIMessageCellData *data = [TUISocialChatManager handleTXMessageSendModelWithExtral:dic isSender:YES isTip:NO];
        data.status = Msg_Status_Fail;
        
        return data;
    }
    if ([cellData isKindOfClass:[HiddenCellData class]]) {
        HiddenCellData *reCellData = (HiddenCellData *)cellData;
        
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        NSMutableDictionary *msgInfo = [NSMutableDictionary dictionary];
        [msgInfo setObject:@"ImgMsg" forKey:@"contentType"];
        [msgInfo setObject:@"map" forKey:@"msgType"];
        [msgInfo setObject:[NSNumber numberWithInt:28] forKey:@"messageType"];

        [msgInfo setObject:reCellData.msgModel.msgInfo.latlon forKey:@"latlon"];

        [dic setObject:msgInfo forKey:@"msgInfo"];
        
        // 重发位置信息
        [params setObject:@"MapMsg" forKey:@"type"];
        [params setObject:reCellData.msgModel.msgInfo.latlon forKey:@"latlon"];
        [dic setObject:params forKey:@"params"];
        
        TUIMessageCellData *data = [TUISocialChatManager handleTXMessageSendModelWithExtral:dic isSender:YES isTip:NO];
        data.status = Msg_Status_Fail;
        
        return data;
    }
    return nil;
}

+ (TUIMessageCellData *)handleTXReceiveMessageModelWithExtral:(NSDictionary*)dic
                                                      cusData:(NSData *)data
                                                    tempModel:(V2TIMMessage *)tempModel {
    TUIMessageCellData *cellData;
    NSMutableDictionary *msgInfo = [NSMutableDictionary dictionaryWithDictionary:dic[@"extra"][@"msgInfo"]];
    NSDictionary *user = dic[@"user"];
    //对方id
    NSString *uid = msgInfo[@"uid"];
    if ([user[@"id"] integerValue] != IndexStyleAppManager.share.loginUserMode.userID.integerValue) {
        uid = user[@"id"];
    }
    
    LockModel *model = [LockModel modelWithDic:dic[@"extra"]];
    BOOL isSelf = (model.user.uid == IndexStyleAppManager.share.loginUserMode.userID.integerValue);
    
    //后台代发送的自动打招呼消息
    BOOL isAutoSendMsg = NO;
    if (model.msgInfo.uid.integerValue == IndexStyleAppManager.share.loginUserMode.userID.integerValue && model.msgInfo.messageType == 3) {
        isSelf = YES;
        isAutoSendMsg = YES;
    }
    
    if ([dic[@"rYMsgType"] isEqualToString:@"GJ:Sess:AutoGreet:TxtCustom"]) {
        isSelf = [msgInfo[@"changeDirection"] boolValue];
    }
    
    TXMessageContentType contenType = [TUISocialChatManager messageCellType:dic];
    if ([dic[@"extra"][@"msgType"] isEqualToString:@"system"] || contenType == TXMessageContentType_tips) {
        LockModel *model = [[LockModel alloc]init];
        EqualModel *tipModel = [EqualModel modelWithDic:dic[@"extra"]];
        cellData = [[AddCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        if (dic[@"content"]) {
            tipModel.content = dic[@"content"];
        }
        model.tips = tipModel;
        cellData.msgModel = model;
        
        return cellData;
    }
    
    if (contenType == TXMessageContentType_picture) {
        cellData = [[TalkingManagerCollectionCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        
    } else if (contenType == TXMessageContentType_video) {
        cellData = [[TalkingCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        
    } else if(contenType == TXMessageContentType_gift) {
        if (tempModel.groupID != nil && tempModel.groupID.length > 0) { // 群聊gift
            cellData = [[KeyCompartmentCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        } else { // 私聊gift
            cellData = [[CellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        }
        
    } else if(contenType == TXMessageContentType_askforGift) { // 索要礼物
        /// 本地有修改送礼状态时
        NSMutableDictionary *tempDic  = [[NSMutableDictionary alloc]initWithDictionary:[TUIMsgChatManager parseTXMessageDataWithData:data]];
        NSDictionary*  msgInfo = tempDic[@"extra"][@"msgInfo"];
        cellData = [[GrantCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        if (msgInfo.allKeys.count > 0) {
            model.msgInfo = [ModeJsonModel modelWithDic:msgInfo];
        }
        cellData.msgModel = model;
        
    } else if (contenType == TXMessageContentType_voice) {
        cellData = [[ClearCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        ClearCellData *audioCellData = (ClearCellData *)cellData;
        if (audioCellData.voiceModel.db_voiceCacheWrap.msgId.length == 0) {
            NSString *mainKey = [TUISocialChatManager checkPrimaryKeyWithMsgModel: tempModel];
            QualityMsgTable *cacheWrap = [QualityMsgTable ofRecordWith:mainKey];
            if (!cacheWrap) {
                QualityMsgTable *wrap = [QualityMsgTable equidistantModel:[TUISocialChatManager packageDictWithTXMessage:tempModel]];
                audioCellData.voiceModel.db_voiceCacheWrap = wrap;
            } else {
                audioCellData.voiceModel.db_voiceCacheWrap = cacheWrap;
            }
        }
        
    } else if (contenType == TXMessageContentType_local) {
        cellData = [[ViewCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        
    }else if (contenType == TXMessageContentType_map) {
        cellData = [[HiddenCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        
    } else {
        if ([dic[@"extra"][@"title"] length] > 0 ||
            [dic[@"extra"][@"content"] length] > 0 ||
            [dic[@"extra"][@"img"] length] > 0) { // 系统新消息
            cellData = [[StepSequenceThen alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
            cellData.extraDict = dic[@"extra"];
            
        } else if (tempModel.groupID != nil && tempModel.groupID.length > 0) { // 群聊text
            cellData = [[PresentationCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        } else { // 私聊text
            cellData = [[BackgroundLabelCellData alloc] initWithDirection:(isSelf ? MsgDirectionOutgoing : MsgDirectionIncoming)];
        }
    }
    
    if (model.user == nil) {
        
        NSMutableDictionary *extraDict = [NSMutableDictionary dictionaryWithDictionary:dic[@"extra"]];
        NSMutableDictionary *userDict = [NSMutableDictionary dictionaryWithDictionary:dic[@"user"]];
        [userDict addEntriesFromDictionary:extraDict[@"msgInfo"]];
        
        ScaleModel *user = [ScaleModel modelWithDic:userDict];
        
        
        if (user.uid == 0) {
            user.uid = [userDict[@"id"] intValue];
        }
        if (user.headPic.length == 0) {
            user.headPic = userDict[@"icon"];
        }
        
        if (isAutoSendMsg) {
            user.uid = model.msgInfo.toUid.intValue;
            user.headPic = IndexStyleAppManager.share.loginUserMode.headPic;
        }
        model.user = user;
    }
    if (model.msgInfo == nil) {
        NSMutableDictionary *extraDict = [NSMutableDictionary dictionaryWithDictionary:dic[@"extra"]];
        ModeJsonModel *msgInfo = [[ModeJsonModel alloc]init];
        msgInfo.content = dic[@"content"];
        msgInfo.jumps = extraDict[@"extra"];
        model.msgInfo = msgInfo;
    }
    
    /// 聊天室送礼消息
    if(contenType == TXMessageContentType_gift && tempModel.groupID != nil && tempModel.groupID.length > 0) {
        if (model.toUser == nil) { // 送礼所有人
            ToModel *toUserInfo = [[ToModel alloc]init];
            toUserInfo.uid = @"all";
            toUserInfo.nickname = model.gift.sendNum;
            toUserInfo.headPic = @"icon_chats_pcr";
            model.toUser = toUserInfo;
        }
    }
    cellData.msgModel = model;
    
    // 本地自定义字段处理
    NSString *customStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSDictionary *customDic = [NSDictionary dictionaryWithJsonString:customStr];
    TMsgStatus status = [customDic[@"status"] integerValue];
    cellData.status = status;
    cellData.msgIncome = [customDic[@"msgIncome"] floatValue];
    cellData.messageType = [msgInfo[@"messageType"] integerValue];
    if ([customDic objectForKey:@"msgId"]) {
        cellData.msgModel.msgInfo.msgId = customDic[@"msgId"];
    }
    
    // 文本翻译
    if ([customDic objectForKey:@"TMsgTranslateStatus"]) {
        cellData.translateStatus = [customDic[@"TMsgTranslateStatus"] integerValue];
    }
    if ([customDic objectForKey:@"TMsgTranslatedContent"]) {
        cellData.translatedContent = customDic[@"TMsgTranslatedContent"];
    }
    
    // 私密照片Cache
    if (contenType == TXMessageContentType_picture) {
        NSDictionary *dict = [OverrideModel quote];
        if ([dict objectForKey:tempModel.msgID]) {
            cellData.msgModel.msgInfo.intimatePhoto = [[OverrideModel alloc] initWithString:dict[tempModel.msgID] error:nil];
        }
    }
    
    // 私密视频Cache
    if (contenType == TXMessageContentType_video) {
        NSDictionary *dict = [ChiaroscuroModel underEffect];
        if ([dict objectForKey:tempModel.msgID]) {
            cellData.msgModel.msgInfo.video = [[ChiaroscuroModel alloc] initWithString:dict[tempModel.msgID] error:nil];
        }
    }
    
    // 索要礼物Cache
    if (contenType == TXMessageContentType_askforGift) {
        NSArray *arr = [AcceptJsonModel gallery];
        if ([arr containsObject:tempModel.msgID]) { // 已发送
            cellData.msgModel.msgInfo.wantGift.sendStatus = 1;
        }
    }
    
    return cellData;
}

+ (TXMessageContentType )messageCellType:(NSDictionary *)extraDic {
    /** 1.文本 2.图片 3.礼物 4.语音 5.动态 6.同城 7.tips 8.动态评论 9.用户信息卡 */
    NSDictionary *dic = extraDic[@"extra"];
    NSDictionary *msgInfo = dic[@"msgInfo"];
    LockModel *model = [LockModel modelWithDic:dic];
    
    /** 系统消息  官方小密*/
    if ([dic[@"formatType"] isEqualToString:@"plain"]) {
        NSString *imageUri = dic[@"imageUri"];
        NSString *imageData = dic[@"imageData"];
        BOOL isImageStyle = imageData.length || imageUri.length;
        if (isImageStyle) {
            return TXMessageContentType_picture;
        }
    }
    
    // 图片||私密照片
    if (model.msgInfo.imageUri.length || model.msgInfo.imageData.length || model.msgInfo.intimatePhoto != nil) {
        return TXMessageContentType_picture;
    }
    
    // 接收的视频消息 || 本人发送的视频消息
    if (model.msgInfo.video != nil || [model.msgInfo.contentType isEqualToString:@"VideoMsg"]) {
        return TXMessageContentType_video;
    }
    
    // 礼物，非打招呼消息
    if (model.gift != nil &&
        model.msgInfo.messageType != 4) {
        return TXMessageContentType_gift;
    }
    BOOL isVoiceStyle = [TUIMsgChatManager checkVoiceMsgWithMsginfo:dic[@"msgInfo"]];
    if (isVoiceStyle) {
        return TXMessageContentType_voice;
    }
    
    if ([dic[@"match"] integerValue] == 1 || [msgInfo[@"match"]integerValue] == 1) {
        // 匹配消息
        return TXMessageContentType_local;
    }
    
    if ([dic[@"msgType"] isEqualToString:@"tips"] || [dic[@"messageType"] integerValue] == 17) {
        //提示消息,包含超时未回复
        return TXMessageContentType_tips;
    }
    
    if (([dic[@"formatType"] isEqualToString:@"mf"]) &&
         ([dic[@"messageType"] integerValue] == 15 || [dic[@"messageType"] integerValue] == 16)) {
        //提示消息，打招呼提示送出神秘礼物,对方设置价格消息提示
        return TXMessageContentType_tips;
    }
    
    if ([dic[@"msgType"] isEqualToString:@"userIntro"]) {
        return TXMessageContentType_userCard;
    }
    if ([msgInfo[@"msgType"] isEqualToString:@"WantGift"] || [msgInfo[@"messageType"]integerValue] == 25 ) {
        return TXMessageContentType_askforGift;
    }
    if ([msgInfo[@"msgType"] isEqualToString:@"map"] || [msgInfo[@"messageType"]integerValue] == 28) {
        return TXMessageContentType_map;
    }
    return TXMessageContentType_text;
}


#pragma mark - 语音消息

///从TX的model里提取参数
+ (NSDictionary *)packageDictWithTXMessage:(V2TIMMessage *)message {
    NSString *extra = [[NSString alloc]initWithData:message.customElem.data encoding:NSUTF8StringEncoding];
    NSDictionary *dic = [NSDictionary dictionaryWithJsonString:extra];
    NSDictionary *msgInfo = dic[@"extra"][@"msgInfo"];
    NSDictionary *user = dic[@"extra"][@"user"];
    NSString *senderId = msgInfo[@"senderId"];
    
    //腾讯传输的用户id，有几率是NSNumber，DB存的是字符串会崩溃
    NSMutableDictionary *info = [NSMutableDictionary dictionaryWithDictionary:msgInfo];
    
    //自己发送的和接收的数据结构不一样
    if ([senderId isEqualToString:IndexStyleAppManager.share.loginUserMode.userID]) {
        info[@"senderId"] = senderId;
        info[@"targetId"] = [NSString stringWithFormat:@"%@",message.userID?:user[@"targetId"]];
    } else {
        info[@"senderId"] = @([msgInfo[@"uid"] integerValue]).description;
        info[@"targetId"] = @([msgInfo[@"uid"] integerValue]).description;
    }
    if ([msgInfo.allKeys containsObject:@"msgId"]) {
        info[@"msgId"] = [NSString stringWithFormat:@"%@",msgInfo[@"msgId"]];
    }else{
        
        NSString *customStr = [[NSString alloc]initWithData:message.localCustomData encoding:NSUTF8StringEncoding];
        NSDictionary *customDic  = [NSDictionary dictionaryWithJsonString:customStr];
        if (customDic && [customDic.allKeys containsObject:@"msgId"]) {
            info[@"msgId"] = [NSString stringWithFormat:@"%@",customDic[@"msgId"]];
        }else{
            NSString *txMsgId = (message.msgID != nil && message.msgID.length>0)?message.msgID : [NSString stringWithFormat:@"%lld",[[NSDate date] timeIntervalSince1970]];
            info[@"msgId"] = txMsgId;
        }
    }
    if ([msgInfo.allKeys containsObject:@"audioSandbox"]) {
        info[@"audioSandbox"] = [NSString stringWithFormat:@"%@",msgInfo[@"audioSandbox"]];
    }
    if ([msgInfo.allKeys containsObject:@"audioLength"]) {
        info[@"audioLength"] = [NSString stringWithFormat:@"%@",msgInfo[@"audioLength"]];
    }
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    info[@"sendTime"] = [formatter stringFromDate:message.timestamp];
    info[@"isRead"] = [NSString stringWithFormat:@"%d",[senderId isEqualToString:IndexStyleAppManager.share.loginUserMode.userID]];
    return [info copy];
}


+ (NSString *)checkPrimaryKeyWithMsgModel:(V2TIMMessage *)tempModel {
    V2TIMMessage *messageModel = tempModel;
    NSDictionary *v2Info = [TUISocialChatManager packageDictWithTXMessage:messageModel];
    NSString *key = [NSString stringWithFormat:@"%@",v2Info[@"msgId"]];
    NSLog(@"key = %@",key);
    return key;
}


@end
