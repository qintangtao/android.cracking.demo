.class public Lcom/market2345/home/model/BottomBarItem;
.super Ljava/lang/Object;
.source "BottomBarItem.java"

# interfaces
.implements Lcom/market2345/home/model/IBottomBarItem;


# instance fields
.field public backIdSelected:Ljava/lang/Integer;

.field public backSelectorId:Ljava/lang/Integer;

.field private canshow:Z

.field private count:I

.field public eventCMD:Ljava/lang/String;

.field private isSelected:Z

.field private redText:Landroid/widget/TextView;

.field public title:Ljava/lang/String;

.field public topDrawableId:Ljava/lang/Integer;

.field public topDrawableIdSelected:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/market2345/home/model/BottomBarItem;->isSelected:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    .line 36
    iput-boolean v1, p0, Lcom/market2345/home/model/BottomBarItem;->canshow:Z

    .line 38
    iput v1, p0, Lcom/market2345/home/model/BottomBarItem;->count:I

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/market2345/home/model/BottomBarItem;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "CMD"    # Ljava/lang/String;
    .param p2, "topDrawId"    # Ljava/lang/Integer;
    .param p3, "topDrawableIdSelected"    # Ljava/lang/Integer;
    .param p4, "backSelectorId"    # Ljava/lang/Integer;
    .param p5, "back_selectId"    # Ljava/lang/Integer;

    .prologue
    .line 80
    new-instance v0, Lcom/market2345/home/model/BottomBarItem;

    invoke-direct {v0}, Lcom/market2345/home/model/BottomBarItem;-><init>()V

    .line 81
    .local v0, "instance":Lcom/market2345/home/model/BottomBarItem;
    iput-object p0, v0, Lcom/market2345/home/model/BottomBarItem;->title:Ljava/lang/String;

    .line 82
    iput-object p1, v0, Lcom/market2345/home/model/BottomBarItem;->eventCMD:Ljava/lang/String;

    .line 83
    iput-object p2, v0, Lcom/market2345/home/model/BottomBarItem;->topDrawableId:Ljava/lang/Integer;

    .line 84
    iput-object p3, v0, Lcom/market2345/home/model/BottomBarItem;->topDrawableIdSelected:Ljava/lang/Integer;

    .line 85
    iput-object p4, v0, Lcom/market2345/home/model/BottomBarItem;->backSelectorId:Ljava/lang/Integer;

    .line 86
    iput-object p5, v0, Lcom/market2345/home/model/BottomBarItem;->backIdSelected:Ljava/lang/Integer;

    .line 87
    return-object v0
.end method


# virtual methods
.method public getCMD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/home/model/BottomBarItem;->eventCMD:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;Z)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "canshow"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 42
    iput-boolean p3, p0, Lcom/market2345/home/model/BottomBarItem;->canshow:Z

    .line 43
    if-eqz p3, :cond_1

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030024

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    const v1, 0x7f090140

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "text":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/market2345/home/model/BottomBarItem;->isSelected:Z

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->topDrawableIdSelected:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    if-eqz p3, :cond_0

    .line 61
    const v1, 0x7f090141

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    .line 62
    const-string v1, "manage"

    invoke-virtual {p0}, Lcom/market2345/home/model/BottomBarItem;->getCMD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/market2345/home/model/BottomBarItem;->isSelected:Z

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_0
    :goto_2
    return-object p2

    .line 46
    .end local v0    # "text":Landroid/widget/TextView;
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030023

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 54
    .restart local v0    # "text":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->topDrawableId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 65
    :cond_3
    iget v1, p0, Lcom/market2345/home/model/BottomBarItem;->count:I

    if-lez v1, :cond_0

    .line 66
    iget v1, p0, Lcom/market2345/home/model/BottomBarItem;->count:I

    invoke-virtual {p0, p1, v1}, Lcom/market2345/home/model/BottomBarItem;->ifShowRednotify(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public hiddleRedNotify(Z)V
    .locals 3
    .param p1, "hiddle"    # Z

    .prologue
    .line 126
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 127
    if-eqz p1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public ifShowRednotify(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "count"    # I

    .prologue
    .line 102
    iget-boolean v1, p0, Lcom/market2345/home/model/BottomBarItem;->canshow:Z

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 106
    iput p2, p0, Lcom/market2345/home/model/BottomBarItem;->count:I

    .line 107
    if-lez p2, :cond_3

    .line 110
    const/16 v1, 0x63

    if-le p2, v1, :cond_2

    .line 111
    const-string v0, "99+"

    .line 115
    .local v0, "text":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 113
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_1

    .line 118
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/market2345/home/model/BottomBarItem;->redText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/market2345/home/model/BottomBarItem;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/market2345/home/model/BottomBarItem;->isSelected:Z

    .line 98
    return-void
.end method
