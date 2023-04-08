.class Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;
.super Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication$Stub;
.source "QtiRadioAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QtiRadioIndicationAidl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioAidl;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioAidl;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication$Stub;-><init>()V

    return-void
.end method


# virtual methods
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

.method public networkScanResult(Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;)V
    .locals 3

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkScanResult: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "NetworkScanResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;->networkInfos:[Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellInfoList([Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 663
    new-instance v1, Lcom/android/internal/telephony/NetworkScanResult;

    iget v2, p1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;->status:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;->error:I

    invoke-direct {v1, v2, p1, v0}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 665
    iget-object p1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {p1, v0, p0, v1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->networkScanResult(ILcom/qti/extphone/Token;Lcom/android/internal/telephony/NetworkScanResult;)V

    return-void
.end method

.method public onDataDeactivateDelayTime(J)V
    .locals 2

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataDeactivateDelayTime: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayTimeMilliSecs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmMaxDataDeactivateDelayTime(Lcom/qti/phone/QtiRadioAidl;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 758
    iget-object p1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmMaxDataDeactivateDelayTime(Lcom/qti/phone/QtiRadioAidl;)J

    move-result-wide p1

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onDataDeactivateDelayTime(ILcom/qti/extphone/Token;J)V

    return-void
.end method

.method public onDdsSwitchCapabilityChange()V
    .locals 4

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchCapabilityChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    new-instance v2, Lcom/qti/extphone/Status;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/qti/extphone/Status;-><init>(I)V

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method public onDdsSwitchCriteriaChange(Z)V
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchCriteriaChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "telephonyDdsSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onDdsSwitchCriteriaChange(ILcom/qti/extphone/Token;Z)V

    return-void
.end method

.method public onDdsSwitchRecommendation(I)V
    .locals 2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchRecommendation: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "recommendedSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onDdsSwitchRecommendation(ILcom/qti/extphone/Token;I)V

    return-void
.end method

.method public onEpdgOverCellularDataSupported(Z)V
    .locals 2

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEpdgOverCellularDataSupported: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", support = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onEpdgOverCellularDataSupported(ILcom/qti/extphone/Token;Z)V

    return-void
.end method

.method public onImeiChange(Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)V
    .locals 2

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImeiChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Imei = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0, p1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHidlImeiInfo2Aidl(Lcom/qti/phone/QtiRadioAidl;Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p1

    .line 704
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onImeiChange(ILcom/qti/extphone/QtiImeiInfo;)V

    return-void
.end method

.method public onMcfgRefresh(II)V
    .locals 2

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMcfgRefresh: subscriptionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " refreshState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v0, Lcom/qti/phone/QtiMcfgRefreshInfo;

    invoke-direct {v0, p2, p1}, Lcom/qti/phone/QtiMcfgRefreshInfo;-><init>(II)V

    .line 787
    iget-object p1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onMcfgRefresh(Lcom/qti/extphone/Token;Lcom/qti/phone/QtiMcfgRefreshInfo;)V

    return-void
.end method

.method public onNrConfigChange(I)V
    .locals 0

    return-void
.end method

.method public onNrIconTypeChange(I)V
    .locals 4

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconTypeChange: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "NrIconType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0, p1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mconvertHalNrIconType(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/NrIconType;

    move-result-object p1

    .line 680
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I

    move-result v1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    new-instance v2, Lcom/qti/extphone/Status;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/qti/extphone/Status;-><init>(I)V

    invoke-interface {v0, v1, p0, v2, p1}, Lcom/qti/phone/IQtiRadioConnectionCallback;->onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V

    return-void
.end method
