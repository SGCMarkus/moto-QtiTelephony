.class Lcom/qti/phone/ExtTelephonyServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;


# direct methods
.method constructor <init>(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "ExtTelephonyServiceImpl"

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const-string p1, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    .line 226
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received ACTION_MULTI_SIM_CONFIG_CHANGED, newCount: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_2

    .line 231
    const-class p1, Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$smisServiceRunning(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Stopping PrimaryCardService"

    .line 232
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fgetmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiPrimaryImeiHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fgetmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiPrimaryImeiHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->destroy()V

    .line 237
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fputmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;Lcom/qti/phone/QtiPrimaryImeiHandler;)V

    .line 239
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$mdisposeSubsidyDeviceController(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    goto/16 :goto_0

    .line 242
    :cond_2
    const-class p1, Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$smisServiceRunning(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 243
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$mstartPrimaryCardServiceIfRequired(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    .line 245
    :cond_3
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$mmakeQtiPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    .line 246
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$minitSubsidyDeviceController(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    goto :goto_0

    .line 249
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.telephony.extra.SIM_STATE"

    const/4 v2, 0x0

    .line 250
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_5

    const-string p1, "ro.board.api_level"

    .line 253
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_5

    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fgetmTelephonyManager(Lcom/qti/phone/ExtTelephonyServiceImpl;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    if-le p1, v1, :cond_5

    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fgetmSubscriptionManager(Lcom/qti/phone/ExtTelephonyServiceImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result p1

    if-le p1, v1, :cond_5

    .line 257
    invoke-static {}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "msim_preference"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 261
    :try_start_0
    new-instance p2, Lcom/qti/extphone/MsimPreference;

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p2, p1}, Lcom/qti/extphone/MsimPreference;-><init>(I)V

    .line 263
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fgetmQtiRadioConfigProxy(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiRadioConfigProxy;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->setMsimPreference(Lcom/qti/extphone/MsimPreference;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
