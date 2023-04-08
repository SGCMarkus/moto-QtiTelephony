.class Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SubsidyCardSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;


# direct methods
.method constructor <init>(Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyCardSelectionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.telephony.extra.SIM_STATE"

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 126
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

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;->-$$Nest$fgetmSubscriptionsRadioGroup(Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;->-$$Nest$fgetmSubscriptionsRadioGroup(Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 132
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 133
    iget-object v2, p0, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;

    invoke-static {v2, v0}, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;->-$$Nest$mgetSimName(Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;I)Ljava/lang/String;

    move-result-object v2

    .line 134
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

    .line 135
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 136
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

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyCardSelectionActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
