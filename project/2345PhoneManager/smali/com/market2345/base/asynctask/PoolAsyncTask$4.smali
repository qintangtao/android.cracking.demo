.class synthetic Lcom/market2345/base/asynctask/PoolAsyncTask$4;
.super Ljava/lang/Object;
.source "PoolAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/asynctask/PoolAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$market2345$base$asynctask$PoolAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 567
    invoke-static {}, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->values()[Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$4;->$SwitchMap$com$market2345$base$asynctask$PoolAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$4;->$SwitchMap$com$market2345$base$asynctask$PoolAsyncTask$Status:[I

    sget-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->RUNNING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    invoke-virtual {v1}, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$4;->$SwitchMap$com$market2345$base$asynctask$PoolAsyncTask$Status:[I

    sget-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->FINISHED:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    invoke-virtual {v1}, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
