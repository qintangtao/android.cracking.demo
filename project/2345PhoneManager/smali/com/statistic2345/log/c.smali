.class final Lcom/statistic2345/log/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/statistic2345/log/c;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/statistic2345/log/c;->b:J

    .line 370
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/statistic2345/log/c;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/statistic2345/log/c;->b:J

    invoke-static {v0, v2, v3}, Lcom/statistic2345/log/b;->c(Landroid/content/Context;J)V

    .line 374
    return-void
.end method
