.class Lcom/qti/phone/ExtTelephonyService$1;
.super Lcom/qti/extphone/IExtPhone$Stub;
.source "ExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/ExtTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/ExtTelephonyService;


# direct methods
.method constructor <init>(Lcom/qti/phone/ExtTelephonyService;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-direct {p0}, Lcom/qti/extphone/IExtPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abortIncrementalScan(I)Z
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortIncrementalScan slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "abortIncrementalScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->abortIncrementalScan(I)Z

    move-result p0

    return p0
.end method

.method public checkSimPinLockStatus(I)Z
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "checkSimPinLockStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 378
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->checkSimPinLockStatus(I)Z

    move-result p0

    return p0
.end method

.method public disable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "disable5g"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable5g slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->disable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "enable5g"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5g slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->enable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enable5gOnly(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "enable5gOnly"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->enable5gOnly(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enableEndc(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "enableEndc"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEndc slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->enableEndc(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getAirplaneMode()Z
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getAirplaneMode"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getAirplaneMode()Z

    move-result p0

    return p0
.end method

.method public getCurrentPrimaryCardSlotId()I
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getCurrentPrimaryCardSlotId"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    const-string v0, "ExtTelephonyService"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCurrentPrimaryCardSlotId()I

    move-result p0

    return p0
.end method

.method public getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFacilityLockForApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 337
    invoke-virtual/range {v0 .. v7}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getImeiInfo"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    const-string v0, "ExtTelephonyService"

    const-string v1, "getImeiInfo: "

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getNetworkSelectionMode"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkSelectionMode slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryCarrierSlotId()I
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v0, "getPrimaryCarrierSlotId"

    invoke-static {p0, v0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getPropertyValueBool"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueBool property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getPropertyValueInt"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueInt property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getPropertyValueString"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueString property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getQosParameters"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 431
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getQtiRadioCapability"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQtiRadioCapability slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getSecureModeStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public isEpdgOverCellularDataSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isEpdgOverCellularDataSupported(I)Z

    move-result p0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFeatureSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isFeatureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isPrimaryCarrierSlotId(I)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "isPrimaryCarrierSlotId"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPrimaryCarrierSlotId slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isPrimaryCarrierSlotId(I)Z

    move-result p0

    return p0
.end method

.method public isSMSPromptEnabled()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "isSMSPromptEnabled"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    const-string v0, "ExtTelephonyService"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isSMSPromptEnabled()Z

    move-result p0

    return p0
.end method

.method public isSmartDdsSwitchFeatureAvailable()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "isSmartDdsSwitchFeatureAvailable"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {v0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isSmartDdsSwitchFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isSubsidyFeatureEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performIncrementalScan(I)Z
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performIncrementalScan slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "performIncrementalScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->performIncrementalScan(I)Z

    move-result p0

    return p0
.end method

.method public query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "query5gConfigInfo"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gConfigInfo slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public query5gStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "query5gStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gStatus slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->query5gStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryCallForwardStatus(IIILjava/lang/String;ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public queryEndcStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryEndcStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryEndcStatus slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryEndcStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrBearerAllocation"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrBearerAllocation slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrConfig(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrConfig"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrConfig slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrConfig(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrDcParam"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrDcParam slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrIconType"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIconType slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrSignalStrength"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrSignalStrength slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryUpperLayerIndInfo"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpperLayerIndInfo slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object p0

    return-object p0
.end method

.method public registerQtiRadioConfigCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "registerQtiRadioConfigCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerQtiRadioConfigCallback packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->registerQtiRadioConfigCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object p0

    return-object p0
.end method

.method public sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "sendCdmaSms"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCdmaSms slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qti/phone/ExtTelephonyServiceImpl;->sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setAirplaneMode(Z)Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setAirplaneMode"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 366
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setAirplaneMode(Z)Z

    move-result p0

    return p0
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setCarrierInfoForImsiEncryption"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 320
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setNetworkSelectionModeAutomatic"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeAutomatic slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setNetworkSelectionModeManual"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeManual slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNrConfig(ILcom/qti/extphone/NrConfig;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setNrConfig"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrConfig slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setNrConfig(ILcom/qti/extphone/NrConfig;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setPrimaryCardOnSlot(I)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string p1, "setPrimaryCardOnSlot"

    invoke-static {p0, p1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setSMSPromptEnabled"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setSMSPromptEnabled(Z)V

    return-void
.end method

.method public setSmartDdsSwitchToggle(ZLcom/qti/extphone/Client;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setSmartDdsSwitchToggle"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setSmartDdsSwitchToggle(ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "startNetworkScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkScan slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "stopNetworkScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopNetworkScan slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lcom/qti/extphone/IDepersoResCallback;I)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "supplyIccDepersonalization"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplyIccDepersonalization phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qti/phone/ExtTelephonyServiceImpl;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lcom/qti/extphone/IDepersoResCallback;I)V

    return-void
.end method

.method public toggleSimPinLock(IZLjava/lang/String;)Z
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "toggleSimPinLock"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->toggleSimPinLock(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unRegisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "unRegisterCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    const-string v0, "ExtTelephonyService"

    const-string v1, "unRegisterCallback...."

    .line 451
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->unRegisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    return-void
.end method

.method public unregisterQtiRadioConfigCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "unregisterQtiRadioConfigCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    const-string v0, "ExtTelephonyService"

    const-string v1, "unregisterQtiRadioConfigCallback..."

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->unregisterQtiRadioConfigCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    return-void
.end method

.method public verifySimPin(ILjava/lang/String;)Z
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "verifySimPin"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 390
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->verifySimPin(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public verifySimPukChangePin(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "verifySimPukChangePin"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 396
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->verifySimPukChangePin(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
