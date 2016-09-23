.class Lcom/market2345/detail/SubCommentsFragment$4;
.super Ljava/lang/Object;
.source "SubCommentsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/SubCommentsFragment;->initCheckListener1111()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/SubCommentsFragment;


# direct methods
.method constructor <init>(Lcom/market2345/detail/SubCommentsFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment$4;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 282
    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 284
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 292
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 288
    .restart local v0    # "id":I
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$4;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # setter for: Lcom/market2345/detail/SubCommentsFragment;->currentCheckedState:Z
    invoke-static {v1, p2}, Lcom/market2345/detail/SubCommentsFragment;->access$302(Lcom/market2345/detail/SubCommentsFragment;Z)Z

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x7f0903b1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
