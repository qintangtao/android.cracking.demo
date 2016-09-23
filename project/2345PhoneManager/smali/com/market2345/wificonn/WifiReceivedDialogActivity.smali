.class public Lcom/market2345/wificonn/WifiReceivedDialogActivity;
.super Landroid/app/Activity;
.source "WifiReceivedDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCheck:Landroid/widget/CheckBox;

.field private mIcon:Landroid/widget/ImageView;

.field private mWifi:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getIconBySuffix(Ljava/lang/String;)I
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "doc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "docx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    const v0, 0x7f020279

    .line 121
    :goto_0
    return v0

    .line 104
    :cond_1
    const-string v0, "wps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const v0, 0x7f020283

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "ppt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pptx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "dps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    :cond_3
    const v0, 0x7f02027f

    goto :goto_0

    .line 108
    :cond_4
    const-string v0, "xls"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "xlsx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "et"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    :cond_5
    const v0, 0x7f020284

    goto :goto_0

    .line 110
    :cond_6
    const-string v0, "pdf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    const v0, 0x7f02027d

    goto :goto_0

    .line 112
    :cond_7
    const-string v0, "txt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    const v0, 0x7f020280

    goto :goto_0

    .line 114
    :cond_8
    const-string v0, "ebk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ebk3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 115
    :cond_9
    const v0, 0x7f02027a

    goto :goto_0

    .line 116
    :cond_a
    const-string v0, "htm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 117
    :cond_b
    const v0, 0x7f02027b

    goto/16 :goto_0

    .line 118
    :cond_c
    const-string v0, "csv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 119
    const v0, 0x7f020278

    goto/16 :goto_0

    .line 121
    :cond_d
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private getMini(Ljava/lang/String;)I
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, -0x1

    .line 80
    .local v0, "id":I
    invoke-static {p1}, Lcom/market2345/wificonn/WifiGlobalUtil;->isMusicFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const v0, 0x7f02027c

    .line 94
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 95
    const v0, 0x7f020281

    .line 98
    :cond_1
    return v0

    .line 82
    :cond_2
    invoke-static {p1}, Lcom/market2345/wificonn/WifiGlobalUtil;->isVideoFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const v0, 0x7f020282

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {p1}, Lcom/market2345/wificonn/WifiGlobalUtil;->isDocFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    invoke-direct {p0, p1}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->getIconBySuffix(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 86
    :cond_4
    invoke-static {p1}, Lcom/market2345/wificonn/WifiGlobalUtil;->isImageFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    const v0, 0x7f02027e

    goto :goto_0

    .line 88
    :cond_5
    invoke-static {p1}, Lcom/market2345/wificonn/WifiGlobalUtil;->isZipFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    const v0, 0x7f020285

    goto :goto_0

    .line 90
    :cond_6
    const-string v1, "apk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const v0, 0x7f020277

    goto :goto_0
.end method

.method private setData(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v3, "file_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->mWifi:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const-string v3, "file_prefix"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "prefix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->getMini(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "miniId":I
    iget-object v3, p0, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const-string v0, "wifi_pc"

    invoke-virtual {p0, v0, v1}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "file_from_pc_inform"

    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/market2345/wificonn/WifiReceivedFilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->finish()V

    goto :goto_0

    .line 134
    :pswitch_1
    const-string v0, "wifi_pc"

    invoke-virtual {p0, v0, v1}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "file_from_pc_inform"

    iget-object v2, p0, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->finish()V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x7f090204
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v3, "wifi_pc"

    invoke-virtual {p0, v3, v5}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "file_from_pc_inform"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->finish()V

    .line 37
    :cond_0
    const v3, 0x7f0300db

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->setContentView(I)V

    .line 39
    const v3, 0x7f090438

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    .local v2, "connStatus":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 41
    const v3, 0x7f0b0166

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 45
    :goto_0
    const v3, 0x7f090204

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    .local v1, "btn1":Landroid/widget/Button;
    const v3, 0x7f090205

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "btn0":Landroid/widget/Button;
    const v3, 0x7f0b0182

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 48
    const v3, 0x7f0b017d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 49
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v3, 0x7f090437

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->mWifi:Landroid/widget/TextView;

    .line 52
    const v3, 0x7f0901d0

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->mIcon:Landroid/widget/ImageView;

    .line 53
    const v3, 0x7f09043a

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->mCheck:Landroid/widget/CheckBox;

    .line 54
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->setData(Landroid/content/Intent;)V

    .line 55
    return-void

    .line 43
    .end local v0    # "btn0":Landroid/widget/Button;
    .end local v1    # "btn1":Landroid/widget/Button;
    :cond_1
    const v3, 0x7f0b0184

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/market2345/wificonn/WifiReceivedDialogActivity;->setData(Landroid/content/Intent;)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
