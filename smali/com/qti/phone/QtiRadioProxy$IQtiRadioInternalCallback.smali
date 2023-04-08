.class public Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;
.super Ljava/lang/Object;
.source "QtiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IQtiRadioInternalCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImeiResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V
    .locals 0

    return-void
.end method

.method public onImeiChanged(ILcom/qti/extphone/QtiImeiInfo;)V
    .locals 0

    return-void
.end method

.method public onMcfgRefresh(Lcom/qti/phone/QtiMcfgRefreshInfo;)V
    .locals 0

    return-void
.end method
