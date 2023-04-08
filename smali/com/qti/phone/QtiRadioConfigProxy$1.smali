.class Lcom/qti/phone/QtiRadioConfigProxy$1;
.super Ljava/lang/Object;
.source "QtiRadioConfigProxy.java"

# interfaces
.implements Lcom/qti/phone/IQtiRadioConfigConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioConfigProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioConfigProxy;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioConfigProxy;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 169
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 168
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSecureModeStatusChange(Lcom/qti/extphone/Token;Z)V
    .locals 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecureModeStatusChange enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 176
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x2

    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsimPreferenceResponse status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x3

    .line 183
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 182
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
