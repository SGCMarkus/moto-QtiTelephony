.class Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;
.super Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;
.source "QtiTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QtiTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiTelephony;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiTelephony;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;->this$0:Lcom/qti/phone/QtiTelephony;

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMcfgRefresh(Lcom/qti/phone/QtiMcfgRefreshInfo;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;->this$0:Lcom/qti/phone/QtiTelephony;

    const-string v1, "onMcfgRefresh"

    invoke-static {v0, v1}, Lcom/qti/phone/QtiTelephony;->-$$Nest$mlogi(Lcom/qti/phone/QtiTelephony;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;->this$0:Lcom/qti/phone/QtiTelephony;

    invoke-static {v0}, Lcom/qti/phone/QtiTelephony;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiTelephony;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiTelephony$QtiTelephonyCallback;->this$0:Lcom/qti/phone/QtiTelephony;

    invoke-static {p0}, Lcom/qti/phone/QtiTelephony;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiTelephony;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
