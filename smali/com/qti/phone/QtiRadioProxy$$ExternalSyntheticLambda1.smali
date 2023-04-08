.class public final synthetic Lcom/qti/phone/QtiRadioProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lvendor/qti/data/factory/V2_0/IFactory$createDynamicddsISubscriptionManagerCallback;


# instance fields
.field public final synthetic f$0:Lcom/qti/phone/QtiRadioProxy$CbResults;


# direct methods
.method public synthetic constructor <init>(Lcom/qti/phone/QtiRadioProxy$CbResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy$$ExternalSyntheticLambda1;->f$0:Lcom/qti/phone/QtiRadioProxy$CbResults;

    return-void
.end method


# virtual methods
.method public final onValues(ILvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;)V
    .locals 0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$$ExternalSyntheticLambda1;->f$0:Lcom/qti/phone/QtiRadioProxy$CbResults;

    invoke-static {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->$r8$lambda$qCHhlqygDO_WLLhgqhcXq5NktFM(Lcom/qti/phone/QtiRadioProxy$CbResults;ILvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;)V

    return-void
.end method
