.class public Lcom/market2345/search/SearchHistoryManager;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/search/SearchHistoryManager$ValueComparator;
    }
.end annotation


# static fields
.field public static final PREF_SEARCH_HISTORY:Ljava/lang/String; = "PREF_SEARCH_HISTORY"

.field static gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/market2345/search/SearchHistoryManager;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PREF_SEARCH_HISTORY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private loadMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PREF_SEARCH_HISTORY"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "json":Ljava/lang/String;
    new-instance v3, Lcom/market2345/search/SearchHistoryManager$1;

    invoke-direct {v3, p0}, Lcom/market2345/search/SearchHistoryManager$1;-><init>(Lcom/market2345/search/SearchHistoryManager;)V

    invoke-virtual {v3}, Lcom/market2345/search/SearchHistoryManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 72
    .local v2, "type":Ljava/lang/reflect/Type;
    sget-object v3, Lcom/market2345/search/SearchHistoryManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 73
    .local v0, "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "words"    # Ljava/lang/String;

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->loadMap()Ljava/util/HashMap;

    move-result-object v0

    .line 47
    .local v0, "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_SEARCH_HISTORY"

    sget-object v3, Lcom/market2345/search/SearchHistoryManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    .end local v0    # "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deleteAll()V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_SEARCH_HISTORY"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadAll()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->loadMap()Ljava/util/HashMap;

    move-result-object v1

    .line 58
    .local v1, "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/market2345/search/SearchHistoryManager$ValueComparator;

    invoke-direct {v0, v1}, Lcom/market2345/search/SearchHistoryManager$ValueComparator;-><init>(Ljava/util/Map;)V

    .line 60
    .local v0, "bvc":Lcom/market2345/search/SearchHistoryManager$ValueComparator;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 61
    .local v2, "sorted_map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .end local v0    # "bvc":Lcom/market2345/search/SearchHistoryManager$ValueComparator;
    .end local v2    # "sorted_map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public declared-synchronized save(Lcom/market2345/search/SearchHistory;)V
    .locals 6
    .param p1, "searchHistory"    # Lcom/market2345/search/SearchHistory;

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->loadMap()Ljava/util/HashMap;

    move-result-object v1

    .line 28
    .local v1, "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .restart local v1    # "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    .line 32
    new-instance v0, Lcom/market2345/search/SearchHistoryManager$ValueComparator;

    invoke-direct {v0, v1}, Lcom/market2345/search/SearchHistoryManager$ValueComparator;-><init>(Ljava/util/Map;)V

    .line 33
    .local v0, "bvc":Lcom/market2345/search/SearchHistoryManager$ValueComparator;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 34
    .local v2, "sorted_map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 35
    iget-object v3, p1, Lcom/market2345/search/SearchHistory;->word:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    iget-object v3, p1, Lcom/market2345/search/SearchHistory;->word:Ljava/lang/String;

    iget-wide v4, p1, Lcom/market2345/search/SearchHistory;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PREF_SEARCH_HISTORY"

    sget-object v5, Lcom/market2345/search/SearchHistoryManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v0    # "bvc":Lcom/market2345/search/SearchHistoryManager$ValueComparator;
    .end local v2    # "sorted_map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/market2345/search/SearchHistory;->word:Ljava/lang/String;

    iget-wide v4, p1, Lcom/market2345/search/SearchHistory;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Lcom/market2345/search/SearchHistoryManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PREF_SEARCH_HISTORY"

    sget-object v5, Lcom/market2345/search/SearchHistoryManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    .end local v1    # "historyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
