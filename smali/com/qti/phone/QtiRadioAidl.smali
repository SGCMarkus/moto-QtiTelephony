.class public Lcom/qti/phone/QtiRadioAidl;
.super Ljava/lang/Object;
.source "QtiRadioAidl.java"

# interfaces
.implements Lcom/qti/phone/IQtiRadioConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;,
        Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;,
        Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;
    }
.end annotation


# instance fields
.field private final BACK_BACK_SS_REQ:I

.field private final IDLE:Ljava/lang/String;

.field private final IDLE_TO_CONNECT:Ljava/lang/String;

.field private final IQTI_RADIO_STABLE_AIDL_SERVICE_INSTANCE:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final SCG_TO_MCG:Ljava/lang/String;

.field private final UNSOL:Lcom/qti/extphone/Token;

.field private final VERSION_ONE:I

.field private mBinder:Landroid/os/IBinder;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private mDeathRecipient:Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;

.field private final mHalSync:Ljava/lang/Object;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qti/extphone/Token;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDataDeactivateDelayTime:J

.field private mNrUwbIconBwInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;

.field private mNrUwbIconNsaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

.field private mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;",
            ">;"
        }
    .end annotation
.end field

.field private mNrUwbIconSaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

.field private mNrUwbIconSib2Value:I

.field private mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

.field private mQtiRadioIndicationAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;

.field private mQtiRadioResponseAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;

.field private mServiceInstance:Ljava/lang/String;

.field private mSlotId:I


