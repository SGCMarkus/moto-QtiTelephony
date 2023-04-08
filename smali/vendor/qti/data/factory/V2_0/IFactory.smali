.class public interface abstract Lvendor/qti/data/factory/V2_0/IFactory;
.super Ljava/lang/Object;
.source "IFactory.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/data/factory/V2_0/IFactory$createDynamicddsISubscriptionManagerCallback;
    }
.end annotation


# virtual methods
.method public abstract createDynamicddsISubscriptionManager(Lvendor/qti/hardware/data/dynamicdds/V1_0/IToken;Lvendor/qti/data/factory/V2_0/IFactory$createDynamicddsISubscriptionManagerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
