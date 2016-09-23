.class Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GiftListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/gift/GiftListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field diver:Landroid/widget/FrameLayout;

.field gift_code:Landroid/widget/TextView;

.field gift_content:Landroid/widget/TextView;

.field gift_get:Landroid/widget/TextView;

.field gift_icon:Landroid/widget/ImageView;

.field gift_over_time:Landroid/widget/TextView;

.field gift_title:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/market2345/account/gift/GiftListAdapter;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/GiftListAdapter;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/market2345/account/gift/GiftListAdapter$ViewHolder;->this$0:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
