.class public Lcom/market2345/wificonn/WifiConnDialogActivity;
.super Landroid/app/Activity;
.source "WifiConnDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;,
        Lcom/market2345/wificonn/WifiConnDialogActivity$ConnHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FINISH_CONN_DIALOG:Ljava/lang/String; = "action.finish.conn.dialog"

.field public static final CONN_BY_USB:I = 0x2

.field public static final CONN_BY_WIFI:I = 0x1

.field public static final CONN_MODE:Ljava/lang/String; = "conn_mode"


# instance fields
.field private connMode:I

.field private conningIndicator:Landroid/view/View;

.field private mDevice:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mPCName:Landroid/widget/TextView;

.field private pcName:Ljava/lang/String;

.field private pcSuName:Landroid/widget/TextView;

.field private receiver:Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;

.field private wifiConnError:Landroid/view/View;

.field private wifiConnSuccess:Landroid/view/View;

.field private wifiConning:Landroid/view/View;

.field private wifiPreConn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/wificonn/WifiConnDialogActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiConnDialogActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->successOnConn(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/wificonn/WifiConnDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/wificonn/WifiConnDialogActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->errorOnConn()V

    return-void
.end method

.method private errorOnConn()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 219
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiPreConn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiPreConn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConnError:Landroid/view/View;

    if-nez v0, :cond_2

    .line 228
    const v0, 0x7f09042d

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConnError:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConnError:Landroid/view/View;

    const v1, 0x7f09041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_2
    return-void
.end method

.method private initDisplay(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 121
    const-string v1, "connect"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    .local v0, "showAnmi":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->pcName:Ljava/lang/String;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->pcName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->startConnect(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->pcSuName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->pcName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private refuse()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.phonemanager2345.zhushou.connection.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intent1":Landroid/content/Intent;
    const-string v1, "conn_status_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v1, "conn_notify_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

.method private startConnect(Ljava/lang/String;)V
    .locals 8
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "brand":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "model":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    move-object v2, v0

    .line 199
    .local v2, "device":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    if-nez v4, :cond_0

    .line 200
    const v4, 0x7f09042c

    invoke-virtual {p0, v4}, Lcom/market2345/wificonn/WifiConnDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    .line 201
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    const v5, 0x7f090427

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->conningIndicator:Landroid/view/View;

    .line 202
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    const v5, 0x7f090429

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mPCName:Landroid/widget/TextView;

    .line 203
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    const v5, 0x7f090425

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mDevice:Landroid/widget/TextView;

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mDevice:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mPCName:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->conningIndicator:Landroid/view/View;

    const v5, 0x7f02031d

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->conningIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 209
    .local v1, "d":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 210
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 211
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiPreConn:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v4, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    return-void

    .line 192
    .end local v1    # "d":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "device":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    move-object v2, v0

    .restart local v2    # "device":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v2    # "device":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    move-object v2, v3

    .restart local v2    # "device":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v2    # "device":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "device":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private successOnConn(I)V
    .locals 2
    .param p1, "connMode"    # I

    .prologue
    const/16 v1, 0x8

    .line 239
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiPreConn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiPreConn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConnSuccess:Landroid/view/View;

    if-nez v0, :cond_2

    .line 248
    const v0, 0x7f09042e

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConnSuccess:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConnSuccess:Landroid/view/View;

    const v1, 0x7f09041e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_2
    iput p1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->connMode:I

    .line 252
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 152
    invoke-direct {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->refuse()V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 159
    :sswitch_0
    invoke-direct {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->refuse()V

    .line 160
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->finish()V

    .line 161
    const v2, 0x7f0b0185

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :sswitch_1
    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.phonemanager2345.zhushou.connection.status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "intent2":Landroid/content/Intent;
    const-string v2, "conn_status_key"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v2, "conn_notify_key"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->pcName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/market2345/wificonn/WifiConnDialogActivity;->startConnect(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v1    # "intent2":Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->finish()V

    goto :goto_0

    .line 178
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/market2345/wificonn/WifiConnectedActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "conn_mode"

    iget v3, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->connMode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->finish()V

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x7f09041a -> :sswitch_2
        0x7f09041e -> :sswitch_3
        0x7f090432 -> :sswitch_0
        0x7f090433 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v1, 0x7f0300d8

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->setContentView(I)V

    .line 102
    const v1, 0x7f090432

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f090433

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v1, 0x7f09042b

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiPreConn:Landroid/view/View;

    .line 105
    const v1, 0x7f090430

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->pcSuName:Landroid/widget/TextView;

    .line 106
    new-instance v1, Lcom/market2345/wificonn/WifiConnDialogActivity$ConnHandler;

    invoke-direct {v1, p0}, Lcom/market2345/wificonn/WifiConnDialogActivity$ConnHandler;-><init>(Lcom/market2345/wificonn/WifiConnDialogActivity;)V

    iput-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->initDisplay(Landroid/content/Intent;)V

    .line 112
    :cond_0
    new-instance v1, Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;

    invoke-direct {v1, p0}, Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;-><init>(Lcom/market2345/wificonn/WifiConnDialogActivity;)V

    iput-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->receiver:Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;

    .line 113
    iget-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->receiver:Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action.finish.conn.dialog"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/market2345/wificonn/WifiConnDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->receiver:Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 147
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg0"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x8

    .line 257
    instance-of v2, p2, Landroid/util/Pair;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 258
    check-cast v0, Landroid/util/Pair;

    .line 259
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "pref.wifi.pc.link.status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    .local v1, "status":I
    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    if-lez v1, :cond_2

    .line 263
    invoke-direct {p0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->successOnConn(I)V

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiConning:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/market2345/wificonn/WifiConnDialogActivity;->wifiPreConn:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 274
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "status":I
    :cond_1
    return-void

    .line 265
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "status":I
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->finish()V

    goto :goto_0
.end method
