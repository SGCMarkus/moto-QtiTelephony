.class Lcom/qti/phone/QtiRadioProxy$CbResults;
.super Ljava/lang/Object;
.source "QtiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CbResults"
.end annotation


# instance fields
.field service:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

.field status:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/phone/QtiRadioProxy$CbResults-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy$CbResults;-><init>()V

    return-void
.end method
