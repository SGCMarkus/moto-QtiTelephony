.class public final synthetic Lcom/qti/phone/QtiRadioUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/radio/V1_6/QosSession;

    invoke-static {p1}, Lcom/qti/phone/QtiRadioUtils;->$r8$lambda$VovuGZRsq_GSwE4OB4lz54btpyg(Landroid/hardware/radio/V1_6/QosSession;)Lcom/qti/extphone/QosBearerSession;

    move-result-object p0

    return-object p0
.end method
