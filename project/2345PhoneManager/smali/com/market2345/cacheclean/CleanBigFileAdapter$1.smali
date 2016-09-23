.class Lcom/market2345/cacheclean/CleanBigFileAdapter$1;
.super Ljava/lang/Object;
.source "CleanBigFileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanBigFileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

.field final synthetic val$pos:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanBigFileAdapter;II)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    iput p2, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->val$position:I

    iput p3, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->access$000(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/BigFileInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/BigFileInfo;->setSelect(Z)V

    .line 133
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileAdapter;->listener:Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->access$100(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileAdapter;->listener:Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->access$100(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;

    move-result-object v0

    iget v1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->val$pos:I

    invoke-interface {v0, v1}, Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;->onSelect(I)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->access$000(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/BigFileInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/BigFileInfo;->setSelect(Z)V

    .line 139
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileAdapter;->listener:Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->access$100(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileAdapter;->listener:Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->access$100(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;

    move-result-object v0

    iget v1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;->val$pos:I

    invoke-interface {v0, v1}, Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;->onCancel(I)V

    goto :goto_0
.end method
