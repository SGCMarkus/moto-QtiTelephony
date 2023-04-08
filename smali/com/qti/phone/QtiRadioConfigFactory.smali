.class public final Lcom/qti/phone/QtiRadioConfigFactory;
.super Ljava/lang/Object;
.source "QtiRadioConfigFactory.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method private static isAidlAvailable()Z
    .locals 4

    const-string v0, "ro.board.api_level"

    const/4 v1, 0x0

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAidlAvailable: osVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiRadioConfigFactory"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "vendor.qti.hardware.radio.qtiradioconfig.IQtiRadioConfig/default"

    .line 47
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "Security exception while calling into AIDL"

    .line 49
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v1
.end method

.method public static final makeQtiRadioConfig(Landroid/content/Context;)Lcom/qti/phone/IQtiRadioConfigConnectionInterface;
    .locals 2

    .line 26
    sput-object p0, Lcom/qti/phone/QtiRadioConfigFactory;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
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

    .line 32
    :cond_1
    invoke-static {}, Lcom/qti/phone/QtiRadioConfigFactory;->isAidlAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    .line 33
    invoke-static {}, Lcom/qti/phone/QtiRadioConfigFactory;->makeQtiRadioConfigAidl()Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    move-result-object p0

    return-object p0

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCellularSupported="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QtiRadioConfigFactory"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/qti/phone/QtiRadioConfigFactory;->makeQtiRadioConfigNotSupportedHal()Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    move-result-object p0

    return-object p0
.end method

.method private static makeQtiRadioConfigAidl()Lcom/qti/phone/IQtiRadioConfigConnectionInterface;
    .locals 2

    .line 60
    new-instance v0, Lcom/qti/phone/QtiRadioConfigAidl;

    sget-object v1, Lcom/qti/phone/QtiRadioConfigFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qti/phone/QtiRadioConfigAidl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static makeQtiRadioConfigNotSupportedHal()Lcom/qti/phone/IQtiRadioConfigConnectionInterface;
    .locals 1

    .line 56
    new-instance v0, Lcom/qti/phone/QtiRadioConfigNotSupportedHal;

    invoke-direct {v0}, Lcom/qti/phone/QtiRadioConfigNotSupportedHal;-><init>()V

    return-object v0
.end method
