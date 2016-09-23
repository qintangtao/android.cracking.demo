.class Lcom/market2345/topic/TopicActivity$1;
.super Ljava/lang/Object;
.source "TopicActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/TopicActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/TopicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/topic/TopicActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/market2345/topic/TopicActivity$1;->this$0:Lcom/market2345/topic/TopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method
