.class public abstract Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 789
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 858
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 859
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 860
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 861
    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 825
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_0
    .array-data 1
        0x41t
        0x2t
        -0x78t
        -0x33t
        -0x23t
        -0x5ct
        0x35t
        -0x6at
        0x3t
        0x5dt
        -0x5ct
        -0x1bt
        0x22t
        0x21t
        -0x63t
        0x7ft
        -0x71t
        0x79t
        0x45t
        -0x24t
        -0x23t
        0x2bt
        0x61t
        0x70t
        0x24t
        0x25t
        -0x3at
        -0x39t
        -0x2t
        0x7ft
        -0x23t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x65t
        -0x7t
        -0x19t
        -0x76t
        -0x3et
        0x58t
        0x68t
        0x25t
        -0x9t
        0x2et
        0x5at
        0x16t
        -0x36t
        0x6dt
        0x16t
        -0x78t
        -0x76t
        0x74t
        -0x57t
        -0x18t
        -0x6t
        -0x8t
        0x54t
        0x78t
        -0x6bt
        0x73t
        -0x67t
        -0x3ft
        -0x7at
        0x75t
        0x66t
        -0x2ft
    .end array-data

    :array_2
    .array-data 1
        -0x34t
        0x4at
        0x5ft
        -0x3dt
        -0x27t
        0x1ct
        0x3ft
        -0x63t
        0x31t
        0x44t
        0x1dt
        0x45t
        -0x64t
        0x29t
        -0xbt
        0x40t
        -0x42t
        -0x63t
        0x70t
        0x2et
        -0x32t
        -0xft
        0xbt
        0x2bt
        0x3ft
        -0x5et
        0x77t
        -0x2t
        -0x26t
        0x0t
        -0x25t
        -0x30t
    .end array-data

    :array_3
    .array-data 1
        -0x29t
        0x75t
        0x76t
        0x55t
        -0x7dt
        -0x24t
        0x70t
        0x54t
        0x10t
        0x57t
        0x78t
        0x57t
        0x4et
        0x60t
        0x41t
        0x2at
        0x34t
        -0xct
        0x56t
        -0x4ft
        0x62t
        -0x16t
        -0x33t
        -0x7t
        -0x63t
        0x50t
        0x21t
        0x68t
        -0x78t
        0x1ct
        0x12t
        0x74t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        0x70t
        0x15t
        0x5at
        0x4at
        0x2dt
        0x1t
        -0x54t
        -0x44t
        -0x71t
        0x2t
        0x61t
        0x67t
        -0x53t
        -0x6t
        0x14t
        0x73t
        -0x6ct
        0x47t
        -0x2dt
        0x67t
        -0x5ft
        0x19t
        0x40t
        0x0t
        0x53t
        0x38t
        -0xft
        0x36t
        0x72t
        -0x77t
        -0x57t
    .end array-data

    :array_5
    .array-data 1
        -0xct
        -0xdt
        0x79t
        -0x32t
        0x4t
        -0x57t
        0x34t
        0x7bt
        -0x6ct
        0x30t
        0x57t
        -0x4ct
        -0x37t
        0x3ct
        -0x10t
        0x59t
        -0x2t
        0x4et
        0x35t
        0xct
        -0x5at
        -0x2t
        -0x7et
        -0x57t
        0x67t
        0xet
        0x19t
        -0xet
        0x11t
        -0x59t
        0x58t
        -0x33t
    .end array-data

    :array_6
    .array-data 1
        0x22t
        -0x51t
        -0x1t
        -0x64t
        -0x12t
        0x65t
        0x5ct
        -0x21t
        -0x60t
        0x2et
        -0x3bt
        0x28t
        -0x21t
        -0x2bt
        -0x1at
        0x30t
        0x6ft
        0x7dt
        0x53t
        -0x41t
        0x6t
        0x61t
        -0x38t
        -0x30t
        0x64t
        0x30t
        -0x64t
        0x5et
        0x2bt
        0x43t
        0x4t
        -0x5dt
    .end array-data

    :array_7
    .array-data 1
        -0x7ct
        0x6et
        0x55t
        -0x71t
        0x5ct
        0x77t
        0x69t
        0x65t
        0x21t
        0x31t
        -0x58t
        0x5et
        -0x44t
        0x4et
        0x58t
        -0x1t
        0x5at
        -0xbt
        -0x65t
        0x51t
        -0x19t
        -0x18t
        -0x70t
        -0x76t
        -0x59t
        -0x4ct
        0x3t
        0x64t
        0x75t
        -0x80t
        -0x7ft
        -0x67t
    .end array-data

    :array_8
    .array-data 1
        0x5bt
        0x61t
        -0x23t
        -0x66t
        -0x35t
        0x74t
        0x65t
        0x4dt
        -0x2bt
        0x20t
        0x3et
        -0x23t
        -0x6t
        -0x4dt
        -0x72t
        0x5bt
        -0x3et
        -0x29t
        -0x59t
        -0x52t
        0x64t
        0x78t
        -0x6ct
        0x54t
        0x1t
        -0xft
        0x47t
        -0x1bt
        0x6ft
        -0x7et
        0x74t
        -0x47t
    .end array-data

    :array_9
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 797
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.4::IQtiRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioResponse"

    const-string v6, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioResponse"

    const-string v7, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    const-string v8, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    const-string v9, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioResponse"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 868
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadioResponse"

    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.3::IQtiRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioResponse"

    packed-switch p1, :pswitch_data_0

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1227
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1

    .line 1216
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1219
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1220
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 1206
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->ping()V

    .line 1209
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1210
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 1193
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->setHALInstrumentation()V

    goto/16 :goto_1

    .line 1159
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1162
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1164
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1166
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1167
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1168
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1169
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge p4, p2, :cond_1

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 1173
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    .line 1175
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 1179
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1176
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v1, 0x0

    .line 1183
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1185
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 1148
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1151
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 1136
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1140
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1141
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 1125
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1128
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1129
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioResponse"

    .line 1113
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1116
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1117
    new-instance p3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;-><init>()V

    .line 1118
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1119
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse;->getQosParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "vendor.qti.hardware.radio.qtiradio@2.6::IQtiRadioResponse"

    .line 1102
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 1105
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1107
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadioResponse;->getQtiRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    goto/16 :goto_1

    .line 1091
    :pswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1096
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse;->onNrConfigResponse(III)V

    goto/16 :goto_1

    .line 1080
    :pswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1083
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1084
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1085
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse;->setNrConfigResponse(III)V

    goto/16 :goto_1

    :pswitch_4
    const-string p1, "vendor.qti.hardware.radio.qtiradio@2.4::IQtiRadioResponse"

    .line 1070
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    new-instance p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 1073
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1074
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadioResponse;->setCarrierInfoForImsiEncryptionResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)V

    goto/16 :goto_1

    .line 1059
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1063
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1064
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse;->onEndcStatusResponse(III)V

    goto/16 :goto_1

    .line 1048
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1051
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1053
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadioResponse;->onEnableEndcResponse(III)V

    goto/16 :goto_1

    :pswitch_7
    const-string p1, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioResponse"

    .line 1037
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1042
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioResponse;->onNrIconTypeResponse(III)V

    goto/16 :goto_1

    .line 1026
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1029
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1030
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1031
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadioResponse;->on5gConfigInfoResponse(III)V

    goto/16 :goto_1

    .line 1015
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1020
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadioResponse;->onNrBearerAllocationResponse_2_1(III)V

    goto/16 :goto_1

    .line 1003
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1007
    new-instance p4, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;-><init>()V

    .line 1008
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1009
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadioResponse;->onUpperLayerIndInfoResponse(IILvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V

    goto/16 :goto_1

    .line 991
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    new-instance p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 994
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 995
    new-instance p3, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 996
    invoke-virtual {p3, p2}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 997
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->sendCdmaSmsResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    goto/16 :goto_1

    .line 979
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 983
    new-instance p4, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;-><init>()V

    .line 984
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 985
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->onSignalStrengthResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V

    goto/16 :goto_1

    .line 968
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 973
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->onNrBearerAllocationResponse(III)V

    goto/16 :goto_1

    .line 956
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 960
    new-instance p4, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    invoke-direct {p4}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;-><init>()V

    .line 961
    invoke-virtual {p4, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 962
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->onNrDcParamResponse(IILvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V

    goto :goto_1

    .line 945
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 950
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->on5gStatusResponse(III)V

    goto :goto_1

    .line 934
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 939
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->onEnable5gOnlyResponse(III)V

    goto :goto_1

    .line 923
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 928
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->onDisable5gResponse(III)V

    goto :goto_1

    .line 912
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 917
    invoke-interface {p0, p1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioResponse;->onEnable5gResponse(III)V

    goto :goto_1

    :pswitch_13
    const-string p1, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioResponse"

    .line 901
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    new-instance p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;-><init>()V

    .line 904
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 906
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;->getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioResponse"

    .line 880
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
