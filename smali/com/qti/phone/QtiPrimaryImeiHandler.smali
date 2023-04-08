.class public Lcom/qti/phone/QtiPrimaryImeiHandler;
.super Ljava/lang/Object;
.source "QtiPrimaryImeiHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;,
        Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

.field private mIsRadioUnAvailable:[Z

.field private mNewImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

.field private mPhoneCount:I

.field mPrimaryImeiCallback:Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;

.field private mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

.field private mReceivedImeiCount:I

.field private mRequestToken:[Lcom/qti/extphone/Token;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/qti/phone/QtiPrimaryImeiHandler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/qti/phone/QtiPrimaryImeiHandler;)I
    .locals 0

    iget p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiRadioProxy(Lcom/qti/phone/QtiPrimaryImeiHandler;)Lcom/qti/phone/QtiRadioProxy;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mRequestToken:[Lcom/qti/extphone/Token;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmReceivedImeiCount(Lcom/qti/phone/QtiPrimaryImeiHandler;I)V
    .locals 0

    iput p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mReceivedImeiCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioPowerStateChanged(Lcom/qti/phone/QtiPrimaryImeiHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->handleRadioPowerStateChanged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateImeiInfo(Lcom/qti/phone/QtiPrimaryImeiHandler;ILcom/qti/extphone/QtiImeiInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->updateImeiInfo(ILcom/qti/extphone/QtiImeiInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mReceivedImeiCount:I

    .line 83
    new-instance v1, Lcom/qti/phone/QtiPrimaryImeiHandler$1;

    invoke-direct {v1, p0}, Lcom/qti/phone/QtiPrimaryImeiHandler$1;-><init>(Lcom/qti/phone/QtiPrimaryImeiHandler;)V

    iput-object v1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    .line 53
    iput-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 57
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    iput p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPhoneCount:I

    .line 58
    new-array p2, p1, [Lcom/qti/extphone/QtiImeiInfo;

    iput-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    .line 59
    new-array p2, p1, [Lcom/qti/extphone/QtiImeiInfo;

    iput-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mNewImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    .line 60
    new-array p2, p1, [Lcom/qti/extphone/Token;

    iput-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mRequestToken:[Lcom/qti/extphone/Token;

    .line 61
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mIsRadioUnAvailable:[Z

    .line 63
    :goto_0
    iget p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPhoneCount:I

    if-ge v0, p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    .line 65
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mNewImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    aput-object p2, p1, v0

    .line 66
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mRequestToken:[Lcom/qti/extphone/Token;

    aput-object p2, p1, v0

    .line 67
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mIsRadioUnAvailable:[Z

    const/4 p2, 0x1

    aput-boolean p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "QtiPrimaryImeiHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance p2, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;-><init>(Lcom/qti/phone/QtiPrimaryImeiHandler;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance p1, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;

    invoke-direct {p1, p0}, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;-><init>(Lcom/qti/phone/QtiPrimaryImeiHandler;)V

    iput-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPrimaryImeiCallback:Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;

    .line 75
    iget-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p2, p1}, Lcom/qti/phone/QtiRadioProxy;->registerInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    .line 77
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    invoke-direct {p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->sendGetImeiRequest()V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QtiPrimaryImeiHandler "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPhoneCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private handleRadioPowerStateChanged(II)V
    .locals 5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleRadioPowerStateChanged, state["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logd(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mIsRadioUnAvailable:[Z

    aget-boolean v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    .line 105
    :goto_0
    aput-boolean p2, v0, p1

    move p2, v2

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mIsRadioUnAvailable:[Z

    array-length v4, v0

    if-ge p2, v4, :cond_2

    .line 108
    aget-boolean v0, v0, p2

    if-eqz v0, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 113
    aget-boolean p1, v0, p1

    if-eq v1, p1, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->sendGetImeiRequest()V

    :cond_3
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    const-string p0, "QtiPrimaryImeiHandler"

    .line 250
    invoke-static {p0, p1}, Lorg/codeaurora/telephony/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    const-string p0, "QtiPrimaryImeiHandler"

    .line 258
    invoke-static {p0, p1}, Lorg/codeaurora/telephony/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    const-string p0, "QtiPrimaryImeiHandler"

    .line 254
    invoke-static {p0, p1}, Lorg/codeaurora/telephony/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendGetImeiRequest()V
    .locals 1

    const-string v0, "sendGetImeiRequest "

    .line 210
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logd(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateImeiInfo(ILcom/qti/extphone/QtiImeiInfo;)V
    .locals 5

    if-eqz p2, :cond_5

    if-ltz p1, :cond_5

    .line 177
    iget v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPhoneCount:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_2

    .line 182
    :cond_0
    iget v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mReceivedImeiCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mReceivedImeiCount:I

    .line 183
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mNewImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    aput-object p2, v0, p1

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " updateImeiInfo, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mReceivedImeiCount="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mReceivedImeiCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logd(Ljava/lang/String;)V

    .line 189
    iget p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mReceivedImeiCount:I

    iget p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPhoneCount:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 190
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    monitor-enter p1

    move p2, v0

    move v2, p2

    .line 191
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPhoneCount:I

    if-ge p2, v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mNewImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    aget-object v3, v3, p2

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Lcom/qti/extphone/QtiImeiInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    iget-object v2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    iget-object v3, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mNewImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    aget-object v3, v3, p2

    aput-object v3, v2, p2

    move v2, v1

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mNewImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    const/4 v4, 0x0

    aput-object v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    iput v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mReceivedImeiCount:I

    .line 199
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendGetImeiRequest,  isInfoChanged="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logi(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 199
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 205
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    invoke-virtual {p1, p0}, Lcom/qti/phone/QtiRadioProxy;->sendImeiInfoInd([Lcom/qti/extphone/QtiImeiInfo;)V

    :cond_4
    return-void

    .line 178
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " invalid slotID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " null imei "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "destroy"

    .line 243
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logi(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mPrimaryImeiCallback:Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;

    invoke-virtual {v0, v1}, Lcom/qti/phone/QtiRadioProxy;->unRegisterInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    .line 245
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;
    .locals 1

    const-string v0, "getImeiInfo"

    .line 216
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->logd(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler;->mImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
