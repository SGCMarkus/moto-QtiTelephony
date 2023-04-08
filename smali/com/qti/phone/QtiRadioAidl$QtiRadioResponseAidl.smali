.class Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;
.super Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse$Stub;
.source "QtiRadioAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QtiRadioResponseAidl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioAidl;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioAidl;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)V
    .locals 4

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardStatusResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 402
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 403
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 404
    invoke-static {v3, p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHidlCallForwardInfo2Aidl(Lcom/qti/phone/QtiRadioAidl;[Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)[Lcom/qti/extphone/QtiCallForwardInfo;

    move-result-object p3

    .line 402
    invoke-interface {v1, v2, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionCallback;->getCallForwardStatusResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V

    .line 405
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 407
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCallForwardStatusResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getDdsSwitchCapabilityResponse(IIZ)V
    .locals 4

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDdsSwitchCapabilityResponse:slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " support = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 474
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 475
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 474
    invoke-interface {v1, v2, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 476
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 478
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDdsSwitchCapabilityResponse:No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFacilityLockForAppResponse(III)V
    .locals 4

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFacilityLockForAppResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    .line 430
    iget-object p3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object p3

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 431
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 430
    invoke-interface {p3, v2, v0, p2, v1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->getFacilityLockForAppResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;[I)V

    .line 432
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 434
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFacilityLockForAppResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getImeiResponse(IILvendor/qti/hardware/radio/qtiradio/ImeiInfo;)V
    .locals 4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImeiResponse: slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " imeitype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 452
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 453
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v3, p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHidlImeiInfo2Aidl(Lcom/qti/phone/QtiRadioAidl;Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p3

    .line 452
    invoke-interface {v1, v2, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionCallback;->getImeiResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V

    .line 454
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImeiResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "7f4916fc3faf420a1e0e45a1d665fa03ffa10226"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getNetworkSelectionModeResponse(IILvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;)V
    .locals 4

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkSelectionModeResponse: slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 625
    new-instance v1, Lcom/qti/extphone/NetworkSelectionMode;

    iget v2, p3, Lvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;->accessMode:I

    iget-boolean p3, p3, Lvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;->isManual:Z

    invoke-direct {v1, v2, p3}, Lcom/qti/extphone/NetworkSelectionMode;-><init>(IZ)V

    .line 628
    iget-object p3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object p3

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 629
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 628
    invoke-interface {p3, v2, v0, p2, v1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V

    .line 630
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 632
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNetworkSelectionModeResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getQtiRadioCapabilityResponse(III)V
    .locals 4

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQtiRadioCapabilityResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " raf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 378
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 379
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 380
    invoke-static {p3}, Lcom/qti/phone/QtiRadioUtils;->convertToQtiNetworkTypeBitMask(I)I

    move-result p3

    .line 378
    invoke-interface {v1, v2, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionCallback;->getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V

    .line 381
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 383
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getQtiRadioCapabilityResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onEnableEndcResponse(III)V
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnableEndcResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "QtiRadioAidl"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 288
    iget-object p3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qti/extphone/Token;

    .line 289
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    invoke-interface {v0, v1, p3, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onEnableEndc(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 290
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEnableEndcResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onEndcStatusResponse(III)V
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEndcStatusResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 313
    :goto_0
    iget-object p3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object p3

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    invoke-interface {p3, v2, v0, p2, v1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onEndcStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 314
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 316
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEndcStatusResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onNrConfigResponse(III)V
    .locals 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrConfigResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nrConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 355
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1, p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalNrConfig(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/NrConfig;

    move-result-object p3

    .line 356
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V

    .line 357
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 359
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNrConfigResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onNrIconTypeResponse(III)V
    .locals 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconTypeResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 266
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1, p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalNrIconType(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/NrIconType;

    move-result-object p3

    .line 267
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    invoke-interface {v1, v2, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V

    .line 269
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 271
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNrIconTypeResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendUserPreferenceForDataDuringVoiceCallResponse(II)V
    .locals 4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUserPreferenceForDataDuringVoiceCallResponse:slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 497
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 498
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 497
    invoke-interface {v1, v2, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onSendUserPreferenceForDataDuringVoiceCall(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 499
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 501
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendUserPreferenceForDataDuringVoiceCallResponse:No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(II)V
    .locals 3

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeAutomaticResponse: slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 602
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    invoke-interface {v1, v2, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V

    .line 604
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 606
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNetworkSelectionModeAutomaticResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(II)V
    .locals 3

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeManualResponse: slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 581
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    invoke-interface {v1, v2, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V

    .line 583
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNetworkSelectionModeManualResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNrConfigResponse(III)V
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrConfigResponse:slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "QtiRadioAidl"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object p3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 333
    iget-object p3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qti/extphone/Token;

    .line 334
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    invoke-interface {v0, v1, p3, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 335
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNrConfigResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNrUltraWidebandIconConfigResponse(II)V
    .locals 4

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrUltraWidebandIconConfigResponse: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 518
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    .line 519
    invoke-static {v3, p2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 518
    invoke-interface {v1, v2, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onSetNrUltraWidebandIconConfigResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 520
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 522
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNrUltraWidebandIconConfigResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startNetworkScanResponse(II)V
    .locals 3

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkScanResponse: slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 539
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    invoke-interface {v1, v2, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->startNetworkScanResponse(ILcom/qti/extphone/Token;I)V

    .line 541
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 543
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startNetworkScanResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopNetworkScanResponse(II)V
    .locals 3

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopNetworkScanResponse: slotId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 560
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v2

    invoke-interface {v1, v2, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V

    .line 562
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 564
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "stopNetworkScanResponse: No previous requestfound for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
