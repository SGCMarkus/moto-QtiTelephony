.class public final Lcom/qti/phone/QtiRadioFactory;
.super Ljava/lang/Object;
.source "QtiRadioFactory.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mPhoneCount:I

.field private static mQtiRadioAidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

.field private static mQtiRadioHidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

.field private static mQtiRadioNotSupportedHal:[Lcom/qti/phone/IQtiRadioConnectionInterface;


# direct methods
.method private static getPhoneCount()I
    .locals 2

    .line 82
    sget-object v0, Lcom/qti/phone/QtiRadioFactory;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method static isAidlAvailable()Z
    .locals 4

    const-string v0, "ro.board.api_level"

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "vendor.qti.hardware.radio.qtiradio.IQtiRadioStable/slot1"

    .line 72
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception while call into AIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioFactory"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public static final makeQtiRadio(Landroid/content/Context;)[Lcom/qti/phone/IQtiRadioConnectionInterface;
    .locals 2

    .line 28
    sput-object p0, Lcom/qti/phone/QtiRadioFactory;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->getPhoneCount()I

    move-result p0

    sput p0, Lcom/qti/phone/QtiRadioFactory;->mPhoneCount:I

    .line 30
    sget-object p0, Lcom/qti/phone/QtiRadioFactory;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    const-string p0, "QtiRadioFactory"

    const-string v0, "RIL is not supported"

    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->makeQtiRadioNotSupportedHal()[Lcom/qti/phone/IQtiRadioConnectionInterface;

    move-result-object p0

    return-object p0

    .line 38
    :cond_2
    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->isAidlAvailable()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 39
    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->makeQtiRadioAidl()[Lcom/qti/phone/IQtiRadioConnectionInterface;

    move-result-object p0

    return-object p0

    .line 41
    :cond_3
    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->makeQtiRadioHidl()[Lcom/qti/phone/IQtiRadioConnectionInterface;

    move-result-object p0

    return-object p0
.end method

.method private static makeQtiRadioAidl()[Lcom/qti/phone/IQtiRadioConnectionInterface;
    .locals 4

    .line 54
    sget v0, Lcom/qti/phone/QtiRadioFactory;->mPhoneCount:I

    new-array v0, v0, [Lcom/qti/phone/QtiRadioAidl;

    sput-object v0, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioAidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v0, 0x0

    .line 55
    :goto_0
    sget v1, Lcom/qti/phone/QtiRadioFactory;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 56
    sget-object v1, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioAidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    new-instance v2, Lcom/qti/phone/QtiRadioAidl;

    sget-object v3, Lcom/qti/phone/QtiRadioFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/qti/phone/QtiRadioAidl;-><init>(ILandroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioAidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    return-object v0
.end method

.method private static makeQtiRadioHidl()[Lcom/qti/phone/IQtiRadioConnectionInterface;
    .locals 3

    .line 62
    sget v0, Lcom/qti/phone/QtiRadioFactory;->mPhoneCount:I

    new-array v0, v0, [Lcom/qti/phone/QtiRadioHidl;

    sput-object v0, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioHidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v0, 0x0

    .line 63
    :goto_0
    sget v1, Lcom/qti/phone/QtiRadioFactory;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 64
    sget-object v1, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioHidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    new-instance v2, Lcom/qti/phone/QtiRadioHidl;

    invoke-direct {v2, v0}, Lcom/qti/phone/QtiRadioHidl;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioHidl:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    return-object v0
.end method

.method private static makeQtiRadioNotSupportedHal()[Lcom/qti/phone/IQtiRadioConnectionInterface;
    .locals 3

    .line 46
    sget v0, Lcom/qti/phone/QtiRadioFactory;->mPhoneCount:I

    new-array v0, v0, [Lcom/qti/phone/QtiRadioNotSupportedHal;

    sput-object v0, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioNotSupportedHal:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v0, 0x0

    .line 47
    :goto_0
    sget v1, Lcom/qti/phone/QtiRadioFactory;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 48
    sget-object v1, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioNotSupportedHal:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    new-instance v2, Lcom/qti/phone/QtiRadioNotSupportedHal;

    invoke-direct {v2}, Lcom/qti/phone/QtiRadioNotSupportedHal;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/qti/phone/QtiRadioFactory;->mQtiRadioNotSupportedHal:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    return-object v0
.end method
