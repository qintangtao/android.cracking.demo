.class public final Lcom/statistic2345/log/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static c:I


# instance fields
.field private b:I

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/statistic2345/log/a;->a:Z

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/statistic2345/log/a;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    iput p2, p0, Lcom/statistic2345/log/a;->b:I

    .line 34
    iput-object p1, p0, Lcom/statistic2345/log/a;->d:Landroid/content/Context;

    .line 35
    iput p3, p0, Lcom/statistic2345/log/a;->e:I

    .line 36
    iput p4, p0, Lcom/statistic2345/log/a;->f:I

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/statistic2345/log/a;->c:I

    .line 38
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/statistic2345/log/a;->a:Z

    .line 42
    sput v0, Lcom/statistic2345/log/a;->c:I

    .line 43
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/16 v0, 0x1e

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 48
    :goto_0
    sget-boolean v1, Lcom/statistic2345/log/a;->a:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/statistic2345/log/a;->c:I

    iget v2, p0, Lcom/statistic2345/log/a;->b:I

    if-lt v1, v2, :cond_4

    .line 57
    :cond_0
    sget-boolean v1, Lcom/statistic2345/log/a;->a:Z

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/statistic2345/log/a;->d:Landroid/content/Context;

    iget v2, p0, Lcom/statistic2345/log/a;->e:I

    iget v3, p0, Lcom/statistic2345/log/a;->f:I

    invoke-static {v1}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v5, "yyyy-MM-dd"

    invoke-static {v6, v7, v5}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "HH:mm:ss"

    invoke-static {v6, v7, v8}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_5

    :cond_1
    :goto_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v9, "date"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "time"

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "duration"

    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "header"

    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    const-string v0, "project_name"

    invoke-static {v1, v0}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_6

    const-string v4, "TJLogDataService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "send  app start string :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    :try_start_1
    const-string v4, "app_key"

    invoke-static {v1, v4}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/statistic2345/log/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/statistic2345/a/a;->a()Lcom/statistic2345/a/a;

    move-result-object v4

    const-string v5, "http://app.50bang.org/index.php?action=session"

    sget-object v6, Lcom/statistic2345/util/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/statistic2345/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-eqz v4, :cond_7

    .line 61
    :cond_3
    :goto_4
    return-void

    .line 50
    :cond_4
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    :goto_5
    sget v1, Lcom/statistic2345/log/a;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/statistic2345/log/a;->c:I

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u51c6\u5907\u53d1\u9001 start or activate data::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/statistic2345/log/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flag:==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/statistic2345/log/a;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "duration=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/statistic2345/log/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 59
    :cond_5
    if-ne v2, v10, :cond_1

    const/16 v0, 0x3c

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    if-ne v2, v10, :cond_2

    const-string v4, "TJLogDataService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "send  app activate  string :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    :try_start_3
    const-string v4, "send app start response:"

    invoke-static {}, Lcom/statistic2345/log/Statistics;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v2, :cond_9

    if-ne v3, v10, :cond_9

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;I)V

    const-string v0, "st"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;J)V

    invoke-static {v1}, Lcom/statistic2345/util/e;->f(Landroid/content/Context;)V

    const-string v0, "TJLogDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start code :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/statistic2345/log/b;->c(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u670d\u52a1\u7aef \u65b0\u589e\u65f6\u95f4\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    if-ne v2, v10, :cond_c

    invoke-static {v1, v11}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;I)V

    goto/16 :goto_4

    :cond_9
    if-ne v2, v10, :cond_a

    const/16 v0, 0xb

    if-ne v3, v0, :cond_a

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v1, v0}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/statistic2345/util/e;->f(Landroid/content/Context;)V

    const-string v0, "send activate"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "frist sim activate code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    if-nez v2, :cond_b

    const/16 v0, 0x14

    if-ne v3, v0, :cond_b

    invoke-static {v1}, Lcom/statistic2345/util/e;->g(Landroid/content/Context;)V

    const-string v0, "st"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;J)V

    goto/16 :goto_4

    :cond_b
    if-ne v2, v10, :cond_3

    const/16 v0, 0x16

    if-ne v3, v0, :cond_3

    invoke-static {v1}, Lcom/statistic2345/util/e;->i(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/statistic2345/util/e;->f(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    :cond_c
    if-nez v2, :cond_3

    invoke-static {v1, v11}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;I)V

    goto/16 :goto_4
.end method
