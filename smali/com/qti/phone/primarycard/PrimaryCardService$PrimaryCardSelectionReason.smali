.class final enum Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;
.super Ljava/lang/Enum;
.source "PrimaryCardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/primarycard/PrimaryCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PrimaryCardSelectionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

.field public static final enum REASON_BOTH_CMCC_AND_BOTH_OLD_OR_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

.field public static final enum REASON_BOTH_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

.field public static final enum REASON_NO_CMCC:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

.field public static final enum REASON_ONE_CMCC_AND_BOTH_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

.field public static final enum REASON_ONE_CMCC_AND_BOTH_OLD:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

.field public static final enum REASON_ONE_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

.field public static final enum REASON_UNKNOWN:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const-string v1, "REASON_BOTH_CMCC_AND_BOTH_OLD_OR_NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_BOTH_CMCC_AND_BOTH_OLD_OR_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    .line 33
    new-instance v1, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const-string v3, "REASON_BOTH_CMCC_AND_ONE_NEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_BOTH_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    .line 34
    new-instance v3, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const-string v5, "REASON_ONE_CMCC_AND_BOTH_NEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_BOTH_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    .line 35
    new-instance v5, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const-string v7, "REASON_ONE_CMCC_AND_ONE_NEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    .line 36
    new-instance v7, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const-string v9, "REASON_ONE_CMCC_AND_BOTH_OLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_BOTH_OLD:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    .line 37
    new-instance v9, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const-string v11, "REASON_NO_CMCC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_NO_CMCC:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    .line 38
    new-instance v11, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const-string v13, "REASON_UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_UNKNOWN:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 31
    sput-object v13, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->$VALUES:[Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;
    .locals 1

    .line 31
    const-class v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    return-object p0
.end method

.method public static values()[Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;
    .locals 1

    .line 31
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->$VALUES:[Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    invoke-virtual {v0}, [Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    return-object v0
.end method
