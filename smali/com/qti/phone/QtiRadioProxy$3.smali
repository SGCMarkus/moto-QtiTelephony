.class Lcom/qti/phone/QtiRadioProxy$3;
.super Lvendor/qti/hardware/data/dynamicdds/V1_0/IToken$Stub;
.source "QtiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/phone/QtiRadioProxy;->getDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;
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

    .line 1269
    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy$3;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {p0}, Lvendor/qti/hardware/data/dynamicdds/V1_0/IToken$Stub;-><init>()V

    return-void
.end method
