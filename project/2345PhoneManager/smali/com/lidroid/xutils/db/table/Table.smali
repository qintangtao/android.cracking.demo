.class public Lcom/lidroid/xutils/db/table/Table;
.super Ljava/lang/Object;
.source "Table.java"


# static fields
.field private static final tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Table;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkedDatabase:Z

.field public final columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field public final db:Lcom/lidroid/xutils/DbUtils;

.field public final finderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Finder;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Lcom/lidroid/xutils/db/table/Id;

.field public final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V
    .locals 4
    .param p1, "db"    # Lcom/lidroid/xutils/DbUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 48
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    .line 49
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 50
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    .line 53
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    return-void

    .line 53
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Column;

    .line 54
    .local v0, "column":Lcom/lidroid/xutils/db/table/Column;
    invoke-virtual {v0, p0}, Lcom/lidroid/xutils/db/table/Column;->setTable(Lcom/lidroid/xutils/db/table/Table;)V

    .line 55
    instance-of v2, v0, Lcom/lidroid/xutils/db/table/Finder;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/lidroid/xutils/db/table/Finder;

    .end local v0    # "column":Lcom/lidroid/xutils/db/table/Column;
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;
    .locals 5
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lidroid/xutils/db/table/Table;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "tableKey":Ljava/lang/String;
    sget-object v2, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Table;

    .line 64
    .local v0, "table":Lcom/lidroid/xutils/db/table/Table;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/lidroid/xutils/db/table/Table;

    .end local v0    # "table":Lcom/lidroid/xutils/db/table/Table;
    invoke-direct {v0, p0, p1}, Lcom/lidroid/xutils/db/table/Table;-><init>(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V

    .line 66
    .restart local v0    # "table":Lcom/lidroid/xutils/db/table/Table;
    sget-object v2, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v3

    return-object v0

    .line 62
    .end local v0    # "table":Lcom/lidroid/xutils/db/table/Table;
    .end local v1    # "tableKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V
    .locals 4
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "tableKey":Ljava/lang/String;
    sget-object v1, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v2

    return-void

    .line 73
    .end local v0    # "tableKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/String;)V
    .locals 7
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v4, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    sget-object v3, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    return-void

    .line 80
    .restart local v1    # "key":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lidroid/xutils/db/table/Table;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/db/table/Table;

    .line 82
    .local v2, "table":Lcom/lidroid/xutils/db/table/Table;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "key":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 84
    .restart local v1    # "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 78
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lidroid/xutils/db/table/Table;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "table":Lcom/lidroid/xutils/db/table/Table;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public isCheckedDatabase()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/lidroid/xutils/db/table/Table;->checkedDatabase:Z

    return v0
.end method

.method public setCheckedDatabase(Z)V
    .locals 0
    .param p1, "checkedDatabase"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/lidroid/xutils/db/table/Table;->checkedDatabase:Z

    .line 103
    return-void
.end method
