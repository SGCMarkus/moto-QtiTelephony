.class Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm$1;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;
    .locals 0

    .line 20
    new-instance p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm$1;->newArray(I)[Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;
    .locals 0

    .line 26
    new-array p0, p1, [Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;

    return-object p0
.end method
