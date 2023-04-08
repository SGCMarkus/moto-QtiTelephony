.class public Lcom/qti/phone/QtiMcfgRefreshInfo;
.super Ljava/lang/Object;
.source "QtiMcfgRefreshInfo.java"


# instance fields
.field private mMcfgState:I

.field private mSubId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/qti/phone/QtiMcfgRefreshInfo;->mSubId:I

    .line 20
    iput p2, p0, Lcom/qti/phone/QtiMcfgRefreshInfo;->mMcfgState:I

    return-void
.end method


# virtual methods
.method public getMcfgState()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/qti/phone/QtiMcfgRefreshInfo;->mMcfgState:I

    return p0
.end method

.method public getSubId()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/qti/phone/QtiMcfgRefreshInfo;->mSubId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiMcfgRefreshInfo{ mSubId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/QtiMcfgRefreshInfo;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMcfgState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/phone/QtiMcfgRefreshInfo;->mMcfgState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
