.class public final Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;
.super Ljava/lang/Object;
.source "RadioAccessSpecifierBands.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tag:I

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getTag()I

    move-result p1

    invoke-direct {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0

    .line 218
    iput p1, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tag:I

    .line 219
    iput-object p2, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const-string p0, "ngranBands"

    return-object p0

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "eutranBands"

    return-object p0

    :cond_2
    const-string p0, "utranBands"

    return-object p0

    :cond_3
    const-string p0, "geranBands"

    return-object p0

    :cond_4
    const-string p0, "noinit"

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 184
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public getEutranBands()[I
    .locals 1

    const/4 v0, 0x3

    .line 87
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 88
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getGeranBands()[I
    .locals 1

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 58
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getNgranBands()[I
    .locals 1

    const/4 v0, 0x4

    .line 102
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 103
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public getNoinit()Z
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 43
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 32
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tag:I

    return p0
.end method

.method public getUtranBands()[I
    .locals 1

    const/4 v0, 0x2

    .line 72
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_assertTag(I)V

    .line 73
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_value:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 175
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 170
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    .line 164
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 165
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    .line 159
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 160
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void

    .line 154
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 155
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setEutranBands([I)V
    .locals 1

    const/4 v0, 0x3

    .line 92
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setGeranBands([I)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setNgranBands([I)V
    .locals 1

    const/4 v0, 0x4

    .line 107
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setUtranBands([I)V
    .locals 1

    const/4 v0, 0x2

    .line 77
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tag:I

    const-string v1, ")"

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor.qti.hardware.radio.qtiradio.RadioAccessSpecifierBands.ngranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor.qti.hardware.radio.qtiradio.RadioAccessSpecifierBands.eutranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor.qti.hardware.radio.qtiradio.RadioAccessSpecifierBands.utranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor.qti.hardware.radio.qtiradio.RadioAccessSpecifierBands.geranBands("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor.qti.hardware.radio.qtiradio.RadioAccessSpecifierBands.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getNoinit()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 128
    iget p2, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget p2, p0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->_tag:I

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getNgranBands()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getEutranBands()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getUtranBands()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getGeranBands()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->getNoinit()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return-void
.end method
