.class final Lcom/startup/usbhelper/StartUpHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startup/usbhelper/StartUpHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/startup/usbhelper/StartUpHelper$1;->a:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/startup/usbhelper/StartUpHelper$1;->a:Landroid/content/Context;

    const-string v1, "com.service.usbhelper"

    invoke-static {v0, v1}, Lcom/startup/usbhelper/StartUpHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/startup/usbhelper/StartUpHelper$1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/startup/usbhelper/StartUpHelper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startup/usbhelper/StartUpHelper;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-string v1, "com.service.usbhelper"

    const-string v2, "com.service.usbhelper.service.HelperService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/startup/usbhelper/StartUpHelper$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/startup/usbhelper/StartUpHelper$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    iget-object v0, p0, Lcom/startup/usbhelper/StartUpHelper$1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/startup/usbhelper/StartUpHelper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startup/usbhelper/StartUpHelper;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/startup/usbhelper/StartUpHelper$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startup/usbhelper/StartUpHelper;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 74
    const-string v2, "pullup_status"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v0, "0307cafd710cab421a0310b134bd4e4c"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startup/usbhelper/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "project"

    const-string v4, "tongji_module"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "data"

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sign"

    invoke-static {v0}, Lcom/startup/usbhelper/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lcom/startup/usbhelper/b;->a()Lcom/startup/usbhelper/b;

    move-result-object v0

    const-string v2, "http://app.50bang.org/tongji_module/?_c=log&_a=pullup"

    invoke-virtual {v0, v2, v1}, Lcom/startup/usbhelper/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method
