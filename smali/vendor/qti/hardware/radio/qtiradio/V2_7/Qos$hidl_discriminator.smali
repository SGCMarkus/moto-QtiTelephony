.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos$hidl_discriminator;
.super Ljava/lang/Object;
.source "Qos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# direct methods
.method public static final getName(B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "nr"

    return-object p0

    :cond_1
    const-string p0, "eps"

    return-object p0

    :cond_2
    const-string p0, "noinit"

    return-object p0
.end method
