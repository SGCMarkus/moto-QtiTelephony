.class Lcom/qti/phone/QtiRadioProxy$WorkerHandler;
.super Landroid/os/Handler;
.source "QtiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioProxy;


# direct methods
.method public constructor <init>(Lcom/qti/phone/QtiRadioProxy;Landroid/os/Looper;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    .line 135
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxyHandler: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "EVENT_ON_QOS_PARAMETERS_CHANGED"

    .line 436
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 438
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 439
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 440
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QosParametersResult;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monQosParametersChanged(Lcom/qti/phone/QtiRadioProxy;IILcom/qti/extphone/QosParametersResult;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "EVENT_GET_QOS_PARAMETERS_RESPONSE"

    .line 427
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 429
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 430
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QosParametersResult;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mgetQosParametersResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "EVENT_GET_NETWORK_SELECTION_MODE_RESPONSE"

    .line 410
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 412
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 413
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NetworkSelectionMode;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mgetNetworkSelectionModeResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "EVENT_START_NETWORK_SELECTION_MODE_AUTOMATIC_RESPONSE"

    .line 401
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 403
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 404
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 405
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 404
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetNetworkSelectionModeAutomaticResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "EVENT_START_NETWORK_SELECTION_MODE_MANUAL_RESPONSE"

    .line 392
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 394
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 395
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 396
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 395
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetNetworkSelectionModeManualResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "EVENT_STOP_NETWORK_SCAN_RESPONSE"

    .line 384
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 386
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 387
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mstopNetworkScanResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "EVENT_NETWORK_SCAN_RESULT"

    .line 419
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 421
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 422
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanResult;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mnetworkScanResult(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/android/internal/telephony/NetworkScanResult;)V

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "EVENT_START_NETWORK_SCAN_RESPONSE"

    .line 376
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 378
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 379
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mstartNetworkScanResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    :pswitch_8
    const-string p0, "EVENT_ON_SET_NR_ULTRA_WIDEBAND_CONFIG_RESPONSE"

    .line 370
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/qti/phone/QtiRadioProxy$Result;

    goto/16 :goto_1

    :pswitch_9
    const-string v0, "EVENT_ON_MCFG_REFRESH"

    .line 363
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 365
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiMcfgRefreshInfo;

    invoke-virtual {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->sendMcfgRefreshInfo(Lcom/qti/extphone/Token;Lcom/qti/phone/QtiMcfgRefreshInfo;)V

    goto/16 :goto_1

    .line 355
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 356
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 357
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 358
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 357
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monEpdgOverCellularDataSupported(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Z)V

    goto/16 :goto_1

    .line 347
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 348
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 349
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 350
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 349
    invoke-static {p0, v0, v1, v2, v3}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDataDeactivateDelayTime(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;J)V

    goto/16 :goto_1

    .line 339
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 340
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 341
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 342
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 341
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDdsSwitchRecommendation(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    .line 331
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 332
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 333
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 334
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 333
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDdsSwitchCriteriaChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Z)V

    goto/16 :goto_1

    .line 323
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 324
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 325
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 326
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 325
    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDdsSwitchCapabilityChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto/16 :goto_1

    .line 315
    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 316
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 317
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto/16 :goto_1

    :pswitch_10
    const-string v0, "EVENT_IMEI_CHANGE_IND_INFO"

    .line 307
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 309
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 310
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiImeiInfo;

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendImeiInfoIndInternal(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/QtiImeiInfo;)V

    goto/16 :goto_1

    :pswitch_11
    const-string v0, "EVENT_GET_IMEI_RESPONSE"

    .line 298
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 300
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 301
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiImeiInfo;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendImeiInfoResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V

    goto/16 :goto_1

    :pswitch_12
    const-string v0, "EVENT_ON_SMART_DDS_SWITCH_TOGGLE_RESPONSE"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/extphone/Token;

    .line 154
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 155
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 156
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetSmartDdsSwitchToggleResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;II)V

    goto/16 :goto_1

    :pswitch_13
    const-string v0, "EVENT_SMART_DDS_SWITCH_TOGGLE"

    .line 143
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 145
    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    .line 146
    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p0, v0, v1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetDynamicSubscriptionChange(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Z)V

    goto/16 :goto_1

    :pswitch_14
    const-string v0, "EVENT_FACILITY_LOCK_RESPONSE"

    .line 291
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 293
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendfacilityLockResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[I)V

    goto/16 :goto_1

    :pswitch_15
    const-string v0, "EVENT_CALL_FORWARD_QUERY_RESPONSE"

    .line 283
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 285
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, [Lcom/qti/extphone/QtiCallForwardInfo;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendcallforwardqueryResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V

    goto/16 :goto_1

    :pswitch_16
    const-string v0, "EVENT_SEND_CARRIER_INFO_RESPONSE"

    .line 274
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 276
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 277
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QRadioResponseInfo;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetCarrierInfoForImsiEncryptionResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QRadioResponseInfo;)V

    goto/16 :goto_1

    :pswitch_17
    const-string v0, "EVENT_SEND_CDMA_SMS_RESPONSE"

    .line 265
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 267
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 268
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/SmsResult;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendCdmaSmsResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V

    goto/16 :goto_1

    :pswitch_18
    const-string v0, "EVENT_QTI_RADIO_CAPABILITY_RESPONSE"

    .line 256
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 258
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 259
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 260
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 259
    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mgetQtiRadioCapabilityResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V

    goto/16 :goto_1

    :pswitch_19
    const-string v0, "EVENT_ON_SIGNAL_STRENGTH"

    .line 247
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 250
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/SignalStrength;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monSignalStrength(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V

    goto/16 :goto_1

    :pswitch_1a
    const-string v0, "EVENT_ON_5G_CONFIG_INFO"

    .line 238
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 240
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 241
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrConfigType;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mon5gConfigInfo(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V

    goto/16 :goto_1

    :pswitch_1b
    const-string v0, "EVENT_ON_UPPER_LAYER_IND_INFO"

    .line 229
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 231
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 232
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/UpperLayerIndInfo;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monUpperLayerIndInfo(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V

    goto/16 :goto_1

    :pswitch_1c
    const-string v0, "EVENT_ON_NR_DC_PARAM"

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 222
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 223
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/DcParam;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monNrDcParam(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V

    goto/16 :goto_1

    :pswitch_1d
    const-string v0, "EVENT_ON_5G_ENABLE_STATUS"

    .line 203
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 205
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 206
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mon5gStatus(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto/16 :goto_1

    :pswitch_1e
    const-string v0, "EVENT_ON_BEARER_ALLOCATION_CHANGE_IND"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 213
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 214
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/BearerAllocationStatus;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monAnyNrBearerAllocation(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V

    goto/16 :goto_1

    :pswitch_1f
    const-string v0, "EVENT_ON_NR_CONFIG_STATUS"

    .line 194
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 196
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 197
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrConfig;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V

    goto :goto_1

    :pswitch_20
    const-string v0, "EVENT_ON_SET_NR_CONFIG"

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 188
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 189
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_1

    :pswitch_21
    const-string v0, "EVENT_ON_ENDC_STATUS"

    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 180
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 181
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monEndcStatus(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto :goto_1

    :pswitch_22
    const-string v0, "EVENT_ON_ENABLE_ENDC"

    .line 170
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 172
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 173
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monEnableEndc(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_1

    :pswitch_23
    const-string v0, "EVENT_ON_NR_ICON_TYPE"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 163
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 164
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrIconType;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monNrIconType(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
