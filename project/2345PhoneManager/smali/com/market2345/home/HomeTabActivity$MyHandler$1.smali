.class Lcom/market2345/home/HomeTabActivity$MyHandler$1;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity$MyHandler;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity$MyHandler;

.field final synthetic val$activity:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity$MyHandler;Lcom/market2345/home/HomeTabActivity;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$MyHandler$1;->this$0:Lcom/market2345/home/HomeTabActivity$MyHandler;

    iput-object p2, p0, Lcom/market2345/home/HomeTabActivity$MyHandler$1;->val$activity:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 319
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v0

    .line 320
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/home/HomeTabActivity$MyHandler$1;->val$activity:Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "diaoyongcheck2345"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$MyHandler$1;->val$activity:Lcom/market2345/home/HomeTabActivity;

    iget-object v1, v1, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x929

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
