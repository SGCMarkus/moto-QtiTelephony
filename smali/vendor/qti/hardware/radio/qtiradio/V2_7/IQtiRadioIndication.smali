.class public interface abstract Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication;
.super Ljava/lang/Object;
.source "IQtiRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;
    }
.end annotation


# virtual methods
.method public abstract onQosParametersChanged(ILvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
