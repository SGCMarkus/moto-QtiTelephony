.class final Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;
.super Landroid/os/Handler;
.source "QtiTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QtiTelephonyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiTelephony;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiTelephony;Landroid/os/Looper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;->this$0:Lcom/qti/phone/QtiTelephony;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;->this$0:Lcom/qti/phone/QtiTelephony;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qti/phone/QtiTelephony;->-$$Nest$mlogd(Lcom/qti/phone/QtiTelephony;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;->this$0:Lcom/qti/phone/QtiTelephony;

    const-string v1, "EVENT_MCFG_REFRESH_IND "

    invoke-static {v0, v1}, Lcom/qti/phone/QtiTelephony;->-$$Nest$mlogd(Lcom/qti/phone/QtiTelephony;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyHandler;->this$0:Lcom/qti/phone/QtiTelephony;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiMcfgRefreshInfo;

    invoke-static {p0, p1}, Lcom/qti/phone/QtiTelephony;->-$$Nest$mhandleMcfgRefreshInfo(Lcom/qti/phone/QtiTelephony;Lcom/qti/phone/QtiMcfgRefreshInfo;)V

    :goto_0
    return-void
.end method
