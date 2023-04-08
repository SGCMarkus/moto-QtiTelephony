.class public Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$PowerUpOptHandler;
.super Landroid/os/Handler;
.source "PowerUpOptimizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerUpOptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;


# direct methods
.method constructor <init>(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Landroid/os/Looper;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$PowerUpOptHandler;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    .line 526
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 531
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object p1, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$PowerUpOptHandler;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    const-string v0, "EVENT_RIL_CRASH ... Call handleSendPhoneReadyOnRildCrash();"

    invoke-static {p1, v0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Ljava/lang/String;)V

    .line 534
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$PowerUpOptHandler;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    invoke-static {p0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$mhandleSendPhoneReadyOnRildCrash(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;)V

    :goto_0
    return-void
.end method
