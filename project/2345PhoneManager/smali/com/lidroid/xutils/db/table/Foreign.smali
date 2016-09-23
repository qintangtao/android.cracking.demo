.class public Lcom/lidroid/xutils/db/table/Foreign;
.super Lcom/lidroid/xutils/db/table/Column;
.source "Foreign.java"


# instance fields
.field private final foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

.field private final foreignColumnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 3
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 37
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignColumnNameByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v1

    iget-object v1, v1, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "foreignColumnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    .line 41
    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/table/Foreign;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 95
    .local v5, "fieldValue":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 97
    .local v3, "columnValue":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 98
    iget-object v11, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 99
    .local v2, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 100
    check-cast v5, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    .end local v5    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getColumnValue()Ljava/lang/Object;

    move-result-object v3

    .line 143
    .end local v2    # "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "columnValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 101
    .restart local v2    # "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "columnValue":Ljava/lang/Object;
    .restart local v5    # "fieldValue":Ljava/lang/Object;
    :cond_1
    const-class v11, Ljava/util/List;

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 103
    :try_start_0
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    .line 104
    .local v6, "foreignEntities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 106
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v7

    .line 107
    .local v7, "foreignEntityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v11, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v1

    .line 108
    .local v1, "column":Lcom/lidroid/xutils/db/table/Column;
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 111
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v10

    .line 112
    .local v10, "table":Lcom/lidroid/xutils/db/table/Table;
    if-eqz v10, :cond_3

    instance-of v11, v1, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v11, :cond_3

    .line 113
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_4

    .line 121
    :cond_3
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 113
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 114
    .local v8, "foreignObj":Ljava/lang/Object;
    invoke-virtual {v1, v8}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 115
    .local v9, "idValue":Ljava/lang/Object;
    if-nez v9, :cond_2

    .line 116
    iget-object v12, v10, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v12, v8}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    .end local v1    # "column":Lcom/lidroid/xutils/db/table/Column;
    .end local v3    # "columnValue":Ljava/lang/Object;
    .end local v6    # "foreignEntities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v7    # "foreignEntityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "foreignObj":Ljava/lang/Object;
    .end local v9    # "idValue":Ljava/lang/Object;
    .end local v10    # "table":Lcom/lidroid/xutils/db/table/Table;
    :catch_0
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v3    # "columnValue":Ljava/lang/Object;
    :cond_5
    :try_start_1
    iget-object v11, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v1

    .line 129
    .restart local v1    # "column":Lcom/lidroid/xutils/db/table/Column;
    invoke-virtual {v1, v5}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 131
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v10

    .line 132
    .restart local v10    # "table":Lcom/lidroid/xutils/db/table/Table;
    if-eqz v10, :cond_6

    if-nez v3, :cond_6

    instance-of v11, v1, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v11, :cond_6

    .line 133
    iget-object v11, v10, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v11, v5}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    .line 136
    :cond_6
    invoke-virtual {v1, v5}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 137
    .end local v1    # "column":Lcom/lidroid/xutils/db/table/Column;
    .end local v3    # "columnValue":Ljava/lang/Object;
    .end local v10    # "table":Lcom/lidroid/xutils/db/table/Table;
    :catch_1
    move-exception v4

    .line 138
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "index"    # I

    .prologue
    .line 54
    iget-object v4, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v4, p2, p3}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "fieldValue":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v3, 0x0

    .line 58
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    new-instance v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v3, p0, v2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    .line 75
    :goto_1
    iget-object v4, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3

    .line 77
    :try_start_0
    iget-object v4, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_1
    const-class v4, Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    :try_start_1
    new-instance v4, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v4, p0, v2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getAllFromDb()Ljava/util/List;
    :try_end_1
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .local v3, "value":Ljava/util/List;
    goto :goto_1

    .line 64
    .local v3, "value":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Lcom/lidroid/xutils/exception/DbException;
    invoke-virtual {v1}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    .end local v1    # "e":Lcom/lidroid/xutils/exception/DbException;
    :cond_2
    :try_start_2
    new-instance v4, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v4, p0, v2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getFirstFromDb()Ljava/lang/Object;
    :try_end_2
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_1

    .line 70
    :catch_2
    move-exception v1

    .line 71
    .restart local v1    # "e":Lcom/lidroid/xutils/exception/DbException;
    invoke-virtual {v1}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 83
    .end local v1    # "e":Lcom/lidroid/xutils/exception/DbException;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    iget-object v4, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 85
    :catch_3
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
