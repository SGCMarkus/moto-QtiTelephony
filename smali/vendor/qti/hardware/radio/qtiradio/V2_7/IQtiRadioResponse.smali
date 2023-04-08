.class public interface abstract Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse;
.super Ljava/lang/Object;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;
    }
.end annotation


# virtual methods
.method public abstract getQosParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
