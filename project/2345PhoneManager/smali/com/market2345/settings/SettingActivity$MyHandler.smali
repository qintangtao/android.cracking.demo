.class Lcom/market2345/settings/SettingActivity$MyHandler;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/settings/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field theActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/settings/SettingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/settings/SettingActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/settings/SettingActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    .line 103
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/settings/SettingActivity;

    .line 108
    .local v0, "activity":Lcom/market2345/settings/SettingActivity;
    if-eqz v0, :cond_0

    .line 109
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 111
    :pswitch_1
    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    # getter for: Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 116
    :pswitch_2
    # getter for: Lcom/market2345/settings/SettingActivity;->mRoot:Z
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$100(Lcom/market2345/settings/SettingActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    # getter for: Lcom/market2345/settings/SettingActivity;->mRoot:Z
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$100(Lcom/market2345/settings/SettingActivity;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 121
    :goto_1
    # getter for: Lcom/market2345/settings/SettingActivity;->mRoot:Z
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$100(Lcom/market2345/settings/SettingActivity;)Z

    move-result v1

    # getter for: Lcom/market2345/settings/SettingActivity;->mRootIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/settings/SettingActivity;->access$200(Lcom/market2345/settings/SettingActivity;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V
    invoke-static {v0, v1, v2}, Lcom/market2345/settings/SettingActivity;->access$300(Lcom/market2345/settings/SettingActivity;ZLandroid/widget/ImageView;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u624b\u673a\u52a9\u624b\u672a\u83b7\u5f97root\u6743\u9650\uff0c\u4e0d\u652f\u6301\u81ea\u52a8\u5b89\u88c5"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
