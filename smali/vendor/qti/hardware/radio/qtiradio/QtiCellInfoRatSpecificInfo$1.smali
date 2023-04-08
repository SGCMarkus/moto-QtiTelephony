.class Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo$1;
.super Ljava/lang/Object;
.source "QtiCellInfoRatSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;
    .locals 1

    .line 134
    new-instance p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;-><init>(Landroid/os/Parcel;Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo-IA;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo$1;->newArray(I)[Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;
    .locals 0

    .line 138
    new-array p0, p1, [Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    return-object p0
.end method
