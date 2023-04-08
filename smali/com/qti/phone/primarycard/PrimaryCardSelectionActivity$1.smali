.class Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PrimaryCardSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;


# direct methods
.method constructor <init>(Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;->this$0:Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrimaryCardSelect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.telephony.extra.SIM_STATE"

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM application state: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;->this$0:Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;

    invoke-static {p1}, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->-$$Nest$fgetmSubscriptionsRadioGroup(Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 129
    iget-object p1, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;->this$0:Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;

    invoke-static {p1}, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->-$$Nest$fgetmSubscriptionsRadioGroup(Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 131
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 132
    iget-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;->this$0:Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;

    invoke-static {v2, v0}, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;->-$$Nest$mgetSimName(Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;I)Ljava/lang/String;

    move-result-object v2

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 135
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "a SIM card is removed. Finishing activity"

    .line 142
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity$1;->this$0:Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
