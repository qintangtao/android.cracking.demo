.class public Lcom/market2345/settings/UserPlanActivity;
.super Lcom/market2345/home/BaseActivity;
.source "UserPlanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cbBox:Landroid/widget/CheckBox;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/settings/UserPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/market2345/settings/UserPlanActivity;->cbBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/market2345/settings/UserPlanActivity;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/market2345/settings/UserPlanActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/settings/UserPlanActivity$1;-><init>(Lcom/market2345/settings/UserPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 39
    const v2, 0x7f09026b

    invoke-virtual {p0, v2}, Lcom/market2345/settings/UserPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, "title":Landroid/widget/TextView;
    const-string v2, "\u7528\u6237\u4f53\u9a8c\u6539\u8fdb\u8ba1\u5212"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v2, 0x7f0900f6

    invoke-virtual {p0, v2}, Lcom/market2345/settings/UserPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/market2345/settings/UserPlanActivity;->cbBox:Landroid/widget/CheckBox;

    .line 43
    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->USER_PLAN:Lcom/market2345/settings/SettingUtils$SETTING;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    .line 44
    .local v0, "b":Z
    iget-object v2, p0, Lcom/market2345/settings/UserPlanActivity;->cbBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    const v2, 0x7f0900f5

    invoke-virtual {p0, v2}, Lcom/market2345/settings/UserPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/market2345/settings/UserPlanActivity;->webview:Landroid/webkit/WebView;

    .line 48
    iget-object v2, p0, Lcom/market2345/settings/UserPlanActivity;->webview:Landroid/webkit/WebView;

    const-string v3, "file:///android_asset/userplan.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 67
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/settings/UserPlanActivity;->finish()V

    goto :goto_0

    .line 70
    :sswitch_1
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->USER_PLAN:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-object v1, p0, Lcom/market2345/settings/UserPlanActivity;->cbBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x7f0900f6 -> :sswitch_1
        0x7f09026a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/market2345/settings/UserPlanActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/market2345/settings/UserPlanActivity;->initView()V

    .line 26
    invoke-direct {p0}, Lcom/market2345/settings/UserPlanActivity;->initListener()V

    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/market2345/settings/UserPlanActivity;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/market2345/settings/UserPlanActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 36
    :cond_0
    return-void
.end method
