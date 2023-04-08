.class Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength$1;
.super Ljava/lang/Object;
.source "WcdmaSignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;
    .locals 0

    .line 16
    new-instance p0, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength$1;->newArray(I)[Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;
    .locals 0

    .line 22
    new-array p0, p1, [Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;

    return-object p0
.end method
