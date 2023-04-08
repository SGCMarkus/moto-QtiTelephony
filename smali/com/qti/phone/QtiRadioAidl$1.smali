.class Lcom/qti/phone/QtiRadioAidl$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiRadioAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioAidl;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioAidl;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl$1;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "QtiRadioAidl"

    if-nez p1, :cond_0

    const-string p0, "onReceive: Unsupported action"

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 96
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 99
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$1;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/qti/phone/QtiRadioAidl;->setNrUltraWidebandIconConfig(Lcom/qti/extphone/Token;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Exception while calling setNrUltraWidebandIconConfig"

    .line 101
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
