.class final Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;
.super Landroid/os/Handler;
.source "QtiPrimaryImeiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiPrimaryImeiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrimaryImeiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiPrimaryImeiHandler;Landroid/os/Looper;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    const-string v1, " EVENT_RADIO_STATE_CHANGE "

    invoke-static {v0, v1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mhandleRadioPowerStateChanged(Lcom/qti/phone/QtiPrimaryImeiHandler;II)V

    goto/16 :goto_3

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_IMEI_IND: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    move v0, v3

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmPhoneCount(Lcom/qti/phone/QtiPrimaryImeiHandler;)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " clearing token"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v5}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " of slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v2, v3}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fputmReceivedImeiCount(Lcom/qti/phone/QtiPrimaryImeiHandler;I)V

    .line 154
    iget-object v2, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object v2

    aput-object v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_3
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiImeiInfo;

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mupdateImeiInfo(Lcom/qti/phone/QtiPrimaryImeiHandler;ILcom/qti/extphone/QtiImeiInfo;)V

    goto/16 :goto_3

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_IMEI_RESPONSE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    aput-object v1, v0, v2

    .line 142
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiImeiInfo;

    invoke-static {p0, v2, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mupdateImeiInfo(Lcom/qti/phone/QtiPrimaryImeiHandler;ILcom/qti/extphone/QtiImeiInfo;)V

    goto :goto_3

    .line 127
    :cond_5
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    const-string v0, "EVENT_GET_IMEI"

    invoke-static {p1, v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p1, v3}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fputmReceivedImeiCount(Lcom/qti/phone/QtiPrimaryImeiHandler;I)V

    .line 129
    :goto_1
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmPhoneCount(Lcom/qti/phone/QtiPrimaryImeiHandler;)I

    move-result p1

    if-ge v3, p1, :cond_6

    .line 131
    :try_start_0
    iget-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmRequestToken(Lcom/qti/phone/QtiPrimaryImeiHandler;)[Lcom/qti/extphone/Token;

    move-result-object p1

    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {v0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmQtiRadioProxy(Lcom/qti/phone/QtiPrimaryImeiHandler;)Lcom/qti/phone/QtiRadioProxy;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/qti/phone/QtiRadioProxy;->getImei(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v0

    aput-object v0, p1, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 133
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$PrimaryImeiHandler;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mloge(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method
