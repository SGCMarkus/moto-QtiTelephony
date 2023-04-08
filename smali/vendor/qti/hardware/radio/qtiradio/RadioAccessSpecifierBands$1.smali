.class Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands$1;
.super Ljava/lang/Object;
.source "RadioAccessSpecifierBands.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;
    .locals 1

    .line 118
    new-instance p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;-><init>(Landroid/os/Parcel;Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands-IA;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands$1;->newArray(I)[Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;
    .locals 0

    .line 122
    new-array p0, p1, [Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;

    return-object p0
.end method
