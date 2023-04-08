.class public Lcom/qti/phone/QtiRadioConfigAidl;
.super Ljava/lang/Object;
.source "QtiRadioConfigAidl.java"

# interfaces
.implements Lcom/qti/phone/IQtiRadioConfigConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;,
        Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;,
        Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final UNSOL:Lcom/qti/extphone/Token;

.field private mCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

.field private mContext:Landroid/content/Context;

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

.field private mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

.field private mQtiRadioConfigBinder:Landroid/os/IBinder;

.field private mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

.field private mQtiRadioConfigIndication:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

.field private mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;


# direct methods
.method static bridge synthetic -$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->UNSOL:Lcom/qti/extphone/Token;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHalErrorcode(Lcom/qti/phone/QtiRadioConfigAidl;I)Lcom/qti/extphone/Status;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigAidl;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitQtiRadioConfig(Lcom/qti/phone/QtiRadioConfigAidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->initQtiRadioConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetQtiRadioConfigHalInterfaces(Lcom/qti/phone/QtiRadioConfigAidl;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->resetQtiRadioConfigHalInterfaces()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QtiRadioConfigAidl"

    .line 27
    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->LOG_TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/qti/extphone/Token;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/qti/extphone/Token;-><init>(I)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->UNSOL:Lcom/qti/extphone/Token;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mContext:Landroid/content/Context;

    .line 48
    new-instance p1, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    invoke-direct {p1, p0}, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;-><init>(Lcom/qti/phone/QtiRadioConfigAidl;)V

    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    .line 49
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->initQtiRadioConfig()V

    return-void
.end method

.method private convertHalErrorcode(I)Lcom/qti/extphone/Status;
    .locals 0

    .line 196
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

.method private initQtiRadioConfig()V
    .locals 5

    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "initQtiRadioConfig"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vendor.qti.hardware.radio.qtiradioconfig.IQtiRadioConfig/default"

    .line 55
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string p0, "QtiRadioConfigAidl"

    const-string v0, "initQtiRadioConfig failed"

    .line 57
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "QtiRadioConfigAidl"

    const-string v0, "Get binder for IQtiRadioConfig stable AIDL failed"

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "QtiRadioConfigAidl"

    const-string v2, "Get binder for IQtiRadioConfig stable AIDL is successful"

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "QtiRadioConfigAidl"

    const-string v3, "initQtiRadioConfig: Failed to link to death recipient"

    .line 73
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_1
    new-instance v2, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;

    invoke-direct {v2, p0}, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;-><init>(Lcom/qti/phone/QtiRadioConfigAidl;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    .line 78
    new-instance v2, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;

    invoke-direct {v2, p0}, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;-><init>(Lcom/qti/phone/QtiRadioConfigAidl;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigIndication:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    invoke-interface {v0, v3, v2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->setCallbacks(Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "QtiRadioConfigAidl"

    const-string v4, "initQtiRadioConfig: setCallbacks failed"

    .line 83
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_1
    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 86
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private resetQtiRadioConfigHalInterfaces()V
    .locals 4

    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "resetQtiRadioConfigHalInterfaces: Resetting HAL interfaces."

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 221
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "QtiRadioConfigAidl"

    const-string v3, "Failed to unlink IQtiRadioConfig death recipient"

    .line 223
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_1
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 228
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    .line 229
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigIndication:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getSecureModeStatus(Lcom/qti/extphone/Token;)V
    .locals 4

    .line 91
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecureModeStatus: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->getSecureModeStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p0, "getSecureModeStatus Failed."

    .line 99
    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/qti/phone/IQtiRadioConfigConnectionCallback;)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    return-void
.end method

.method public setMsimPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/MsimPreference;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsimPreference: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    invoke-virtual {p2}, Lcom/qti/extphone/MsimPreference;->get()I

    move-result p2

    invoke-interface {v1, v0, p2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->setMsimPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 112
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string p0, "setMsimPreference Failed."

    .line 113
    invoke-static {v2, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
