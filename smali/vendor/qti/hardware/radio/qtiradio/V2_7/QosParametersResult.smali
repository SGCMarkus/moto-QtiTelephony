.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;
.super Ljava/lang/Object;
.source "QosParametersResult.java"


# instance fields
.field public defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

.field public qosSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

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

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;

    if-eq v2, v3, :cond_2

    return v1

    .line 26
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;

    .line 27
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 30
    :cond_3
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

    iget-object p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    .line 39
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

    .line 40
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 83
    iget-object v2, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, v9, v1, v5, v6}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x20

    add-long v5, p3, v5

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    .line 85
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x30

    int-to-long v7, v2

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v5, v3

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move-wide v2, v7

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    .line 86
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 90
    iget-object v2, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_0

    .line 92
    new-instance v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;-><init>()V

    mul-int/lit8 v4, v2, 0x30

    int-to-long v4, v4

    .line 93
    invoke-virtual {v3, v9, v1, v4, v5}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    iget-object v4, v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x30

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 57
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".defaultQos = "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .qosSessions = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
