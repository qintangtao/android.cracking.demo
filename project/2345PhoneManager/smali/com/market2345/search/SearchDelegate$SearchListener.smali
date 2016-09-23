.class public interface abstract Lcom/market2345/search/SearchDelegate$SearchListener;
.super Ljava/lang/Object;
.source "SearchDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/search/SearchDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchListener"
.end annotation


# virtual methods
.method public abstract onSearchResult(Lcom/market2345/model/AppListDatas;)V
.end method

.method public abstract onSuggestion(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
