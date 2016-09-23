.class Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;
.super Ljava/lang/Object;
.source "UpdateListDBHelperProxy.java"


# static fields
.field private static TABLENAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/market2345/blackandwhite/BAWDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "updateappslist"

    sput-object v0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->TABLENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/market2345/blackandwhite/BAWDBHelper;

    iget-object v1, p0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/blackandwhite/BAWDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->mHelper:Lcom/market2345/blackandwhite/BAWDBHelper;

    .line 53
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    invoke-virtual {p0, v0, p1, p2}, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public insert(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->mHelper:Lcom/market2345/blackandwhite/BAWDBHelper;

    sget-object v1, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/market2345/blackandwhite/BAWDBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->mHelper:Lcom/market2345/blackandwhite/BAWDBHelper;

    sget-object v1, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->TABLENAME:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/market2345/blackandwhite/BAWDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->mHelper:Lcom/market2345/blackandwhite/BAWDBHelper;

    sget-object v1, Lcom/market2345/blackandwhite/UpdateListDBHelperProxy;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/market2345/blackandwhite/BAWDBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
