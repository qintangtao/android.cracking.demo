.class Lcom/market2345/cacheclean/CleanApkAdapter$1;
.super Ljava/lang/Object;
.source "CleanApkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanApkAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanApkAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanApkAdapter;I)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanApkAdapter;

    iput p2, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanApkAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanApkAdapter;->listener:Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->access$000(Lcom/market2345/cacheclean/CleanApkAdapter;)Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanApkAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanApkAdapter;->listener:Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->access$000(Lcom/market2345/cacheclean/CleanApkAdapter;)Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;

    move-result-object v0

    iget v1, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->val$pos:I

    invoke-interface {v0, v1}, Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;->onSelect(I)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanApkAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanApkAdapter;->listener:Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->access$000(Lcom/market2345/cacheclean/CleanApkAdapter;)Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->this$0:Lcom/market2345/cacheclean/CleanApkAdapter;

    # getter for: Lcom/market2345/cacheclean/CleanApkAdapter;->listener:Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->access$000(Lcom/market2345/cacheclean/CleanApkAdapter;)Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;

    move-result-object v0

    iget v1, p0, Lcom/market2345/cacheclean/CleanApkAdapter$1;->val$pos:I

    invoke-interface {v0, v1}, Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;->onCancel(I)V

    goto :goto_0
.end method
