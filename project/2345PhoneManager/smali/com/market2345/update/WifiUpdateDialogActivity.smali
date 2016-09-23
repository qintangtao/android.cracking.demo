.class public Lcom/market2345/update/WifiUpdateDialogActivity;
.super Landroid/app/Activity;
.source "WifiUpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_CONNECT_URL:Ljava/lang/String; = "key_connect_url"

.field public static final KEY_UPDATE_VERSIONNAME:Ljava/lang/String; = "key_update_versionName"


# instance fields
.field private btnUpdate:Landroid/widget/Button;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.phonemanager2345.zhushou.connect.pc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "action":Landroid/content/Intent;
    const-string v1, "com.phonemanager2345.zhushou.url.key"

    iget-object v2, p0, Lcom/market2345/update/WifiUpdateDialogActivity;->result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "com.phonemanager2345.zhushou.url.send"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/market2345/update/WifiUpdateDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 62
    invoke-virtual {p0}, Lcom/market2345/update/WifiUpdateDialogActivity;->finish()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x7f09042a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x2

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {p0, v5}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 34
    const v4, 0x7f0300d7

    invoke-virtual {p0, v4}, Lcom/market2345/update/WifiUpdateDialogActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/market2345/update/WifiUpdateDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 38
    const-string v4, "key_update_versionName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "updateVersion":Ljava/lang/String;
    const-string v4, "key_connect_url"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/update/WifiUpdateDialogActivity;->result:Ljava/lang/String;

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 41
    const v4, 0x7f09021f

    invoke-virtual {p0, v4}, Lcom/market2345/update/WifiUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "tvMessage":Landroid/widget/TextView;
    const v4, 0x7f0b0189

    invoke-virtual {p0, v4}, Lcom/market2345/update/WifiUpdateDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "content":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "3.0.242702"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v4, 0x7f09042a

    invoke-virtual {p0, v4}, Lcom/market2345/update/WifiUpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/market2345/update/WifiUpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    .line 45
    iget-object v4, p0, Lcom/market2345/update/WifiUpdateDialogActivity;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "tvMessage":Landroid/widget/TextView;
    .end local v3    # "updateVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v3    # "updateVersion":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/update/WifiUpdateDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->getUpdateStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 75
    :cond_0
    return-void
.end method
