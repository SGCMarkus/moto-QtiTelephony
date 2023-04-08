.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeOfService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService$hidl_discriminator;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    .line 7
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

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

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    if-eq v2, v3, :cond_2

    return v1

    .line 81
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    .line 82
    iget-byte v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    iget-byte v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    if-eq v2, v3, :cond_3

    return v1

    .line 85
    :cond_3
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    iget-object p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getDiscriminator()B
    .locals 0

    .line 68
    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    .line 94
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    .line 95
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 93
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .locals 4

    .line 33
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 35
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    .line 38
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 41
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_3
    :goto_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    check-cast p0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 149
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 158
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown union discriminator (value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_1
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    add-long/2addr p3, v1

    .line 153
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-byte v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ".value = "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->value()B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, ".noinit = "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}"

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()B
    .locals 4

    .line 53
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 55
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_d:B

    .line 58
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService$hidl_discriminator;->getName(B)Ljava/lang/String;

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

    .line 61
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Union is in a corrupted state."

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_3
    :goto_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->hidl_o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method
