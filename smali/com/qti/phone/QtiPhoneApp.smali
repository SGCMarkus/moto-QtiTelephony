.class public Lcom/qti/phone/QtiPhoneApp;
.super Landroid/app/Application;
.source "QtiPhoneApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    const-string v0, "QtiPhoneApp"

    const-string v1, "onCreate"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0}, Lcom/qti/phone/QtiMsgTunnelClient;->init(Landroid/content/Context;)V

    return-void
.end method
