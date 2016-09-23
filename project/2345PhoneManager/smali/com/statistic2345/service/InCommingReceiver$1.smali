.class final Lcom/statistic2345/service/InCommingReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/statistic2345/service/InCommingReceiver;->b(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/statistic2345/service/InCommingReceiver;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/statistic2345/service/InCommingReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/statistic2345/service/InCommingReceiver$1;->a:Lcom/statistic2345/service/InCommingReceiver;

    iput-object p2, p0, Lcom/statistic2345/service/InCommingReceiver$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/statistic2345/service/InCommingReceiver$1;->c:Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 189
    :try_start_0
    invoke-static {}, Lcom/statistic2345/a/a;->a()Lcom/statistic2345/a/a;

    move-result-object v0

    const-string v1, "http://app.50bang.org/index.php?action=session"

    sget-object v2, Lcom/statistic2345/util/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/statistic2345/service/InCommingReceiver$1;->b:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Lcom/statistic2345/service/InCommingReceiver$1;->c:Landroid/content/Context;

    .line 189
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/statistic2345/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "InCommingReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u53d1\u9001\u5230\u8fbe\u7edf\u8ba1 \u8fd4\u56de\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 194
    const-string v1, "InCommingReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u89e3\u6790\u540e\u72b6\u6001\uff1astatus:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/statistic2345/service/InCommingReceiver$1;->a:Lcom/statistic2345/service/InCommingReceiver;

    invoke-static {v1, v0}, Lcom/statistic2345/service/InCommingReceiver;->a(Lcom/statistic2345/service/InCommingReceiver;Z)V

    .line 196
    iget-object v1, p0, Lcom/statistic2345/service/InCommingReceiver$1;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sys_data_issended"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
