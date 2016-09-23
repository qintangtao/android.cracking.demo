.class public Lcom/market2345/slidemenu/model/DownloadTitleItem;
.super Ljava/lang/Object;
.source "DownloadTitleItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/model/DownloadTitleItem$1;,
        Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;
    }
.end annotation


# static fields
.field public static final DOWNLOADED:Ljava/lang/String; = "downloaded"

.field public static final DOWNLOADING:Ljava/lang/String; = "downloading"


# instance fields
.field public appCount:I

.field public key:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem;->title:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem;->key:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem;->appCount:I

    .line 34
    return-void
.end method


# virtual methods
.method public fillView(Landroid/view/View;Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "holder":Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;
    if-nez p1, :cond_0

    .line 41
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030051

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;

    .end local v0    # "holder":Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;
    invoke-direct {v0, p0, v3}, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;-><init>(Lcom/market2345/slidemenu/model/DownloadTitleItem;Lcom/market2345/slidemenu/model/DownloadTitleItem$1;)V

    .line 43
    .restart local v0    # "holder":Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;
    const v1, 0x7f090230

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;->titleText:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f090231

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;->deleteAllText:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :cond_0
    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;
    check-cast v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;

    .line 51
    .restart local v0    # "holder":Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;
    :cond_1
    iget-object v1, v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;->titleText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem;->appCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const-string v1, "downloaded"

    iget-object v2, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    iget-object v1, v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;->deleteAllText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v1, v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;->deleteAllText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_2
    :goto_0
    return-object p1

    .line 57
    :cond_3
    const-string v1, "downloading"

    iget-object v2, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, v0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;->deleteAllText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
