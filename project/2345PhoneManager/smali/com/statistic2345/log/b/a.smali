.class public final Lcom/statistic2345/log/b/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/statistic2345/log/b/a;->f:I

    .line 43
    iput-object p2, p0, Lcom/statistic2345/log/b/a;->b:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/statistic2345/log/b/a;->c:J

    .line 45
    iput-wide p5, p0, Lcom/statistic2345/log/b/a;->d:J

    .line 46
    iput-wide p7, p0, Lcom/statistic2345/log/b/a;->e:J

    .line 47
    iput p9, p0, Lcom/statistic2345/log/b/a;->f:I

    .line 48
    iput-object p1, p0, Lcom/statistic2345/log/b/a;->a:Landroid/content/Context;

    .line 49
    iput-object p10, p0, Lcom/statistic2345/log/b/a;->g:Ljava/lang/String;

    .line 50
    iput-boolean p11, p0, Lcom/statistic2345/log/b/a;->h:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/statistic2345/log/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/statistic2345/log/b/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    const-string v1, "tj_session"

    iget-object v2, p0, Lcom/statistic2345/log/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "tj_start"

    iget-wide v2, p0, Lcom/statistic2345/log/b/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v1, "tj_end"

    iget-wide v2, p0, Lcom/statistic2345/log/b/a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v1, "tj_total_time"

    iget-wide v2, p0, Lcom/statistic2345/log/b/a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v1, "tj_start_sended"

    iget v2, p0, Lcom/statistic2345/log/b/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    iget-object v1, p0, Lcom/statistic2345/log/b/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 64
    const-string v2, "TJStatistics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4fdd\u5b58\u5230\u6570\u636e\u4e2did\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    const-string v0, "tj"

    const-string v1, "send data thread \u53d1\u9001\u6570\u636e"

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/statistic2345/log/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/statistic2345/log/b/a;->g:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/statistic2345/log/b/a;->h:Z

    invoke-static {v0, v1, v2}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/statistic2345/log/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/statistic2345/log/b/a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method
