.class Lcom/market2345/account/gift/GiftGetFragment$4;
.super Ljava/lang/Object;
.source "GiftGetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/GiftGetFragment;->createSuccessDialog(Lcom/market2345/account/model/GiftCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/GiftGetFragment;

.field final synthetic val$giftCodeView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/GiftGetFragment;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/market2345/account/gift/GiftGetFragment$4;->this$0:Lcom/market2345/account/gift/GiftGetFragment;

    iput-object p2, p0, Lcom/market2345/account/gift/GiftGetFragment$4;->val$giftCodeView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment$4;->val$giftCodeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/ApplicationUtils;->copy(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b005a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    return-void
.end method
