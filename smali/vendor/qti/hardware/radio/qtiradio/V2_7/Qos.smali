.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;
.super Ljava/lang/Object;
.source "Qos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos$hidl_discriminator;
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

    .line 26
    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    .line 6
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public eps()Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;
    .locals 4

    .line 54
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 56
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    .line 59
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 62
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_3
    :goto_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    if-eq v2, v3, :cond_2

    return v1

    .line 102
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    .line 103
    iget-byte v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    iget-byte v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    if-eq v2, v3, :cond_3

    return v1

    .line 106
    :cond_3
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    iget-object p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getDiscriminator()B
    .locals 0

    .line 89
    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    .line 115
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    .line 116
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 114
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .locals 4

    .line 34
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 36
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    .line 39
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 42
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_3
    :goto_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    check-cast p0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object p0
.end method

.method public nr()Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;
    .locals 4

    .line 74
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 76
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    .line 79
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 82
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_3
    :goto_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;

    return-object p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 175
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 188
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 189
    invoke-virtual {v0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown union discriminator (value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_1
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 184
    invoke-virtual {v0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 179
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-byte v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, ".nr = "

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->nr()Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->hidl_d:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, ".eps = "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->eps()Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, ".noinit = "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
