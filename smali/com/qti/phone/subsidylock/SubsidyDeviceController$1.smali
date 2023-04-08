.class Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;
.super Landroid/content/BroadcastReceiver;
.source "SubsidyDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/subsidylock/SubsidyDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;


# direct methods
.method constructor <init>(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p0

    const-string v0, "subscription"

    .line 101
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, v4, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 100
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string v0, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 104
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "state"

    .line 106
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 109
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmContext(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->isValidSlotId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmRadioState(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)[I

    move-result-object v0

    aput p2, v0, p1

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$misRadioOnForAllSlots(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$misAirplaneModeOn(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmRetrySettingPrimaryCard(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 114
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p2}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0, v3}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fputmRetrySettingPrimaryCard(Lcom/qti/phone/subsidylock/SubsidyDeviceController;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "android.telephony.extra.SIM_STATE"

    .line 93
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 95
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 98
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0, p1, p2}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$mhandleSimStateChanged(Lcom/qti/phone/subsidylock/SubsidyDeviceController;II)V

    :cond_4
    :goto_1
    return-void
.end method
