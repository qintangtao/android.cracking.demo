.class Lcom/market2345/lm/activity/FastAdapter$2;
.super Ljava/lang/Object;
.source "FastAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/FastAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/lm/activity/FastAdapter;


# direct methods
.method constructor <init>(Lcom/market2345/lm/activity/FastAdapter;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;

    .line 157
    .local v0, "holder":Lcom/market2345/lm/activity/FastAdapter$ViewHolder;
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    iget-boolean v1, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    .line 159
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->notcheck:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/market2345/lm/activity/FastAdapter;->access$600(Lcom/market2345/lm/activity/FastAdapter;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/lm/view/LMCheckBox;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$300(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$300(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;->onChange()V

    .line 168
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/lm/activity/FastAdapter;->access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    .line 162
    iget-object v1, v0, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter$2;->this$0:Lcom/market2345/lm/activity/FastAdapter;

    # getter for: Lcom/market2345/lm/activity/FastAdapter;->checked:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/market2345/lm/activity/FastAdapter;->access$700(Lcom/market2345/lm/activity/FastAdapter;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/lm/view/LMCheckBox;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
