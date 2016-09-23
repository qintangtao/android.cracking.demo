.class public Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "WrapperExpandableListAdapter.java"


# instance fields
.field private final mGroupExpandedMap:Landroid/util/SparseBooleanArray;

.field private final mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/BaseExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseExpandableListAdapter;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 17
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    .line 20
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    .line 21
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getChildType(II)I

    move-result v0

    return v0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getChildTypeCount()I

    move-result v0

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/BaseExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 3
    .param p1, "groupId"    # J
    .param p3, "childId"    # J

    .prologue
    .line 133
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCombinedGroupId(J)J
    .locals 3
    .param p1, "groupId"    # J

    .prologue
    .line 128
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f09000f

    .line 80
    if-eqz p3, :cond_1

    .line 81
    invoke-virtual {p3, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 83
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 84
    .local v0, "changedVisibility":Z
    if-eqz v0, :cond_0

    .line 85
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .end local v0    # "changedVisibility":Z
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p3, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 91
    iget-object v2, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->isChildSelectable(II)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isGroupExpanded(I)Z
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 138
    .local v0, "expanded":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 123
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 124
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mGroupExpandedMap:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 117
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 118
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 26
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->mWrappedAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 31
    return-void
.end method
