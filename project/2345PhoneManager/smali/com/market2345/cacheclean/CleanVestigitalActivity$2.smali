.class Lcom/market2345/cacheclean/CleanVestigitalActivity$2;
.super Ljava/lang/Object;
.source "CleanVestigitalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanVestigitalActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanVestigitalActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # setter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z
    invoke-static {v0, v4}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1302(Lcom/market2345/cacheclean/CleanVestigitalActivity;Z)Z

    .line 206
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1400(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v0, v4}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->changeState(Z)V

    .line 212
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/CleanSDAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/CleanSDAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanSDAppAdapter;->notifyDataSetChanged()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1500(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # setter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z
    invoke-static {v0, v3}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1302(Lcom/market2345/cacheclean/CleanVestigitalActivity;Z)Z

    .line 220
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1400(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-virtual {v0, v3}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->changeState(Z)V

    .line 227
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/CleanSDAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/CleanSDAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanSDAppAdapter;->notifyDataSetChanged()V

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;->this$0:Lcom/market2345/cacheclean/CleanVestigitalActivity;

    # getter for: Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->access$1500(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
