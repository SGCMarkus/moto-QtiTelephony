.class Lcom/qti/phone/QtiPrimaryImeiHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiPrimaryImeiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiPrimaryImeiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiPrimaryImeiHandler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$1;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$1;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$mlogd(Lcom/qti/phone/QtiPrimaryImeiHandler;Ljava/lang/String;)V

    const-string v0, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 89
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "state"

    .line 91
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 94
    iget-object p0, p0, Lcom/qti/phone/QtiPrimaryImeiHandler$1;->this$0:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-static {p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiPrimaryImeiHandler;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
