.class Lcom/market2345/dumpclean/DeleteHelp$1;
.super Ljava/lang/Thread;
.source "DeleteHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/DeleteHelp;->deleteAll(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/DeleteHelp;

.field final synthetic val$data:Ljava/util/List;

.field final synthetic val$selectSize:J


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/DeleteHelp;Ljava/util/List;J)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    iput-object p2, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->val$data:Ljava/util/List;

    iput-wide p3, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->val$selectSize:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 43
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 45
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    iget-object v9, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->val$data:Ljava/util/List;

    # invokes: Lcom/market2345/dumpclean/DeleteHelp;->checkDefaultSelect(Ljava/util/List;)Z
    invoke-static {v8, v9}, Lcom/market2345/dumpclean/DeleteHelp;->access$000(Lcom/market2345/dumpclean/DeleteHelp;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 46
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    # getter for: Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/DeleteHelp;->access$100(Lcom/market2345/dumpclean/DeleteHelp;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "clean_result_cache"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setLastSet(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 51
    :goto_0
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    # getter for: Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/DeleteHelp;->access$100(Lcom/market2345/dumpclean/DeleteHelp;)Landroid/content/Context;

    move-result-object v8

    iget-wide v10, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->val$selectSize:J

    invoke-static {v8, v10, v11}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setCleanLastTimeSize(Landroid/content/Context;J)V

    .line 52
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    # getter for: Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/DeleteHelp;->access$100(Lcom/market2345/dumpclean/DeleteHelp;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/market2345/cacheclean/Util;->setClearDate(Landroid/content/Context;)V

    .line 53
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->val$data:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 54
    .local v4, "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    const-string v8, "\u5185\u5b58\u52a0\u901f"

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getSelect()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->lastCleanTime:J

    .line 57
    :cond_1
    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v3

    .line 58
    .local v3, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 59
    .local v2, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v8, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v8, :cond_4

    move-object v1, v2

    .line 61
    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .line 63
    .local v1, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    # invokes: Lcom/market2345/dumpclean/DeleteHelp;->deleteJunkChildCache(Lcom/market2345/dumpclean/mode/JunkChildCache;)V
    invoke-static {v8, v1}, Lcom/market2345/dumpclean/DeleteHelp;->access$200(Lcom/market2345/dumpclean/DeleteHelp;Lcom/market2345/dumpclean/mode/JunkChildCache;)V

    goto :goto_2

    .line 48
    .end local v1    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v3    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .end local v4    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    # getter for: Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/market2345/dumpclean/DeleteHelp;->access$100(Lcom/market2345/dumpclean/DeleteHelp;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "clean_result_cache"

    invoke-static {v8, v9, v12}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setLastSet(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 64
    .restart local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .restart local v3    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .restart local v4    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    instance-of v8, v2, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v8

    if-ne v8, v12, :cond_5

    move-object v7, v2

    .line 66
    check-cast v7, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    .line 67
    .local v7, "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    # invokes: Lcom/market2345/dumpclean/DeleteHelp;->deleteJunkChildResidual(Lcom/market2345/dumpclean/mode/JunkChildResidual;)V
    invoke-static {v8, v7}, Lcom/market2345/dumpclean/DeleteHelp;->access$300(Lcom/market2345/dumpclean/DeleteHelp;Lcom/market2345/dumpclean/mode/JunkChildResidual;)V

    goto :goto_2

    .line 69
    .end local v7    # "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    :cond_5
    instance-of v8, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v8

    if-ne v8, v12, :cond_6

    move-object v0, v2

    .line 71
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildApk;

    .line 72
    .local v0, "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    # invokes: Lcom/market2345/dumpclean/DeleteHelp;->deleteJunkChildApk(Lcom/market2345/dumpclean/mode/JunkChildApk;)V
    invoke-static {v8, v0}, Lcom/market2345/dumpclean/DeleteHelp;->access$400(Lcom/market2345/dumpclean/DeleteHelp;Lcom/market2345/dumpclean/mode/JunkChildApk;)V

    goto :goto_2

    .line 73
    .end local v0    # "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    :cond_6
    instance-of v8, v2, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v8, :cond_2

    .line 75
    iget-object v8, p0, Lcom/market2345/dumpclean/DeleteHelp$1;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    invoke-virtual {v8, v3}, Lcom/market2345/dumpclean/DeleteHelp;->killBackgroundProcess(Ljava/util/List;)V

    goto :goto_1

    .line 83
    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v3    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .end local v4    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method
