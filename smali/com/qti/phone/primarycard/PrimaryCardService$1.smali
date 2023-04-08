.class Lcom/qti/phone/primarycard/PrimaryCardService$1;
.super Landroid/content/BroadcastReceiver;
.source "PrimaryCardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/primarycard/PrimaryCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/primarycard/PrimaryCardService;


# direct methods
.method constructor <init>(Lcom/qti/phone/primarycard/PrimaryCardService;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardService$1;->this$0:Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "android.telephony.extra.SIM_STATE"

    .line 45
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    .line 47
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x7fffffff

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 49
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 51
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardService$1;->this$0:Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-static {p0, p1, v0, p2}, Lcom/qti/phone/primarycard/PrimaryCardService;->-$$Nest$mhandleSimApplicationStateChanged(Lcom/qti/phone/primarycard/PrimaryCardService;III)V

    :cond_0
    return-void
.end method
