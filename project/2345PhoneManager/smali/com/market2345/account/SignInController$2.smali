.class Lcom/market2345/account/SignInController$2;
.super Ljava/lang/Object;
.source "SignInController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/SignInController;->callCheckCode(Landroid/content/Context;Lcom/market2345/account/SignInController$CheckCodeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignInController;

.field final synthetic val$callBack:Lcom/market2345/account/SignInController$CheckCodeCallBack;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$CheckCodeCallBack;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/market2345/account/SignInController$2;->this$0:Lcom/market2345/account/SignInController;

    iput-object p2, p0, Lcom/market2345/account/SignInController$2;->val$callBack:Lcom/market2345/account/SignInController$CheckCodeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 81
    :try_start_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 82
    .local v6, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const/16 v9, 0x1388

    invoke-static {v6, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 83
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 84
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://login.2345.com/check_code.php"

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 85
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v1, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 86
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 87
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v5, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 90
    .local v3, "data1":[B
    iget-object v9, p0, Lcom/market2345/account/SignInController$2;->this$0:Lcom/market2345/account/SignInController;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    # setter for: Lcom/market2345/account/SignInController;->bit:Landroid/graphics/Bitmap;
    invoke-static {v9, v10}, Lcom/market2345/account/SignInController;->access$002(Lcom/market2345/account/SignInController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 92
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    iget-object v10, p0, Lcom/market2345/account/SignInController$2;->this$0:Lcom/market2345/account/SignInController;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/cookie/Cookie;

    # setter for: Lcom/market2345/account/SignInController;->cookie:Lorg/apache/http/cookie/Cookie;
    invoke-static {v10, v9}, Lcom/market2345/account/SignInController;->access$102(Lcom/market2345/account/SignInController;Lorg/apache/http/cookie/Cookie;)Lorg/apache/http/cookie/Cookie;

    .line 95
    iget-object v9, p0, Lcom/market2345/account/SignInController$2;->this$0:Lcom/market2345/account/SignInController;

    # getter for: Lcom/market2345/account/SignInController;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/market2345/account/SignInController;->access$200(Lcom/market2345/account/SignInController;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/market2345/account/SignInController$2;->this$0:Lcom/market2345/account/SignInController;

    # getter for: Lcom/market2345/account/SignInController;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/market2345/account/SignInController;->access$200(Lcom/market2345/account/SignInController;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/market2345/account/SignInController$2;->val$callBack:Lcom/market2345/account/SignInController$CheckCodeCallBack;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v3    # "data1":[B
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
