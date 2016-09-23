.class public final Lcom/statistic2345/log/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static a:Lcom/statistic2345/log/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    const-string v0, "tj2345.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/statistic2345/log/a/a;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/statistic2345/log/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/statistic2345/log/a/a;->a:Lcom/statistic2345/log/a/a;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/statistic2345/log/a/a;

    invoke-direct {v0, p0}, Lcom/statistic2345/log/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/statistic2345/log/a/a;->a:Lcom/statistic2345/log/a/a;

    .line 30
    :cond_0
    sget-object v0, Lcom/statistic2345/log/a/a;->a:Lcom/statistic2345/log/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string v0, "CREATE TABLE IF NOT EXISTS TJLaunchInfoColumns(_id INTEGER PRIMARY KEY AUTOINCREMENT, tj_start text default 0, tj_start_sended text default 0, tj_end text default 0, tj_session text NOT NULL UNIQUE, tj_total_time text default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const-string v0, "DROP TABLE IF EXISTS TJLaunchInfoColumns"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS TJLaunchInfoColumns(_id INTEGER PRIMARY KEY AUTOINCREMENT, tj_start text default 0, tj_start_sended text default 0, tj_end text default 0, tj_session text NOT NULL UNIQUE, tj_total_time text default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method
