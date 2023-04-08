.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;
.super Ljava/lang/Object;
.source "EpsQos.java"


# instance fields
.field public downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

.field public qci:S

.field public uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-short v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->qci:S

    .line 11
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 12
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

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

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;

    if-eq v2, v3, :cond_2

    return v1

    .line 25
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;

    .line 26
    iget-short v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->qci:S

    iget-short v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->qci:S

    if-eq v2, v3, :cond_3

    return v1

    .line 29
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 32
    :cond_4
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget-object p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    iget-short v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->qci:S

    .line 41
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 42
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    .line 43
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 88
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->qci:S

    .line 89
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 90
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    const-wide/16 v0, 0xc

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".qci = "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-short v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->qci:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .downlink = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .uplink = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
