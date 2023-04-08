.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;
.super Ljava/lang/Object;
.source "NrQos.java"


# instance fields
.field public averagingWindowMs:S

.field public downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

.field public fiveQi:S

.field public qfi:B

.field public uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-short v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->fiveQi:S

    .line 11
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 12
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 17
    iput-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->qfi:B

    .line 18
    iput-short v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->averagingWindowMs:S

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

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;

    if-eq v2, v3, :cond_2

    return v1

    .line 31
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;

    .line 32
    iget-short v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->fiveQi:S

    iget-short v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->fiveQi:S

    if-eq v2, v3, :cond_3

    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 41
    :cond_5
    iget-byte v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->qfi:B

    iget-byte v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->qfi:B

    if-eq v2, v3, :cond_6

    return v1

    .line 44
    :cond_6
    iget-short p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->averagingWindowMs:S

    iget-short p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->averagingWindowMs:S

    if-eq p0, p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-short v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->fiveQi:S

    .line 53
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 54
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 55
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->qfi:B

    .line 56
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-short p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->averagingWindowMs:S

    .line 57
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->fiveQi:S

    .line 107
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    const-wide/16 v1, 0xc

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 109
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->qfi:B

    const-wide/16 v0, 0x16

    add-long/2addr p3, v0

    .line 110
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->averagingWindowMs:S

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fiveQi = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-short v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->fiveQi:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .downlink = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .uplink = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .qfi = "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-byte v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->qfi:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .averagingWindowMs = "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-short p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->averagingWindowMs:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
