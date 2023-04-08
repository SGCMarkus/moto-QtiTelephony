.class public Lcom/qti/phone/QtiMsgTunnelClient;
.super Ljava/lang/Object;
.source "QtiMsgTunnelClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;,
        Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/qti/phone/QtiMsgTunnelClient;


# instance fields
.field private mInternalOemHookCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcRilHookReady:Z

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# direct methods
.method static bridge synthetic -$$Nest$fputmQcRilHookReady(Lcom/qti/phone/QtiMsgTunnelClient;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHookReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOemHookCallbacks(Lcom/qti/phone/QtiMsgTunnelClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/phone/QtiMsgTunnelClient;->notifyOemHookCallbacks()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHookReady:Z

    .line 103
    new-instance v0, Lcom/qti/phone/QtiMsgTunnelClient$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiMsgTunnelClient$1;-><init>(Lcom/qti/phone/QtiMsgTunnelClient;)V

    iput-object v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 55
    sput-object p1, Lcom/qti/phone/QtiMsgTunnelClient;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mInternalOemHookCallbacks:Ljava/util/ArrayList;

    .line 57
    new-instance p1, Lcom/qualcomm/qcrilhook/QcRilHook;

    sget-object v0, Lcom/qti/phone/QtiMsgTunnelClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {p1, v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object p1, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qti/phone/QtiMsgTunnelClient;
    .locals 3

    const-class v0, Lcom/qti/phone/QtiMsgTunnelClient;

    monitor-enter v0

    .line 84
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    sget-object v1, Lcom/qti/phone/QtiMsgTunnelClient;->mInstance:Lcom/qti/phone/QtiMsgTunnelClient;

    if-nez v1, :cond_0

    const-string v1, "QtiMsgTunnelClient"

    const-string v2, "QtiMsgTunnelClient instance null !!! "

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    sget-object v1, Lcom/qti/phone/QtiMsgTunnelClient;->mInstance:Lcom/qti/phone/QtiMsgTunnelClient;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 89
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 93
    const-class v0, Lcom/qti/phone/QtiMsgTunnelClient;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/qti/phone/QtiMsgTunnelClient;->mInstance:Lcom/qti/phone/QtiMsgTunnelClient;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/qti/phone/QtiMsgTunnelClient;

    invoke-direct {v1, p0}, Lcom/qti/phone/QtiMsgTunnelClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qti/phone/QtiMsgTunnelClient;->mInstance:Lcom/qti/phone/QtiMsgTunnelClient;

    .line 97
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyOemHookCallbacks()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mInternalOemHookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifying OemHook status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;->getCallBackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiMsgTunnelClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v2, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHookReady:Z

    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v1}, Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;->onOemHookConnected()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v1}, Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;->onOemHookDisconnected()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abortIncrementalScan(I)Z
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHookReady:Z

    const-string v1, "QtiMsgTunnelClient"

    if-nez v0, :cond_0

    const-string p0, "QcRilhook not ready. Bail out"

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "abortIncrementalScan started..."

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilAbortNetworkScan(I)Z

    move-result p0

    return p0
.end method

.method public performIncrementalScan(I)Z
    .locals 3

    .line 118
    iget-boolean v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHookReady:Z

    const/4 v1, 0x0

    const-string v2, "QtiMsgTunnelClient"

    if-nez v0, :cond_0

    const-string p0, "QcRilhook not ready. Bail out"

    .line 119
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 122
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioConfigProxy;->isInSecureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "performIncrementalScan not allowed in Secure Mode"

    .line 123
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v0, "performIncrementalScan started..."

    .line 126
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilPerformIncrManualScan(I)Z

    move-result p0

    return p0
.end method

.method public registerOemHookCallback(Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mInternalOemHookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-direct {p0}, Lcom/qti/phone/QtiMsgTunnelClient;->notifyOemHookCallbacks()V

    return-void
.end method

.method public sendAtelReadyStatus(II)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAtelReadyStatus, isReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiMsgTunnelClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHookReady:Z

    if-nez v0, :cond_0

    const-string p0, "QcRilhook not ready. Bail out"

    .line 172
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 176
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-byte p1, p1

    .line 177
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 179
    iget-object p0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const p1, 0x8001a

    invoke-virtual {p0, p1, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    return-void
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lcom/qti/extphone/IDepersoResCallback;I)V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHookReady:Z

    if-nez v0, :cond_0

    const-string p0, "QtiMsgTunnelClient"

    const-string p1, "QcRilhook not ready. Bail out"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 148
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-nez p1, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 152
    new-array v1, v1, [B

    .line 153
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    .line 156
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 159
    :cond_2
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    new-instance p1, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;

    invoke-direct {p1, p0, p3, v0}, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;-><init>(Lcom/qti/phone/QtiMsgTunnelClient;Lcom/qti/extphone/IDepersoResCallback;Landroid/os/Message;)V

    .line 162
    iget-object p0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const p2, 0x800d8

    invoke-virtual {p0, p2, v1, p1, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    return-void
.end method

.method public unregisterOemHookCallback(Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/qti/phone/QtiMsgTunnelClient;->mInternalOemHookCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
