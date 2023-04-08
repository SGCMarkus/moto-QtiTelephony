.class public abstract Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IQtiRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 68
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 99
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 104
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 110
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 191
    :pswitch_0
    sget-object p1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->networkScanResult(Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;)V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onMcfgRefresh(II)V

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onEpdgOverCellularDataSupported(Z)V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-interface {p0, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDataDeactivateDelayTime(J)V

    goto :goto_0

    .line 157
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDdsSwitchRecommendation(I)V

    goto :goto_0

    .line 149
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDdsSwitchCriteriaChange(Z)V

    goto :goto_0

    .line 143
    :pswitch_6
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDdsSwitchCapabilityChange()V

    goto :goto_0

    .line 136
    :pswitch_7
    sget-object p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onImeiChange(Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)V

    goto :goto_0

    .line 128
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onNrConfigChange(I)V

    goto :goto_0

    .line 120
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onNrIconTypeChange(I)V

    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
.end method
