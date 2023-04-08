.class public interface abstract Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;
.super Ljava/lang/Object;
.source "IQtiRadioIndication.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract qtiRadioIndication(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
