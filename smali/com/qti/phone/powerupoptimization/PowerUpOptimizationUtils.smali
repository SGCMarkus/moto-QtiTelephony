.class public Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;
.super Ljava/lang/Object;
.source "PowerUpOptimizationUtils.java"


# static fields
.field private static POWERUP_OPT_PROP_VALUE:I

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static handleRadioDied()V
    .locals 4

    const-string v0, "PowerUpOptimizationUtils"

    const-string v1, "handleRadioDied()..."

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget v1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;->POWERUP_OPT_PROP_VALUE:I

    if-nez v1, :cond_0

    const-string v1, "PowerUpOptimization is not enabled."

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;->sContext:Landroid/content/Context;

    const-class v3, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const-string v3, "SRV_RIL_CRASH_START_MODE"

    .line 36
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    sget-object v2, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Could not start PowerUpOptimizationService"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Successfully started PowerUpOptimizationService"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static prepare(Landroid/content/Context;I)V
    .locals 0

    .line 23
    sput-object p0, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;->sContext:Landroid/content/Context;

    .line 24
    sput p1, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;->POWERUP_OPT_PROP_VALUE:I

    return-void
.end method
