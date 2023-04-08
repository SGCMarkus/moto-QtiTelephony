.class public abstract Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 89
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->DESCRIPTOR:Ljava/lang/String;

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

    .line 112
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 120
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 125
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 131
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 323
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->stopNetworkScanResponse(II)V

    goto/16 :goto_0

    .line 313
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->startNetworkScanResponse(II)V

    goto/16 :goto_0

    .line 303
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNetworkSelectionModeManualResponse(II)V

    goto/16 :goto_0

    .line 293
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNetworkSelectionModeAutomaticResponse(II)V

    goto/16 :goto_0

    .line 281
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 285
    sget-object p4, Lvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getNetworkSelectionModeResponse(IILvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;)V

    goto/16 :goto_0

    .line 271
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNrUltraWidebandIconConfigResponse(II)V

    goto/16 :goto_0

    .line 261
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->sendUserPreferenceForDataDuringVoiceCallResponse(II)V

    goto/16 :goto_0

    .line 249
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getDdsSwitchCapabilityResponse(IIZ)V

    goto/16 :goto_0

    .line 237
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 241
    sget-object p4, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getImeiResponse(IILvendor/qti/hardware/radio/qtiradio/ImeiInfo;)V

    goto/16 :goto_0

    .line 225
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getFacilityLockForAppResponse(III)V

    goto/16 :goto_0

    .line 213
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 217
    sget-object p4, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)V

    goto :goto_0

    .line 201
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getQtiRadioCapabilityResponse(III)V

    goto :goto_0

    .line 189
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onNrConfigResponse(III)V

    goto :goto_0

    .line 177
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNrConfigResponse(III)V

    goto :goto_0

    .line 165
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onEndcStatusResponse(III)V

    goto :goto_0

    .line 153
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onEnableEndcResponse(III)V

    goto :goto_0

    .line 141
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onNrIconTypeResponse(III)V

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
.end method
