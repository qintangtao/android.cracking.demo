.class public Lcom/market2345/datacenter/UpdateDataCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "UpdateDataCursorWrapper.java"


# static fields
.field public static final CURSOR_DETECTOR_ENABLE:Z = false

.field private static final CURSOR_TAG:Ljava/lang/String; = "leak_detector"


# instance fields
.field private mCursorTrace:Ljava/lang/Throwable;

.field private mIsClosed:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 35
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Cursor leak found!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/datacenter/UpdateDataCursorWrapper;->mCursorTrace:Ljava/lang/Throwable;

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/datacenter/UpdateDataCursorWrapper;->mIsClosed:Z

    .line 42
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/market2345/datacenter/UpdateDataCursorWrapper;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 48
    const-string v0, "leak_detector"

    const-string v1, "cursor leak found!"

    iget-object v2, p0, Lcom/market2345/datacenter/UpdateDataCursorWrapper;->mCursorTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    return-void

    .line 51
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
