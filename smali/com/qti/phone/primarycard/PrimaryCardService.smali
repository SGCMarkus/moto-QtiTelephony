.class public Lcom/qti/phone/primarycard/PrimaryCardService;
.super Landroid/app/Service;
.source "PrimaryCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDirectBootContext:Landroid/content/Context;

.field private mNumPhones:I

.field private mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;


# direct methods
.method public static synthetic $r8$lambda$ccsBEnxwfOoEmjsQEoDAglt5LVs(Lcom/qti/phone/primarycard/PrimaryCardService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->onUserDataPreferenceChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSimApplicationStateChanged(Lcom/qti/phone/primarycard/PrimaryCardService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/primarycard/PrimaryCardService;->handleSimApplicationStateChanged(III)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/qti/phone/primarycard/PrimaryCardService$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/primarycard/PrimaryCardService$1;-><init>(Lcom/qti/phone/primarycard/PrimaryCardService;)V

    iput-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private determinePrimarySlot()I
    .locals 9

    .line 176
    iget v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    new-array v1, v0, [Z

    .line 177
    new-array v0, v0, [Z

    .line 180
    sget-object v2, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_UNKNOWN:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const/4 v3, 0x0

    move v4, v3

    .line 182
    :goto_0
    iget v5, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    if-ge v4, v5, :cond_0

    .line 183
    invoke-static {p0, v4}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->isCmccCardInSlot(Landroid/content/Context;I)Z

    move-result v5

    aput-boolean v5, v1, v4

    .line 184
    iget-object v5, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->isNewCardInSlot(Landroid/content/Context;I)Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isCmccCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNewCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    :cond_0
    aget-boolean v4, v1, v3

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_4

    aget-boolean v7, v1, v5

    if-eqz v7, :cond_4

    .line 193
    aget-boolean v1, v0, v3

    if-eqz v1, :cond_1

    aget-boolean v2, v0, v5

    if-nez v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    aget-boolean v0, v0, v5

    if-nez v0, :cond_3

    .line 198
    :cond_2
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_BOTH_CMCC_AND_BOTH_OLD_OR_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    goto :goto_5

    .line 204
    :cond_3
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_BOTH_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    move v3, v1

    goto :goto_5

    :cond_4
    if-nez v4, :cond_6

    .line 208
    aget-boolean v7, v1, v5

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "No CMCC card inserted. Do nothing."

    .line 243
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_NO_CMCC:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    :goto_1
    move v3, v6

    goto :goto_5

    :cond_6
    :goto_2
    xor-int/2addr v4, v5

    .line 213
    aget-boolean v7, v0, v3

    if-eqz v7, :cond_7

    aget-boolean v8, v0, v5

    if-eqz v8, :cond_7

    .line 217
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_BOTH_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    move v3, v4

    goto :goto_5

    :cond_7
    if-nez v7, :cond_9

    .line 219
    aget-boolean v0, v0, v5

    if-eqz v0, :cond_8

    goto :goto_3

    .line 237
    :cond_8
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_BOTH_OLD:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    goto :goto_5

    .line 222
    :cond_9
    :goto_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 221
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 224
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->isValidSlotIndex(I)Z

    move-result v3

    if-eqz v3, :cond_a

    aget-boolean v0, v1, v0

    if-nez v0, :cond_a

    const-string v0, "old non-CMCC card is the current DDS. Do not change anything"

    .line 226
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 230
    :cond_a
    sget-object v2, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    move v6, v4

    :goto_4
    move-object v0, v2

    goto :goto_1

    .line 247
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primarySlot chosen as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    return v3
.end method

.method private handleAllSubscriptionsLoaded()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->haveSimCardsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SIM cards changed. Starting primary card selection."

    .line 155
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->updateLastKnownSubIds(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->startPrimaryCardSelection()V

    goto :goto_0

    :cond_0
    const-string v0, "No change in SIM cards since last boot"

    .line 161
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleSimApplicationStateChanged(III)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM state changed for slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previous SIMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->getCurrentSlotIdToSubIdMapAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p2}, Lcom/qti/phone/primarycard/PrimaryCardService;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 128
    invoke-static {p2, p3}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->addEntryInCurrentSlotToSubMap(II)V

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sub loaded: slotId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", subId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 131
    invoke-static {p0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->haveAllSubscriptionsLoaded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "all subscriptions loaded."

    .line 134
    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->handleAllSubscriptionsLoaded()V

    goto :goto_0

    :cond_0
    const-string p1, "only one subscription loaded."

    .line 137
    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    if-nez p1, :cond_4

    .line 142
    :cond_2
    invoke-static {p2}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->removeEntryFromCurrentSlotToSubMap(I)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceive: SIM state is absent for slot: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceive: invalid slot index received: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimaryCardService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current SIMs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->getCurrentSlotIdToSubIdMapAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isValidSlotIndex(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 277
    iget p0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "PrimaryCardService"

    .line 286
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onUserDataPreferenceChanged()V
    .locals 3

    .line 271
    invoke-static {p0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->getUserPreferredDataSubIdFromSettingsDb(Landroid/content/Context;)I

    move-result v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings user data preference changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->addSubIdToOldSubIdDatabase(Landroid/content/Context;I)V

    return-void
.end method

.method private showPrimaryCardSelectionPopup(I)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showing primary card selection popup, primarySlotFromAlgo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30800000

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "primary_slot_from_algorithm"

    .line 265
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startPrimaryCardSelection()V
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->determinePrimarySlot()I

    move-result v0

    .line 168
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->showPrimaryCardSelectionPopup(I)V

    goto :goto_0

    :cond_0
    const-string p0, "PrimaryCardService"

    const-string v0, "no usable primary slot could be determined."

    .line 171
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 9

    const-string v0, "PrimaryCardService"

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v1, "PrimaryCardService onCreate +"

    .line 59
    invoke-direct {p0, v1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 60
    iput-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    .line 64
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    const-string v2, "phone"

    .line 66
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 67
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    iput v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    .line 69
    invoke-static {p0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->loadCmccIccIdPrefixList(Landroid/content/Context;)V

    .line 70
    iget-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->loadLastKnowsSubIdsFromDatabase(Landroid/content/Context;)V

    .line 71
    iget-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->loadOldSubIdsFromDatabase(Landroid/content/Context;)V

    .line 74
    new-instance v3, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    .line 75
    new-instance v4, Lcom/qti/phone/primarycard/PrimaryCardService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/qti/phone/primarycard/PrimaryCardService$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/primarycard/PrimaryCardService;)V

    .line 76
    invoke-virtual {v3, v4}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->setOnDataPreferenceChangedListener(Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;)V

    .line 77
    iget-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    invoke-virtual {v3, p0}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->register(Landroid/content/Context;)V

    .line 79
    iget-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x0

    move v4, v3

    .line 87
    :goto_0
    :try_start_0
    iget v5, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    if-ge v4, v5, :cond_1

    .line 88
    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimApplicationState(I)I

    move-result v5

    .line 89
    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionManager;->getSubscriptionIds(I)[I

    move-result-object v6

    if-eqz v6, :cond_0

    .line 90
    array-length v7, v6

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    .line 91
    aget v6, v6, v3

    invoke-direct {p0, v5, v4, v6}, Lcom/qti/phone/primarycard/PrimaryCardService;->handleSimApplicationStateChanged(III)V

    goto :goto_1

    .line 93
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received invalid subId for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    const-string v1, "Error reading SIM application states"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "PrimaryCardService onCreate -"

    .line 105
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "onDestroy"

    .line 110
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    invoke-virtual {v0, p0}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->unregister(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->removeAllEntriesFromCurrentSlotToSubMap()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PrimaryCardService"

    const-string v2, "Unable to unregister receiver"

    .line 116
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
