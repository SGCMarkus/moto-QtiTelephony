.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;
.super Ljava/lang/Object;
.source "QosBandwidth.java"


# instance fields
.field public guaranteedBitrateKbps:I

.field public maxBitrateKbps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

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

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    if-eq v2, v3, :cond_2

    return v1

    .line 25
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 26
    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    iget v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    if-eq v2, v3, :cond_3

    return v1

    .line 29
    :cond_3
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    const-wide/16 v0, 0x4

    add-long/2addr p3, v0

    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".maxBitrateKbps = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .guaranteedBitrateKbps = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
