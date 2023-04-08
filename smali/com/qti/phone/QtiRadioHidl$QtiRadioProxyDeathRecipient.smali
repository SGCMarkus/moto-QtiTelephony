.class final Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "QtiRadioHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QtiRadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioHidl;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioHidl;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2

    const-string p1, "QtiRadioHidl"

    const-string p2, "serviceDied"

    .line 607
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object p1, p0, Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioHidl;

    invoke-static {p1}, Lcom/qti/phone/QtiRadioHidl;->-$$Nest$mresetServiceAndRequestList(Lcom/qti/phone/QtiRadioHidl;)V

    .line 609
    iget-object p1, p0, Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioHidl;

    invoke-static {p1}, Lcom/qti/phone/QtiRadioHidl;->-$$Nest$fgetmQtiRILHandler(Lcom/qti/phone/QtiRadioHidl;)Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioHidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioHidl;->-$$Nest$fgetmQtiRILHandler(Lcom/qti/phone/QtiRadioHidl;)Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
