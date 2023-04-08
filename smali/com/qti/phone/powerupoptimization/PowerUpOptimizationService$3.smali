.class Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$3;
.super Landroid/os/Handler;
.source "PowerUpOptimizationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;


# direct methods
.method constructor <init>(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Landroid/os/Looper;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$3;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$ImsStackCheck;

    .line 385
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$3;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_IMS_STATE, slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$ImsStackCheck;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sub: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$ImsStackCheck;->subId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$ImsStackCheck;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Ljava/lang/String;)V

    .line 387
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$3;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    iget v0, p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$ImsStackCheck;->subId:I

    iget v1, p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$ImsStackCheck;->slotId:I

    iget p1, p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$ImsStackCheck;->retryCount:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->checkImsState(III)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 389
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 390
    iget-object v0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$3;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IMS_STACK_UP, slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$mlog(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;Ljava/lang/String;)V

    .line 391
    iget-object p0, p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService$3;->this$0:Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    invoke-static {p0, p1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;->-$$Nest$monImsStackReadyForSlot(Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;I)V

    :cond_1
    :goto_0
    return-void
.end method
