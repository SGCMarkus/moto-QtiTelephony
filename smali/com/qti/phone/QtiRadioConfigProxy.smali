.class public Lcom/qti/phone/QtiRadioConfigProxy;
.super Ljava/lang/Object;
.source "QtiRadioConfigProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiRadioConfigProxy$ClientBinderDeathRecipient;,
        Lcom/qti/phone/QtiRadioConfigProxy$Transaction;,
        Lcom/qti/phone/QtiRadioConfigProxy$Result;,
        Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context; = null

.field private static mIsInSecureMode:Z = false


# instance fields
.field private final EVENT_GET_SECURE_MODE_STATUS_RESPONSE:I

.field private final EVENT_ON_MSIM_PREFERENCE_RESPONSE:I

.field private final EVENT_ON_SECURE_MODE_STATUS_CHANGE:I

.field private FAILED:Z

.field private final SECURE_MODE_STATUS_BAR_ICON:Ljava/lang/String;

.field private SUCCESS:Z

.field private final mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/extphone/IExtPhoneCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIndex:I

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qti/phone/QtiRadioConfigProxy$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

.field mQtiRadioConfigCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

.field private volatile mSerial:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSecureModeStatusResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSecureModeStatusChange(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->onSecureModeStatusChange(Lcom/qti/extphone/Token;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMsimPreferenceResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_GET_SECURE_MODE_STATUS_RESPONSE:I

    const/4 v1, 0x2

    .line 37
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_SECURE_MODE_STATUS_CHANGE:I

    const/4 v1, 0x3

    .line 38
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_MSIM_PREFERENCE_RESPONSE:I

    const-string v1, "secure_mode"

    .line 40
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->SECURE_MODE_STATUS_BAR_ICON:Ljava/lang/String;

    .line 45
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QtiRadioConfigProxyBgThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThread:Landroid/os/HandlerThread;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    .line 48
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mSerial:I

    .line 51
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mClientIndex:I

    .line 54
    iput-boolean v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->SUCCESS:Z

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->FAILED:Z

    .line 164
    new-instance v0, Lcom/qti/phone/QtiRadioConfigProxy$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiRadioConfigProxy$1;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfigCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    .line 58
    sput-object p1, Lcom/qti/phone/QtiRadioConfigProxy;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/qti/phone/QtiRadioConfigFactory;->makeQtiRadioConfig(Landroid/content/Context;)Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    .line 60
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfigCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    invoke-interface {v0, v1}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->registerCallback(Lcom/qti/phone/IQtiRadioConfigConnectionCallback;)V

    .line 61
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 62
    iget-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 63
    iget-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->setLooper(Landroid/os/Looper;)V

    return-void
.end method

.method private addCallback(Lcom/qti/extphone/IExtPhoneCallback;)Z
    .locals 4

    .line 231
    invoke-interface {p1}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 234
    invoke-interface {v3}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "QtiRadioConfigProxy"

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found an existing callback with the same binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->FAILED:Z

    monitor-exit v1

    return p0

    :cond_1
    const-string v0, "QtiRadioConfigProxy"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-boolean p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->SUCCESS:Z

    return p0

    :catchall_0
    move-exception p0

    .line 242
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private getNextToken()Lcom/qti/extphone/Token;
    .locals 2

    .line 161
    new-instance v0, Lcom/qti/extphone/Token;

    iget v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mSerial:I

    invoke-direct {v0, v1}, Lcom/qti/extphone/Token;-><init>(I)V

    return-object v0
.end method

.method private getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 8

    .line 319
    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    const-string v4, "QtiRadioConfigProxy"

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSecureModeStatusResponse: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 325
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "QtiRadioConfigProxy"

    const-string v0, "getSecureModeStatusResponse: Exception"

    .line 329
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    :goto_1
    sput-boolean p3, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 332
    invoke-direct {p0, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    return-void

    .line 331
    :goto_2
    sput-boolean p3, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 332
    invoke-direct {p0, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    .line 333
    throw p1
.end method

.method private isClientValid(Lcom/qti/extphone/Client;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p1}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 194
    invoke-interface {v2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    .line 195
    monitor-exit v1

    return p0

    .line 198
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "QtiRadioConfigProxy"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This client is unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception p0

    .line 198
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const-string p0, "QtiRadioConfigProxy"

    const-string p1, "Invalid client"

    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static isInSecureMode()Z
    .locals 1

    .line 390
    sget-boolean v0, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    return v0
.end method

.method private onSecureModeStatusChange(Lcom/qti/extphone/Token;Z)V
    .locals 7

    .line 338
    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    .line 339
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    const-string v3, "QtiRadioConfigProxy"

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSecureModeStatusChange: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-interface {v2, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onSecureModeStatusChange(Z)V

    .line 344
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "QtiRadioConfigProxy"

    const-string v1, "onSecureModeStatusChange: Exception"

    .line 348
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    :goto_1
    sput-boolean p2, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 351
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    return-void

    .line 350
    :goto_2
    sput-boolean p2, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 351
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    .line 352
    throw p1
.end method

.method private removeCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 4

    .line 247
    invoke-interface {p1}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCallback: callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " binder = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 251
    invoke-interface {v2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "QtiRadioConfigProxy"

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing callback = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    monitor-exit p1

    return-void

    .line 257
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeClientFromInflightRequests(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    .line 263
    iget-object v2, v2, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeClientFromInflightRequests: Token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiRadioConfigProxy"

    .line 264
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setLooper(Landroid/os/Looper;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8

    .line 375
    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    const-string v4, "QtiRadioConfigProxy"

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setsetMsimPreferenceResponse: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 379
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-interface {v3, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 381
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 383
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "QtiRadioConfigProxy"

    const-string p2, "onSecureModeStatusChange: Exception"

    .line 385
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private toggleSecureModeIcon(Z)V
    .locals 4

    .line 356
    sget-object v0, Lcom/qti/phone/QtiRadioConfigProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "QtiRadioConfigProxy"

    const-string v2, "Secure Mode status bar icon disabled from config."

    .line 357
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string v0, "secure_mode"

    if-eqz p1, :cond_0

    const-string p1, "Showing the Secure Mode icon"

    .line 360
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const p1, 0x108002f

    const/4 v1, 0x0

    sget-object v2, Lcom/qti/phone/QtiRadioConfigProxy;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0024

    .line 365
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Removing the Secure Mode icon"

    .line 367
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "QtiRadioConfigProxy"

    const-string v1, "getSecureModeStatus"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->getSecureModeStatus(Lcom/qti/extphone/Token;)V

    return-object v0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-interface {p2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/qti/phone/QtiRadioConfigProxy$ClientBinderDeathRecipient;

    invoke-direct {v1, p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy$ClientBinderDeathRecipient;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/IExtPhoneCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 211
    sget-object v2, Lcom/qti/phone/QtiRadioConfigProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallback: uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callerPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "callback = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "binder = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QtiRadioConfigProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->addCallback(Lcom/qti/extphone/IExtPhoneCallback;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->SUCCESS:Z

    if-ne v0, v3, :cond_0

    .line 216
    new-instance v0, Lcom/qti/extphone/Client;

    iget v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mClientIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mClientIndex:I

    invoke-direct {v0, v3, v1, p1, p2}, Lcom/qti/extphone/Client;-><init>(IILjava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "registerCallback: client = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "registerCallback: callback could not be added."

    .line 220
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method retrieveCallbacks(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/qti/extphone/IExtPhoneCallback;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    .line 302
    iget-object p1, p1, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;->mClient:Lcom/qti/extphone/Client;

    .line 303
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This client is invalid now: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioConfigProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCallbackList:Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsimPreference: MsimPreference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qti/extphone/MsimPreference;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    const-string v4, "setMsimPreference"

    invoke-direct {v3, p0, v0, v4, p1}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->setMsimPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/MsimPreference;)V

    return-object v0
.end method

.method public setMsimPreference(Lcom/qti/extphone/MsimPreference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->setMsimPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/MsimPreference;)V

    return-void
.end method

.method public unregisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->removeCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->removeClientFromInflightRequests(Lcom/qti/extphone/IExtPhoneCallback;)V

    return-void
.end method
