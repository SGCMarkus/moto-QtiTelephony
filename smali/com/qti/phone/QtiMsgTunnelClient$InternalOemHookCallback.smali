.class public interface abstract Lcom/qti/phone/QtiMsgTunnelClient$InternalOemHookCallback;
.super Ljava/lang/Object;
.source "QtiMsgTunnelClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiMsgTunnelClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InternalOemHookCallback"
.end annotation


# virtual methods
.method public abstract getCallBackName()Ljava/lang/String;
.end method

.method public abstract onOemHookConnected()V
.end method

.method public abstract onOemHookDisconnected()V
.end method
