.class public Lcom/market2345/search/SearchHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;,
        Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private histories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public historyListener:Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/market2345/search/SearchHistoryAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/market2345/search/SearchHistoryAdapter;->histories:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/search/SearchHistoryAdapter;->histories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/search/SearchHistoryAdapter;->histories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistories()Ljava/util/ArrayList;
    .locals 1
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
    .line 32
    iget-object v0, p0, Lcom/market2345/search/SearchHistoryAdapter;->histories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/market2345/search/SearchHistoryAdapter;->histories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "vh":Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "vh":Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;
    check-cast v1, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;

    .line 66
    .restart local v1    # "vh":Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/market2345/search/SearchHistoryAdapter;->histories:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "word":Ljava/lang/String;
    iget-object v3, v1, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, v1, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;->arrowImageView:Landroid/view/View;

    new-instance v4, Lcom/market2345/search/SearchHistoryAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/market2345/search/SearchHistoryAdapter$1;-><init>(Lcom/market2345/search/SearchHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "word":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/market2345/search/SearchHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030081

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v1, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;

    .end local v1    # "vh":Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;-><init>()V

    .line 59
    .restart local v1    # "vh":Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;
    const v3, 0x7f0902b8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0902b9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;->arrowImageView:Landroid/view/View;

    .line 61
    const v3, 0x7f0902b6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/market2345/search/SearchHistoryAdapter$ViewHolder;->searchArea:Landroid/view/View;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public setHistoryListener(Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;)V
    .locals 0
    .param p1, "historyListener"    # Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/market2345/search/SearchHistoryAdapter;->historyListener:Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;

    .line 102
    return-void
.end method
