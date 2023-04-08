.class public interface abstract Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;
.super Ljava/lang/Object;
.source "ISubscriptionManager.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.qti.hardware.data.dynamicdds@1.0::ISubscriptionManager"

    .line 23
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    instance-of v3, v2, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    if-eqz v3, :cond_1

    .line 26
    check-cast v2, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    return-object v2

    .line 29
    :cond_1
    new-instance v2, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager$Proxy;

    invoke-direct {v2, p0}, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 32
    :try_start_0
    invoke-interface {v2}, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDynamicSubscriptionChange(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
