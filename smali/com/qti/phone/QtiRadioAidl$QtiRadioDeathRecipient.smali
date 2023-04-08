.class final Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;
.super Ljava/lang/Object;
.source "QtiRadioAidl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QtiRadioDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioAidl;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioAidl;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "QtiRadioAidl"

    const-string v1, "IQtiRadio Died"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$mresetHalInterfaces(Lcom/qti/phone/QtiRadioAidl;)V

    .line 186
    iget-object p0, p0, Lcom/qti/phone/QtiRadioAidl$QtiRadioDeathRecipient;->this$0:Lcom/qti/phone/QtiRadioAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioAidl;->-$$Nest$minitQtiRadio(Lcom/qti/phone/QtiRadioAidl;)V

    .line 187
    invoke-static {}, Lcom/qti/phone/powerupoptimization/PowerUpOptimizationUtils;->handleRadioDied()V

    return-void
.end method
