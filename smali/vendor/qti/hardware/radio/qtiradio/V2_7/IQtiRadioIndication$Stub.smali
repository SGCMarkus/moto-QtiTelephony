.class public abstract Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IQtiRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 600
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

    .line 663
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 664
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 665
    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 666
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

    .line 633
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x7

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

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        -0x50t
        0x71t
        -0x4et
        0x70t
        0xdt
        0x31t
        -0x6ft
        0x2ct
        0xft
        -0x6at
        0xdt
        -0x23t
        0x3ft
        -0x4dt
        0x22t
        0x77t
        0x5et
        0x19t
        -0xct
        -0x20t
        -0x29t
        -0x3et
        -0xbt
        -0x1bt
        -0x15t
        0x59t
        0x5at
        -0x43t
        -0x6t
        -0x32t
        0x5et
        0x21t
    .end array-data

    :array_1
    .array-data 1
        -0x59t
        0x7dt
        0x67t
        -0x3t
        0x1bt
        -0x3t
        0xct
        0x3ct
        -0x4t
        -0x75t
        0x76t
        -0x59t
        -0x60t
        0x37t
        0x76t
        0x5t
        0x27t
        0x5ct
        0x2t
        -0x44t
        0xft
        -0x8t
        -0x59t
        0x61t
        0x47t
        -0x42t
        -0x6t
        0x18t
        0x75t
        0x5t
        -0x2dt
        0x44t
    .end array-data

    :array_2
    .array-data 1
        -0x40t
        0x35t
        -0x37t
        0x49t
        0x5ft
        0x2t
        0x4dt
        -0x26t
        -0x7at
        -0x48t
        0x6bt
        -0x61t
        0xet
        -0x75t
        -0x4et
        0x6bt
        -0x34t
        -0x79t
        0x30t
        -0x3et
        0x54t
        0x57t
        -0x59t
        0x59t
        -0x53t
        -0x1bt
        -0x1t
        0xat
        -0x5ct
        0x74t
        -0x1t
        0x6at
    .end array-data

    :array_3
    .array-data 1
        0x4et
        -0x5et
        0x59t
        -0x64t
        -0x72t
        -0x77t
        0x51t
        0x56t
        0x46t
        0x33t
        -0x69t
        -0x19t
        -0x66t
        -0x5at
        -0x40t
        -0x1dt
        -0x38t
        0x2bt
        -0x36t
        0x9t
        -0x13t
        -0x6et
        0x7ft
        0x45t
        -0x59t
        0x10t
        0x52t
        0x41t
        0x6ct
        -0x57t
        -0x71t
        0x5ft
    .end array-data

    :array_4
    .array-data 1
        0x0t
        -0x6at
        0x2ct
        0x1et
        -0x2ct
        0x49t
        -0x2dt
        0x1ft
        0x5ft
        0x49t
        0x17t
        0x35t
        0x4dt
        -0x69t
        0x11t
        0x14t
        0x2bt
        0x67t
        0x13t
        0x10t
        0x3dt
        -0x61t
        0x28t
        0x2at
        -0x24t
        0x4at
        0x25t
        0x41t
        -0x2et
        0x1t
        -0x5t
        -0x15t
    .end array-data

    :array_5
    .array-data 1
        0x47t
        0x5et
        -0x6ft
        0x44t
        -0x48t
        0x40t
        0x4dt
        -0x16t
        0x34t
        0x51t
        0x6at
        0x43t
        0x6at
        0x2t
        -0x44t
        0x79t
        -0x2dt
        -0x1ct
        0xct
        -0x67t
        0xct
        0x41t
        -0x2at
        0x5bt
        -0x5dt
        0x4et
        0x7ct
        -0x49t
        0x2et
        -0x3et
        0x49t
        0x6at
    .end array-data

    :array_6
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 608
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioIndication"

    const-string v1, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioIndication"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioIndication"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 673
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

    const-string p4, "vendor.qti.hardware.radio.qtiradio@2.1::IQtiRadioIndication"

    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.0::IQtiRadioIndication"

    packed-switch p1, :pswitch_data_0

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 912
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->notifySyspropsChanged()V

    goto/16 :goto_1

    .line 901
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 904
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 905
    invoke-virtual {p0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 891
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->ping()V

    .line 894
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 878
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->setHALInstrumentation()V

    goto/16 :goto_1

    .line 844
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 847
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 849
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 851
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 852
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 853
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 854
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge p4, p2, :cond_1

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 858
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    .line 860
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 864
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 861
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v1, 0x0

    .line 868
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 870
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 833
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 836
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 821
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 825
    invoke-virtual {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 826
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    .line 810
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 813
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 814
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 815
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioIndication"

    .line 799
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 802
    new-instance p3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;-><init>()V

    .line 803
    invoke-virtual {p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 804
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication;->onQosParametersChanged(ILvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "vendor.qti.hardware.radio.qtiradio@2.5::IQtiRadioIndication"

    .line 790
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 793
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioIndication;->onNrConfigChange(I)V

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "vendor.qti.hardware.radio.qtiradio@2.2::IQtiRadioIndication"

    .line 781
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 784
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication;->onNrIconTypeChange(I)V

    goto :goto_1

    .line 772
    :pswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 775
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadioIndication;->on5gConfigInfoChange(I)V

    goto :goto_1

    .line 763
    :pswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 766
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadioIndication;->onNrBearerAllocationChange_2_1(I)V

    goto :goto_1

    .line 753
    :pswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    new-instance p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;-><init>()V

    .line 756
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 757
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadioIndication;->onUpperLayerIndInfoChange(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)V

    goto :goto_1

    .line 743
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    new-instance p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;-><init>()V

    .line 746
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 747
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioIndication;->onSignalStrengthChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)V

    goto :goto_1

    .line 734
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 737
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioIndication;->onNrBearerAllocationChange(I)V

    goto :goto_1

    .line 724
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    new-instance p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;-><init>()V

    .line 727
    invoke-virtual {p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->readFromParcel(Landroid/os/HwParcel;)V

    .line 728
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioIndication;->onNrDcParamChange(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)V

    goto :goto_1

    .line 715
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 718
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadioIndication;->on5gStatusChange(I)V

    goto :goto_1

    :pswitch_a
    const-string p1, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadioIndication"

    .line 706
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 709
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;->qtiRadioIndication(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const-string v0, "vendor.qti.hardware.radio.qtiradio@2.7::IQtiRadioIndication"

    .line 685
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

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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
