.class public Lcom/market2345/dumpclean/CleanTrustDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CleanTrustDBHelper.java"


# static fields
.field public static final DBNAME:Ljava/lang/String; = "trust.db"

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final FILE_TYPE:Ljava/lang/String; = "file_type"

.field public static final ID:Ljava/lang/String; = "_id"

.field private static final SQL:Ljava/lang/String; = "create table if not exists clean_filter(_id integer primary key autoincrement, file_name nvarchar(200), file_path nvarchar(500) UNIQUE, file_size long, file_type int, data1 nvarchar(50));"

.field public static final TABLE_NAME:Ljava/lang/String; = "clean_filter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "trust.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 41
    const-string v0, "create table if not exists clean_filter(_id integer primary key autoincrement, file_name nvarchar(200), file_path nvarchar(500) UNIQUE, file_size long, file_type int, data1 nvarchar(50));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 46
    const-string v0, "drop table if exists trust.db"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/CleanTrustDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    return-void
.end method
