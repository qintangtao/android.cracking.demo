.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$4;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$4;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 644
    return-void
.end method
