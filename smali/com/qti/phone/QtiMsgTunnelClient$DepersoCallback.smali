.class Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QtiMsgTunnelClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiMsgTunnelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DepersoCallback"
.end annotation


# instance fields
.field ERROR:I

.field SUCCESS:I

.field depersoCallBack:Lcom/qti/extphone/IDepersoResCallback;

.field final synthetic this$0:Lcom/qti/phone/QtiMsgTunnelClient;


# direct methods
.method public constructor <init>(Lcom/qti/phone/QtiMsgTunnelClient;Lcom/qti/extphone/IDepersoResCallback;Landroid/os/Message;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->this$0:Lcom/qti/phone/QtiMsgTunnelClient;

    .line 189
    invoke-direct {p0, p3}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->SUCCESS:I

    const/4 p1, 0x1

    .line 186
    iput p1, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->ERROR:I

    .line 190
    iput-object p2, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->depersoCallBack:Lcom/qti/extphone/IDepersoResCallback;

    return-void
.end method


# virtual methods
.method public onOemHookException(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "QtiMsgTunnelClient"

    const-string v1, "DepersoResult ERROR"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->depersoCallBack:Lcom/qti/extphone/IDepersoResCallback;

    iget p0, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->ERROR:I

    invoke-interface {v0, p0, p1}, Lcom/qti/extphone/IDepersoResCallback;->onDepersoResult(II)V

    return-void
.end method

.method public onOemHookResponse([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "QtiMsgTunnelClient"

    if-eqz p1, :cond_0

    const-string p1, "DepersoResult SUCCESS"

    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->depersoCallBack:Lcom/qti/extphone/IDepersoResCallback;

    iget p0, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->SUCCESS:I

    invoke-interface {p1, p0, p2}, Lcom/qti/extphone/IDepersoResCallback;->onDepersoResult(II)V

    goto :goto_0

    :cond_0
    const-string p1, "DepersoResult ERROR"

    .line 199
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p1, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->depersoCallBack:Lcom/qti/extphone/IDepersoResCallback;

    iget p0, p0, Lcom/qti/phone/QtiMsgTunnelClient$DepersoCallback;->ERROR:I

    invoke-interface {p1, p0, p2}, Lcom/qti/extphone/IDepersoResCallback;->onDepersoResult(II)V

    :goto_0
    return-void
.end method
