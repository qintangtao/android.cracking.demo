.class Lcom/market2345/jpush/JPushReceiver$1;
.super Ljava/lang/Object;
.source "JPushReceiver.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/jpush/JPushReceiver;->loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/jpush/PushInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/jpush/JPushReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/market2345/jpush/PushInfo;


# direct methods
.method constructor <init>(Lcom/market2345/jpush/JPushReceiver;Lcom/market2345/jpush/PushInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/market2345/jpush/JPushReceiver$1;->this$0:Lcom/market2345/jpush/JPushReceiver;

    iput-object p2, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$info:Lcom/market2345/jpush/PushInfo;

    iput-object p3, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 130
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 110
    if-nez p3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$info:Lcom/market2345/jpush/PushInfo;

    invoke-static {v1}, Lcom/market2345/jpush/PushContants;->generatePushInfoJsonString(Lcom/market2345/jpush/PushInfo;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "strJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$info:Lcom/market2345/jpush/PushInfo;

    iget v1, v1, Lcom/market2345/jpush/PushInfo;->styleId:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 118
    iget-object v1, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$info:Lcom/market2345/jpush/PushInfo;

    invoke-virtual {v1, p3, v2}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyJpushTemplateTitle(Landroid/graphics/Bitmap;Lcom/market2345/jpush/PushInfo;)V

    .line 119
    iget-object v1, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/market2345/util/SPUtil;->setLatestPushInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$info:Lcom/market2345/jpush/PushInfo;

    iget v1, v1, Lcom/market2345/jpush/PushInfo;->styleId:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$info:Lcom/market2345/jpush/PushInfo;

    invoke-virtual {v1, p3, v2}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyJpushTemplateBanner(Landroid/graphics/Bitmap;Lcom/market2345/jpush/PushInfo;)V

    .line 123
    iget-object v1, p0, Lcom/market2345/jpush/JPushReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/market2345/util/SPUtil;->setLatestPushInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 106
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 102
    return-void
.end method
