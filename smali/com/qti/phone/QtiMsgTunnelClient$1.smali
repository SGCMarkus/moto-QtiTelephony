.class Lcom/qti/phone/QtiMsgTunnelClient$1;
.super Ljava/lang/Object;
.source "QtiMsgTunnelClient.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiMsgTunnelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiMsgTunnelClient;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiMsgTunnelClient;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/qti/phone/QtiMsgTunnelClient$1;->this$0:Lcom/qti/phone/QtiMsgTunnelClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQcRilHookDisconnected()V
    .locals 2

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/qti/phone/QtiMsgTunnelClient$1;->this$0:Lcom/qti/phone/QtiMsgTunnelClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qti/phone/QtiMsgTunnelClient;->-$$Nest$fputmQcRilHookReady(Lcom/qti/phone/QtiMsgTunnelClient;Z)V

    const-string v0, "QtiMsgTunnelClient"

    const-string v1, "QcRilHook Service disconnected, notifying registrants"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/qti/phone/QtiMsgTunnelClient$1;->this$0:Lcom/qti/phone/QtiMsgTunnelClient;

    invoke-static {v0}, Lcom/qti/phone/QtiMsgTunnelClient;->-$$Nest$mnotifyOemHookCallbacks(Lcom/qti/phone/QtiMsgTunnelClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onQcRilHookReady()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/qti/phone/QtiMsgTunnelClient$1;->this$0:Lcom/qti/phone/QtiMsgTunnelClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qti/phone/QtiMsgTunnelClient;->-$$Nest$fputmQcRilHookReady(Lcom/qti/phone/QtiMsgTunnelClient;Z)V

    const-string v0, "QtiMsgTunnelClient"

    const-string v1, "QcRilHook Service ready, notifying registrants"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/qti/phone/QtiMsgTunnelClient$1;->this$0:Lcom/qti/phone/QtiMsgTunnelClient;

    invoke-static {p0}, Lcom/qti/phone/QtiMsgTunnelClient;->-$$Nest$mnotifyOemHookCallbacks(Lcom/qti/phone/QtiMsgTunnelClient;)V

    return-void
.end method
