.class public abstract Lvendor/qti/hardware/radio/qtiradio/IQtiRadio$Stub;
.super Landroid/os/Binder;
.source "IQtiRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradio/IQtiRadio$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    instance-of v1, v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    if-eqz v1, :cond_1

    .line 113
    check-cast v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio;

    return-object v0

    .line 115
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
