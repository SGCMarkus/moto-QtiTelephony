.class Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;
.super Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;
.source "QtiPrimaryImeiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiPrimaryImeiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrimaryImeiCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiPrimaryImeiHandler;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getImeiResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getImeiResponse, imei["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/qti/extphone/QtiImeiInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/telephony/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogi(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiPrimaryImeiHandler;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiPrimaryImeiHandler;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    .line 232
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result p3

    .line 231
    invoke-virtual {p0, v0, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 227
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " getImeiResponse, ignore "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    return-void
.end method

.method public onImeiChanged(ILcom/qti/extphone/QtiImeiInfo;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImeiChanged, imei["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qti/extphone/QtiImeiInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/telephony/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogi(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiPrimaryImeiHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiCallback;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiPrimaryImeiHandler;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