# direct methods
.method public static synthetic $r8$lambda$CTA8QVKV4Ox2VbjLH9M48Z-rP_g(I)[Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;
    .locals 0

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->lambda$startNetworkScan$0(I)[Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eJC-uKLB7oenkU-9CSrnOZCasn8(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->lambda$startNetworkScan$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/extphone/Token;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->UNSOL:Lcom/qti/extphone/Token;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioAidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioAidl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxDataDeactivateDelayTime(Lcom/qti/phone/QtiRadioAidl;)J
    .locals 2

    iget-wide v0, p0, Lcom/qti/phone/QtiRadioAidl;->mMaxDataDeactivateDelayTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/qti/phone/QtiRadioAidl;)I
    .locals 0

    iget p0, p0, Lcom/qti/phone/QtiRadioAidl;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/Status;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHalNrConfig(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/NrConfig;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->convertHalNrConfig(I)Lcom/qti/extphone/NrConfig;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHalNrIconType(Lcom/qti/phone/QtiRadioAidl;I)Lcom/qti/extphone/NrIconType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->convertHalNrIconType(I)Lcom/qti/extphone/NrIconType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlCallForwardInfo2Aidl(Lcom/qti/phone/QtiRadioAidl;[Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)[Lcom/qti/extphone/QtiCallForwardInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->convertHidlCallForwardInfo2Aidl([Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)[Lcom/qti/extphone/QtiCallForwardInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlImeiInfo2Aidl(Lcom/qti/phone/QtiRadioAidl;Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)Lcom/qti/extphone/QtiImeiInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->convertHidlImeiInfo2Aidl(Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitQtiRadio(Lcom/qti/phone/QtiRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioAidl;->initQtiRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetHalInterfaces(Lcom/qti/phone/QtiRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioAidl;->resetHalInterfaces()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QtiRadioAidl"

    .line 61
    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->LOG_TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/qti/extphone/Token;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/qti/extphone/Token;-><init>(I)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->UNSOL:Lcom/qti/extphone/Token;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mHalSync:Ljava/lang/Object;

    const-string v0, "slot"

    .line 75
    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->IQTI_RADIO_STABLE_AIDL_SERVICE_INSTANCE:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/qti/phone/QtiRadioAidl;->mCurrentVersion:I

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lcom/qti/phone/QtiRadioAidl;->VERSION_ONE:I

    .line 84
    iput v1, p0, Lcom/qti/phone/QtiRadioAidl;->BACK_BACK_SS_REQ:I

    const-wide/16 v2, 0x1b58

    .line 89
    iput-wide v2, p0, Lcom/qti/phone/QtiRadioAidl;->mMaxDataDeactivateDelayTime:J

    .line 91
    new-instance v2, Lcom/qti/phone/QtiRadioAidl$1;

    invoke-direct {v2, p0}, Lcom/qti/phone/QtiRadioAidl$1;-><init>(Lcom/qti/phone/QtiRadioAidl;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;-><init>()V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconNsaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    .line 113
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;-><init>()V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;

    .line 115
    new-instance v2, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;-><init>()V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconBwInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;

    const-string v2, "scg_to_mcg"

    .line 116
    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->SCG_TO_MCG:Ljava/lang/String;

    const-string v2, "idle_to_connect"

    .line 117
    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->IDLE_TO_CONNECT:Ljava/lang/String;

    const-string v2, "idle"

    .line 118
    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->IDLE:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/qti/phone/QtiRadioAidl;->mContext:Landroid/content/Context;

    .line 122
    iput p1, p0, Lcom/qti/phone/QtiRadioAidl;->mSlotId:I

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/qti/phone/QtiRadioAidl;->mSlotId:I

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mServiceInstance:Ljava/lang/String;

    .line 124
    new-instance p1, Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;

    invoke-direct {p1, p0}, Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;-><init>(Lcom/qti/phone/QtiRadioAidl;)V

    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mDeathRecipient:Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;

    .line 125
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioAidl;->initQtiRadio()V

    .line 126
    iget-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/qti/phone/QtiRadioAidl;->mMaxDataDeactivateDelayTime:J

    return-void
.end method

.method private atLeastOneNrUltraWidebandIconConfigParamValid()Z
    .locals 2

    .line 1219
    iget v0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSib2Value:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconNsaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconBwInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private convertHalErrorcode(I)Lcom/qti/extphone/Status;
    .locals 0

    .line 211
    new-instance p0, Lcom/qti/extphone/Status;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/qti/extphone/Status;-><init>(I)V

    return-object p0
.end method

.method private convertHalNrConfig(I)Lcom/qti/extphone/NrConfig;
    .locals 0

    .line 214
    new-instance p0, Lcom/qti/extphone/NrConfig;

    invoke-direct {p0, p1}, Lcom/qti/extphone/NrConfig;-><init>(I)V

    return-object p0
.end method

.method private convertHalNrIconType(I)Lcom/qti/extphone/NrIconType;
    .locals 0

    .line 208
    new-instance p0, Lcom/qti/extphone/NrIconType;

    invoke-direct {p0, p1}, Lcom/qti/extphone/NrIconType;-><init>(I)V

    return-object p0
.end method

.method private convertHidlCallForwardInfo2Aidl([Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)[Lcom/qti/extphone/QtiCallForwardInfo;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_0
    array-length p0, p1

    .line 221
    new-array v0, p0, [Lcom/qti/extphone/QtiCallForwardInfo;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 223
    new-instance v2, Lcom/qti/extphone/QtiCallForwardInfo;

    invoke-direct {v2}, Lcom/qti/extphone/QtiCallForwardInfo;-><init>()V

    aput-object v2, v0, v1

    .line 224
    aget-object v3, p1, v1

    .line 225
    iget v4, v3, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->status:I

    iput v4, v2, Lcom/qti/extphone/QtiCallForwardInfo;->status:I

    .line 226
    iget v4, v3, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->reason:I

    iput v4, v2, Lcom/qti/extphone/QtiCallForwardInfo;->reason:I

    .line 227
    iget v4, v3, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->serviceClass:I

    iput v4, v2, Lcom/qti/extphone/QtiCallForwardInfo;->serviceClass:I

    .line 228
    iget v4, v3, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->toa:I

    iput v4, v2, Lcom/qti/extphone/QtiCallForwardInfo;->toa:I

    .line 229
    iget-object v4, v3, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v2, Lcom/qti/extphone/QtiCallForwardInfo;->number:Ljava/lang/String;

    .line 230
    iget v3, v3, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->timeSeconds:I

    iput v3, v2, Lcom/qti/extphone/QtiCallForwardInfo;->timeSeconds:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private convertHidlImeiInfo2Aidl(Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)Lcom/qti/extphone/QtiImeiInfo;
    .locals 2

    .line 236
    new-instance v0, Lcom/qti/extphone/QtiImeiInfo;

    iget p0, p0, Lcom/qti/phone/QtiRadioAidl;->mSlotId:I

    iget-object v1, p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->imei:Ljava/lang/String;

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->type:I

    invoke-direct {v0, p0, v1, p1}, Lcom/qti/extphone/QtiImeiInfo;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method private static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private extractValidBands([I)[I
    .locals 6

    .line 1386
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-lez v3, :cond_0

    .line 1390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1392
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractValidBands: Invalid band="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QtiRadioAidl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1395
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 1396
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1397
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method private getNrUltraWidebandIconBandsList(Landroid/os/PersistableBundle;)V
    .locals 7

    const-string v0, "5g_ultra_wideband_icon_nsa_band_mode"

    const v1, 0x7fffffff

    .line 1345
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "QtiRadioAidl"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 1348
    invoke-static {v0}, Lcom/qti/extphone/NrUwbIconMode;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "getNrUltraWidebandIconBandsList: Invalid NSA band mode"

    .line 1349
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iput-object v3, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconNsaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    :cond_1
    const-string v4, "5g_ultra_wideband_icon_nsa_band_array"

    .line 1352
    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1355
    invoke-direct {p0, v4}, Lcom/qti/phone/QtiRadioAidl;->extractValidBands([I)[I

    move-result-object v4

    .line 1356
    array-length v5, v4

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 1357
    new-instance v5, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;-><init>()V

    iput-object v5, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconNsaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    .line 1358
    iput-boolean v6, v5, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;->enabled:Z

    .line 1359
    iput v0, v5, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;->mode:I

    .line 1360
    iput-object v4, v5, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;->bands:[I

    goto :goto_0

    .line 1362
    :cond_2
    iput-object v3, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconNsaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    :goto_0
    const-string v0, "5g_ultra_wideband_icon_sa_band_mode"

    .line 1365
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1367
    invoke-static {v0}, Lcom/qti/extphone/NrUwbIconMode;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "getNrUltraWidebandIconBandsList: Invalid SA band mode"

    .line 1368
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iput-object v3, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    :cond_4
    const-string v1, "5g_ultra_wideband_icon_sa_band_array"

    .line 1371
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 1374
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->extractValidBands([I)[I

    move-result-object p1

    .line 1375
    array-length v1, p1

    if-eqz v1, :cond_5

    .line 1376
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;-><init>()V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    .line 1377
    iput-boolean v6, v1, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;->enabled:Z

    .line 1378
    iput v0, v1, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;->mode:I

    .line 1379
    iput-object p1, v1, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;->bands:[I

    goto :goto_1

    .line 1381
    :cond_5
    iput-object v3, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    :goto_1
    return-void
.end method

.method private getNrUltraWidebandIconConfig(I)V
    .locals 2

    .line 1228
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 1233
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->getNrUltraWidebandIconSib2Value(Landroid/os/PersistableBundle;)V

    .line 1234
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->getNrUltraWidebandIconMinBandwidthValue(Landroid/os/PersistableBundle;)V

    .line 1235
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->getNrUltraWidebandIconRefreshTime(Landroid/os/PersistableBundle;)V

    .line 1236
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->getNrUltraWidebandIconBandsList(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_0
    const-string p0, "QtiRadioAidl"

    const-string p1, "getNrUltraWidebandIconConfig - Carrier config manager is null"

    .line 1238
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getNrUltraWidebandIconMinBandwidthValue(Landroid/os/PersistableBundle;)V
    .locals 3

    const-string v0, "5g_ultra_wideband_icon_min_bandwidth_mode"

    const v1, 0x7fffffff

    .line 1266
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "5g_ultra_wideband_icon_min_bandwidth_value"

    .line 1269
    invoke-virtual {p1, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 1273
    invoke-direct {p0, v0, p1}, Lcom/qti/phone/QtiRadioAidl;->isNrUltraWidebandIconMinBandwithConfigValid(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconBwInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;->enabled:Z

    .line 1275
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;->mode:I

    .line 1276
    iput p1, p0, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;->bandwidth:I

    .line 1277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minBandwidthMode="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minBandwidthValue="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioAidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1280
    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconBwInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;

    :goto_0
    return-void
.end method

.method private getNrUltraWidebandIconRefreshTime(Landroid/os/PersistableBundle;)V
    .locals 10

    const-string v0, "5g_ultra_wideband_icon_refresh_timer_map"

    .line 1294
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1296
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1297
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1298
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1299
    invoke-direct {p0, v3}, Lcom/qti/phone/QtiRadioAidl;->isNrUltraWidebandIconRefreshTimerValueValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1300
    new-instance v4, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;-><init>()V

    .line 1301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;->timeValue:I

    .line 1302
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "scg_to_mcg"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_1

    :sswitch_1
    const-string v6, "idle"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v8

    goto :goto_1

    :sswitch_2
    const-string v6, "idle_to_connect"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_1
    const-string v6, "QtiRadioAidl"

    packed-switch v5, :pswitch_data_0

    .line 1313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown timer type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1304
    :pswitch_0
    iput v9, v4, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;->timerType:I

    goto :goto_2

    .line 1310
    :pswitch_1
    iput v7, v4, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;->timerType:I

    goto :goto_2

    .line 1307
    :pswitch_2
    iput v8, v4, Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;->timerType:I

    .line 1315
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding refresh timer type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1319
    :cond_4
    iget-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1321
    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;

    goto :goto_3

    .line 1324
    :cond_5
    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;

    :cond_6
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x40ebd38f -> :sswitch_2
        0x313fd4 -> :sswitch_1
        0x4cb8f6f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNrUltraWidebandIconSib2Value(Landroid/os/PersistableBundle;)V
    .locals 2

    const-string v0, "5g_ultra_wideband_icon_sib2_value"

    const v1, 0x7fffffff

    .line 1243
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1246
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioAidl;->isNrUltraWidebandIconSib2ValueValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iput p1, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSib2Value:I

    .line 1248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNrUwbIconSib2Value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSib2Value:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioAidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1250
    :cond_0
    iput v1, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSib2Value:I

    :goto_0
    return-void
.end method

.method private initQtiRadio()V
    .locals 6

    const-string v0, "QtiRadioAidl"

    const-string v1, "initQtiRadio"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.qti.hardware.radio.qtiradio.IQtiRadioStable/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mServiceInstance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string p0, "QtiRadioAidl"

    const-string v0, "initQtiRadio failed"

    .line 136
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_0
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "QtiRadioAidl"

    const-string v0, "Get binder for QtiRadio StableAIDL failed"

    .line 143
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "QtiRadioAidl"

    const-string v2, "Get binder for QtiRadio StableAIDL is successful"

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mDeathRecipient:Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :catch_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_1
    new-instance v2, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;

    invoke-direct {v2, p0}, Lcom/qti/phone/QtiRadioAidl$QtiRadioResponseAidl;-><init>(Lcom/qti/phone/QtiRadioAidl;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadioResponseAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;

    .line 155
    new-instance v2, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;

    invoke-direct {v2, p0}, Lcom/qti/phone/QtiRadioAidl$QtiRadioIndicationAidl;-><init>(Lcom/qti/phone/QtiRadioAidl;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadioIndicationAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadioResponseAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;

    invoke-interface {v0, v3, v2}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->setCallbacks(Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "QtiRadioAidl"

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call setCallbacks stable AIDL API"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    iput-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :try_start_4
    invoke-interface {v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getInterfaceVersion()I

    move-result v0

    iput v0, p0, Lcom/qti/phone/QtiRadioAidl;->mCurrentVersion:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    const-string v2, "QtiRadioAidl"

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception for getInterfaceVersion()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catchall_0
    move-exception p0

    .line 168
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method private isNrUltraWidebandIconMinBandwithConfigValid(II)Z
    .locals 1

    .line 1285
    invoke-static {p1}, Lcom/qti/extphone/NrUwbIconMode;->isValid(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1286
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNrUltraWidebandIconMinBandwithConfigValid: Invalid min bw config - mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioAidl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isNrUltraWidebandIconRefreshTimerValueValid(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "QtiRadioAidl"

    const/4 v0, 0x0

    .line 1331
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_0

    const-string p1, "isNrUltraWidebandIconRefreshTimerValueValid: Negative value"

    .line 1337
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    const-string v1, "isNrUltraWidebandIconRefreshTimerValueValid: Invalid value"

    .line 1333
    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private isNrUltraWidebandIconSib2ValueValid(I)Z
    .locals 4

    const/4 p0, 0x3

    new-array v0, p0, [I

    .line 1255
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    .line 1256
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "QtiRadioAidl"

    const-string p1, "isNrUltraWidebandIconSib2ValueValid: Invalid SIB2 value"

    .line 1261
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private static synthetic lambda$startNetworkScan$0(I)[Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;
    .locals 0

    .line 946
    new-array p0, p0, [Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;

    return-object p0
.end method

.method private static synthetic lambda$startNetworkScan$1(I)[Ljava/lang/String;
    .locals 0

    .line 951
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private resetHalInterfaces()V
    .locals 4

    const-string v0, "QtiRadioAidl"

    const-string v1, "resetHalInterfaces: Resetting HAL interfaces."

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiRadioAidl;->mDeathRecipient:Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 196
    iput-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_1
    iput-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    .line 201
    iput-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadioResponseAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;

    .line 202
    iput-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadioIndicationAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;

    .line 203
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catchall_0
    move-exception p0

    .line 203
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public disable5g(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1034
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enable5g(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1029
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enable5gOnly(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1044
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableEndc(ZLcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEndc: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->enableEndc(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 832
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 833
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableEndc Failed."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getDdsSwitchCapability(Lcom/qti/extphone/Token;)V
    .locals 4

    .line 1150
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDdsSwitchCapability: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getDdsSwitchCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1157
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDdsSwitchCapability Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFacilityLockForApp(Lcom/qti/extphone/Token;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFacilityLockForApp: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;-><init>()V

    .line 1121
    invoke-static {p2}, Lcom/qti/phone/QtiRadioAidl;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;->facility:Ljava/lang/String;

    .line 1122
    invoke-static {p3}, Lcom/qti/phone/QtiRadioAidl;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;->password:Ljava/lang/String;

    .line 1123
    iput p4, v1, Lvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;->serviceClass:I

    .line 1124
    invoke-static {p5}, Lcom/qti/phone/QtiRadioAidl;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;->appId:Ljava/lang/String;

    .line 1125
    iput-boolean p6, v1, Lvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;->expectMore:Z

    .line 1128
    :try_start_0
    iget-object p2, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {p2, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getFacilityLockForApp(ILvendor/qti/hardware/radio/qtiradio/FacilityLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1130
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFacilityLockForApp Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getImei(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImei: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getImei(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1143
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getImei Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getNetworkSelectionMode(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkSelectionMode: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getNetworkSelectionMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 902
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 903
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNetworkSelectionMode Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueBool: property = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "default = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyValue Failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueInt: property = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "default = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyValue Failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueString: property = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "default = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyValue Failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQosParameters(Lcom/qti/extphone/Token;I)V
    .locals 0

    const-string p0, "QtiRadioAidl"

    const-string p1, "getQosParameters not supported in AIDL"

    .line 1164
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getQtiRadioCapability(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQtiRadioCapability: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getQtiRadioCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1016
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1017
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getQtiRadioCapability Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isEpdgOverCellularDataSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "QtiRadioAidl"

    const-string v1, "isEpdgOverCellularDataSupported()"

    .line 1185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->isEpdgOverCellularDataSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEpdgOverCellularDataSupported Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    iget p0, p0, Lcom/qti/phone/QtiRadioAidl;->mCurrentVersion:I

    if-le p0, v0, :cond_1

    const-string p0, "QtiRadioAidl"

    const-string p1, "BACK_BACK_SS_REQ feature Supported"

    .line 1082
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public query5gConfigInfo(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1069
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public query5gStatus(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1049
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryCallForwardStatus(Lcom/qti/extphone/Token;IILjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallForwardStatus: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;-><init>()V

    .line 1098
    iput p2, v1, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->reason:I

    .line 1099
    iput p3, v1, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->serviceClass:I

    .line 1100
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->toa:I

    .line 1101
    invoke-static {p4}, Lcom/qti/phone/QtiRadioAidl;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->number:Ljava/lang/String;

    const/4 p2, 0x0

    .line 1102
    iput p2, v1, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->timeSeconds:I

    .line 1103
    iput-boolean p5, v1, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->expectMore:Z

    .line 1106
    :try_start_0
    iget-object p2, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {p2, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->getCallForwardStatus(ILvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1108
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryCallForwardStatus Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public queryEndcStatus(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryEndcStatus: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->queryEndcStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 858
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 859
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryEndcStatus Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public queryNrBearerAllocation(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1039
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryNrConfig(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrConfig: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->queryNrConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 915
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 916
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryNrConfig Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public queryNrDcParam(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1054
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryNrIconType(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrIconType: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->queryNrIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 845
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 846
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryNrIconType Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public queryNrSignalStrength(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1059
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryUpperLayerIndInfo(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1064
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCallback(Lcom/qti/phone/IQtiRadioConnectionCallback;)V
    .locals 2

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    return-void
.end method

.method public sendCdmaSms([BZLcom/qti/extphone/Token;)V
    .locals 0

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1074
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;Z)V
    .locals 4

    .line 1170
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUserPreferenceForDataDuringVoiceCall: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qti/phone/QtiRadioAidl;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0, p2}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->sendUserPreferenceForDataDuringVoiceCall(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1178
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sendUserPreferenceForDataDuringVoiceCall Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Lcom/qti/extphone/Token;Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 0

    const-string p0, "QtiRadioAidl"

    const-string p1, "Not Supported"

    .line 1024
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(ILcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkSelectionModeAutomatic: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "accessType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->setNetworkSelectionModeAutomatic(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 888
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 889
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNetworkSelectionModeAutomatic Failed."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Lcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Token;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkSelectionModeManual: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;-><init>()V

    .line 985
    invoke-virtual {p1}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;->operatorNumeric:Ljava/lang/String;

    .line 986
    invoke-virtual {p1}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;->getRan()I

    move-result v3

    invoke-static {v3}, Lcom/qti/phone/QtiRadioUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v3

    iput v3, v1, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;->ran:I

    .line 987
    invoke-virtual {p1}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;->getAccessMode()I

    move-result v3

    iput v3, v1, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;->accessMode:I

    .line 988
    invoke-virtual {p1}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;->getCagId()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 989
    new-instance v3, Lvendor/qti/hardware/radio/qtiradio/CagInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/qtiradio/CagInfo;-><init>()V

    .line 991
    invoke-virtual {p1}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;->getCagId()J

    move-result-wide v4

    iput-wide v4, v3, Lvendor/qti/hardware/radio/qtiradio/CagInfo;->cagId:J

    const-string v4, ""

    .line 992
    iput-object v4, v3, Lvendor/qti/hardware/radio/qtiradio/CagInfo;->cagName:Ljava/lang/String;

    .line 993
    iput-object v3, v1, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;->cagInfo:Lvendor/qti/hardware/radio/qtiradio/CagInfo;

    .line 995
    :cond_0
    invoke-virtual {p1}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;->getNid()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 996
    invoke-virtual {p1}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;->getNid()[B

    move-result-object p1

    iput-object p1, v1, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;->snpnNid:[B

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 998
    iput-object p1, v1, Lvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;->snpnNid:[B

    .line 1001
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {p1, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->setNetworkSelectionModeManual(ILvendor/qti/hardware/radio/qtiradio/SetNetworkSelectionMode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1003
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1004
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startNetworkScan Failed."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setNrConfig(Lcom/qti/extphone/NrConfig;Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrConfig: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "NrConfig= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {p1}, Lcom/qti/extphone/NrConfig;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    .line 866
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-virtual {p1}, Lcom/qti/extphone/NrConfig;->get()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->setNrConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 872
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNrConfig Failed."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNrUltraWidebandIconConfig(Lcom/qti/extphone/Token;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrUltraWidebandIconConfig: serial = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "QtiRadioAidl"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    :try_start_0
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioAidl;->getNrUltraWidebandIconConfig(I)V

    .line 1205
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioAidl;->atLeastOneNrUltraWidebandIconConfigParamValid()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "setNrUltraWidebandIconConfig: Sending request"

    .line 1206
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    iget v2, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSib2Value:I

    iget-object v3, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconSaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconNsaBandInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconRefreshTimeArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/qti/phone/QtiRadioAidl;->mNrUwbIconBwInfo:Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;

    invoke-interface/range {v0 .. v6}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->setNrUltraWidebandIconConfig(IILvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Ljava/util/List;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;)V

    goto :goto_0

    :cond_0
    const-string p0, "setNrUltraWidebandIconConfig: Skipping request"

    .line 1211
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setNrUltraWidebandIconConfig failed"

    .line 1214
    invoke-static {v7, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Token;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 923
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNetworkScan: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "networkScanRequest= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanRequest;-><init>()V

    .line 929
    new-instance v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;-><init>()V

    .line 931
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getScanType()I

    move-result v4

    iput v4, v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;->type:I

    .line 932
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v4

    iput v4, v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;->interval:I

    .line 934
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 936
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 938
    invoke-static {v8}, Lcom/qti/phone/QtiRadioUtils;->convertToHalRadioAccessSpecifierAidl(Landroid/telephony/RadioAccessSpecifier;)Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;

    move-result-object v8

    if-nez v8, :cond_0

    .line 940
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadioResponseAidl:Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;

    const/4 p1, 0x6

    invoke-interface {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->startNetworkScanResponse(II)V

    return-void

    .line 943
    :cond_0
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 945
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/qti/phone/QtiRadioAidl$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/qti/phone/QtiRadioAidl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;

    iput-object v4, v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;->specifiers:[Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;

    .line 947
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v4

    iput v4, v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;->maxSearchTime:I

    .line 948
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResults()Z

    move-result v4

    iput-boolean v4, v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;->incrementalResults:Z

    .line 950
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v4

    iput v4, v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 951
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/qti/phone/QtiRadioAidl$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/qti/phone/QtiRadioAidl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v3, Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;->mccMncs:[Ljava/lang/String;

    .line 952
    iput-object v3, v1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanRequest;->nsr:Lvendor/qti/hardware/radio/qtiradio/NetworkScanRequest;

    .line 953
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getAccessMode()I

    move-result v3

    iput v3, v1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanRequest;->accessMode:I

    .line 955
    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getSearchType()I

    move-result p1

    .line 954
    invoke-static {p1}, Lcom/qti/phone/QtiRadioUtils;->convertToHalSearchTypeAidl(I)I

    move-result p1

    iput p1, v1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanRequest;->searchType:I

    .line 957
    :try_start_0
    iget-object p1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {p1, v0, v1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->startNetworkScan(ILvendor/qti/hardware/radio/qtiradio/QtiNetworkScanRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 959
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 960
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startNetworkScan Failed."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public stopNetworkScan(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopNetworkScan: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioAidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->stopNetworkScan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 972
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 973
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "stopNetworkScan Failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
