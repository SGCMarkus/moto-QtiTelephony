.class Lcom/qti/phone/QtiRadioProxy$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "QtiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioProxy;


# direct methods
.method private constructor <init>(Lcom/qti/phone/QtiRadioProxy;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy$ServiceNotification;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/phone/QtiRadioProxy$ServiceNotification-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy$ServiceNotification;-><init>(Lcom/qti/phone/QtiRadioProxy;)V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1209
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRegistration: fqName = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " name = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "QtiRadioProxy"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "default"

    .line 1210
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "onRegistration: Ignoring."

    .line 1211
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1214
    :cond_0
    iget-object p1, p0, Lcom/qti/phone/QtiRadioProxy$ServiceNotification;->this$0:Lcom/qti/phone/QtiRadioProxy;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$fputmCneDataFactoryAvailable(Lcom/qti/phone/QtiRadioProxy;Z)V

    .line 1215
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$ServiceNotification;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mcallDynamicDdsSwitchOnDemand(Lcom/qti/phone/QtiRadioProxy;)V

    return-void
.end method
