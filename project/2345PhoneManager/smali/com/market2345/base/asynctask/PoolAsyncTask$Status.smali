.class public final enum Lcom/market2345/base/asynctask/PoolAsyncTask$Status;
.super Ljava/lang/Enum;
.source "PoolAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/asynctask/PoolAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/base/asynctask/PoolAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

.field public static final enum FINISHED:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

.field public static final enum PENDING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

.field public static final enum RUNNING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->PENDING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    .line 255
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->RUNNING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    .line 259
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->FINISHED:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    .line 247
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    sget-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->PENDING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->RUNNING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->FINISHED:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->$VALUES:[Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/base/asynctask/PoolAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    const-class v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/market2345/base/asynctask/PoolAsyncTask$Status;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->$VALUES:[Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    return-object v0
.end method
