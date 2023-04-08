.class final Lcom/qti/phone/subsidylock/SubsidyDeviceController$SubsidyDeviceHandler;
.super Landroid/os/Handler;
.source "SubsidyDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/subsidylock/SubsidyDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubsidyDeviceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;


# direct methods
.method constructor <init>(Lcom/qti/phone/subsidylock/SubsidyDeviceController;Landroid/os/Looper;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$SubsidyDeviceHandler;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    .line 133
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$SubsidyDeviceHandler;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0, v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$mdecideAndSetPrimarySlot(Lcom/qti/phone/subsidylock/SubsidyDeviceController;Z)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$SubsidyDeviceHandler;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$msetPrimaryCardIfRequired(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)V

    :goto_0
    return-void
.end method
