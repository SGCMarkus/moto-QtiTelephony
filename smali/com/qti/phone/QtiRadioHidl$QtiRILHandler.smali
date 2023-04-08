.class public Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;
.super Landroid/os/Handler;
.source "QtiRadioHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiRILHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioHidl;


# direct methods
.method public constructor <init>(Lcom/qti/phone/QtiRadioHidl;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;->this$0:Lcom/qti/phone/QtiRadioHidl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 636
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "QtiRadioHidl"

    const-string v0, "EVENT_QTIRADIO_SERVICE_DEAD reinitialize ..."

    .line 638
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;->this$0:Lcom/qti/phone/QtiRadioHidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioHidl;->-$$Nest$minitQtiRadioHidl(Lcom/qti/phone/QtiRadioHidl;)V

    .line 640
    invoke-static {}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;->handleRadioDied()V

    :goto_0
    return-void
.end method
