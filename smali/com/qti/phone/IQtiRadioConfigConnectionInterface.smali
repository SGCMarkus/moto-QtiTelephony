.class public interface abstract Lcom/qti/phone/IQtiRadioConfigConnectionInterface;
.super Ljava/lang/Object;
.source "IQtiRadioConfigConnectionInterface.java"


# virtual methods
.method public abstract getSecureModeStatus(Lcom/qti/extphone/Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/qti/phone/IQtiRadioConfigConnectionCallback;)V
.end method

.method public abstract setMsimPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/MsimPreference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
