.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;
.super Ljava/lang/Object;
.source "MaybePort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort$hidl_discriminator;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    if-eq v2, v3, :cond_2

    return v1

    .line 80
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    .line 81
    iget-byte v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    iget-byte v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    if-eq v2, v3, :cond_3

    return v1

    .line 84
    :cond_3
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    iget-object p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getDiscriminator()B
    .locals 0

    .line 67
    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    .line 94
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 92
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .locals 4

    .line 32
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 34
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    .line 37
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_3
    :goto_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    check-cast p0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object p0
.end method

.method public range()Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;
    .locals 4

    .line 52
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 54
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    .line 57
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), and hidl_o is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_3
    :goto_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;

    return-object p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 148
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 156
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 157
    invoke-virtual {v0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown union discriminator (value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 152
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-byte v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ".range = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->range()Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->hidl_d:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, ".noinit = "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
