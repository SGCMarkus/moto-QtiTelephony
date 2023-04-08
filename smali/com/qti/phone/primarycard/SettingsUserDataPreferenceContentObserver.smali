.class public Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;
.super Landroid/database/ContentObserver;
.source "SettingsUserDataPreferenceContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 39
    iget-object p0, p0, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->mListener:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;

    if-eqz p0, :cond_0

    .line 40
    invoke-interface {p0}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;->onUserDataPreferenceChanged()V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    const-string v0, "user_preferred_data_sub"

    .line 24
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setOnDataPreferenceChangedListener(Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->mListener:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
