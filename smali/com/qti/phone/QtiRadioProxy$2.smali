.class Lcom/qti/phone/QtiRadioProxy$2;
.super Ljava/lang/Object;
.source "QtiRadioProxy.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioProxy;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioProxy;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy$2;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1

    const-string p1, "QtiRadioProxy"

    const-string p2, "CnE ISubscriptionManager service is down"

    .line 1193
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$sfgetsDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1196
    :try_start_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$sfgetsDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    move-result-object p2

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy$2;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$fgetmDeathRecipient(Lcom/qti/phone/QtiRadioProxy;)Landroid/os/IHwBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0}, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Failed to unlink the death recipient"

    .line 1198
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1201
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$2;->this$0:Lcom/qti/phone/QtiRadioProxy;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$fputmCneDataFactoryAvailable(Lcom/qti/phone/QtiRadioProxy;Z)V

    const/4 p0, 0x0

    .line 1202
    invoke-static {p0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$sfputsDynamicSubscriptionManager(Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;)V

    return-void
.end method
