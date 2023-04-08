.class public Lcom/qti/phone/QtiTelephony;
.super Ljava/lang/Object;
.source "QtiTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;,
        Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

.field mQtiTelephonyCallback:Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/qti/phone/QtiTelephony;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiTelephony;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleMcfgRefreshInfo(Lcom/qti/phone/QtiTelephony;Lcom/qti/phone/QtiMcfgRefreshInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiTelephony;->handleMcfgRefreshInfo(Lcom/qti/phone/QtiMcfgRefreshInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/qti/phone/QtiTelephony;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiTelephony;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lcom/qti/phone/QtiTelephony;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiTelephony;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/qti/phone/QtiTelephony;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    .line 32
    iput-object p1, p0, Lcom/qti/phone/QtiTelephony;->mContext:Landroid/content/Context;

    .line 34
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "QtiTelephony"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance p2, Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;-><init>(Lcom/qti/phone/QtiTelephony;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/qti/phone/QtiTelephony;->mHandler:Landroid/os/Handler;

    .line 38
    iget-object p1, p0, Lcom/qti/phone/QtiTelephony;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 41
    new-instance p1, Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;

    invoke-direct {p1, p0}, Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;-><init>(Lcom/qti/phone/QtiTelephony;)V

    iput-object p1, p0, Lcom/qti/phone/QtiTelephony;->mQtiTelephonyCallback:Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;

    .line 42
    iget-object p0, p0, Lcom/qti/phone/QtiTelephony;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->registerInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    return-void
.end method

.method private handleMcfgRefreshInfo(Lcom/qti/phone/QtiMcfgRefreshInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMcfgRefreshInfo refreshInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiTelephony;->logd(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/qti/phone/QtiMcfgRefreshInfo;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMcfgRefreshInfo refreshInfo SimState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/QtiTelephony;->logd(Ljava/lang/String;)V

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/qti/phone/QtiMcfgRefreshInfo;->getMcfgState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "handleMcfgRefreshInfo Update carrier config"

    .line 84
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiTelephony;->logd(Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/qti/phone/QtiTelephony;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 89
    invoke-virtual {p1}, Lcom/qti/phone/QtiMcfgRefreshInfo;->getSubId()I

    move-result p1

    const-string v0, "LOADED"

    invoke-virtual {p0, p1, v0}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "handleMcfgRefreshInfo carrier config update not required"

    .line 92
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiTelephony;->logd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    const-string p0, "QtiTelephony"

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    const-string p0, "QtiTelephony"

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "destroy"

    .line 97
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiTelephony;->logi(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/qti/phone/QtiTelephony;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p0, Lcom/qti/phone/QtiTelephony;->mQtiTelephonyCallback:Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;

    invoke-virtual {v0, v1}, Lcom/qti/phone/QtiRadioProxy;->unRegisterInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    .line 99
    iget-object p0, p0, Lcom/qti/phone/QtiTelephony;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method
