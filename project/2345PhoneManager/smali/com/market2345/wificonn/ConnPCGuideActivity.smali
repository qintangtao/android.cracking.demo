.class public Lcom/market2345/wificonn/ConnPCGuideActivity;
.super Lcom/market2345/home/BaseActivity;
.source "ConnPCGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/market2345/wificonn/ConnPCGuideActivity;->finish()V

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 38
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/ConnPCGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Lcom/market2345/wificonn/ConnPCGuideActivity;->finish()V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x7f0901f6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/ConnPCGuideActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0901f6

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/ConnPCGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
