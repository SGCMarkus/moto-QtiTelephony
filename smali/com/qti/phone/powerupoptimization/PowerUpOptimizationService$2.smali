.class Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$2;
.super Ljava/lang/Object;
.source "PowerUpOptimizationService.java"

# interfaces
.implements Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;


# direct methods
.method constructor <init>(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$2;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallBackName()Ljava/lang/String;
    .locals 0

    const-string p0, "PowerUpOptService"

    return-object p0
.end method

.method public onOemHookConnected()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$2;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    const-string v1, "QcRilHook Service ready"

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$2;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$fputmIsOemHookConnected(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Z)V

    .line 152
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$2;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    invoke-static {p0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$mtrySendPhoneReadyForAllSlots(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;)V

    return-void
.end method

.method public onOemHookDisconnected()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$2;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    const-string v1, "QcRilHook Service disconnected"

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$2;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$fputmIsOemHookConnected(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Z)V

    return-void
.end method
