.class public Lcom/market2345/update/UpdateDialogActivity;
.super Landroid/app/Activity;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSure:Landroid/widget/Button;

.field private cbIgnore:Landroid/widget/CheckBox;

.field private info:Lcom/market2345/update/UpdateInfo;

.field private isUpdate:Z

.field private tvMessage:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/market2345/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dialog_update"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/market2345/update/UpdateDialogActivity;->isUpdate:Z

    .line 71
    invoke-virtual {p0}, Lcom/market2345/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "update_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/market2345/update/UpdateInfo;

    iput-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->info:Lcom/market2345/update/UpdateInfo;

    .line 72
    invoke-virtual {p0}, Lcom/market2345/update/UpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_about_click"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, "isAboutClick":Z
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->info:Lcom/market2345/update/UpdateInfo;

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/market2345/update/UpdateDialogActivity;->finish()V

    .line 78
    :cond_0
    iget-boolean v1, p0, Lcom/market2345/update/UpdateDialogActivity;->isUpdate:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->cbIgnore:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->tvMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/update/UpdateDialogActivity;->info:Lcom/market2345/update/UpdateInfo;

    iget-object v2, v2, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->tvMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 87
    iget-boolean v1, p0, Lcom/market2345/update/UpdateDialogActivity;->isUpdate:Z

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u53d1\u73b0\u65b0\u7248\u672c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->btnCancel:Landroid/widget/Button;

    const-string v2, "\u4e0b\u6b21\u518d\u8bf4"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->btnSure:Landroid/widget/Button;

    const-string v2, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u5347\u7ea7\u5230\u65b0\u7248\u672c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->btnCancel:Landroid/widget/Button;

    const-string v2, "\u6682\u4e0d\u5b89\u88c5"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->btnSure:Landroid/widget/Button;

    const-string v2, "\u7acb\u523b\u5b89\u88c5"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f090210

    invoke-virtual {p0, v0}, Lcom/market2345/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->tvTitle:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f09021f

    invoke-virtual {p0, v0}, Lcom/market2345/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->tvMessage:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f090220

    invoke-virtual {p0, v0}, Lcom/market2345/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->cbIgnore:Landroid/widget/CheckBox;

    .line 59
    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/market2345/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->btnCancel:Landroid/widget/Button;

    .line 60
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/market2345/update/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->btnSure:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->btnSure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->cbIgnore:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->cbIgnore:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->cbIgnore:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/market2345/update/UpdateDialogActivity;->info:Lcom/market2345/update/UpdateInfo;

    iget v0, v0, Lcom/market2345/update/UpdateInfo;->version:I

    invoke-static {p0, v0}, Lcom/market2345/util/SPUtil;->setIgnoreVersion(Landroid/content/Context;I)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/update/UpdateDialogActivity;->finish()V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-boolean v0, p0, Lcom/market2345/update/UpdateDialogActivity;->isUpdate:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->info:Lcom/market2345/update/UpdateInfo;

    invoke-virtual {v0, v1}, Lcom/market2345/update/UpdateUtils;->downloadNow(Lcom/market2345/update/UpdateInfo;)V

    .line 126
    :goto_1
    invoke-virtual {p0}, Lcom/market2345/update/UpdateDialogActivity;->finish()V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/update/UpdateDialogActivity;->info:Lcom/market2345/update/UpdateInfo;

    invoke-virtual {v0, v1}, Lcom/market2345/update/UpdateUtils;->install(Lcom/market2345/update/UpdateInfo;)V

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f090204
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 45
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/market2345/update/UpdateDialogActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/market2345/update/UpdateDialogActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/market2345/update/UpdateDialogActivity;->initData()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->getUpdateStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 139
    :cond_0
    return-void
.end method
