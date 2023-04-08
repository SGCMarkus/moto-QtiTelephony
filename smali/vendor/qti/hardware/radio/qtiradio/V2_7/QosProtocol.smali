.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/QosProtocol;
.super Ljava/lang/Object;
.source "QosProtocol.java"


# direct methods
.method public static final toString(B)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "UNSPECIFIED"

    return-object p0

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const-string p0, "TCP"

    return-object p0

    :cond_1
    const/16 v0, 0x11

    if-ne p0, v0, :cond_2

    const-string p0, "UDP"

    return-object p0

    :cond_2
    const/16 v0, 0x32

    if-ne p0, v0, :cond_3

    const-string p0, "ESP"

    return-object p0

    :cond_3
    const/16 v0, 0x33

    if-ne p0, v0, :cond_4

    const-string p0, "AH"

    return-object p0

    .line 41
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
