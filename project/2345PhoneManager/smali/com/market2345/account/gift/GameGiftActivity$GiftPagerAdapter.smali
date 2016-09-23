.class Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GameGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/gift/GameGiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GiftPagerAdapter"
.end annotation


# instance fields
.field private final TITLES:[Ljava/lang/String;

.field final synthetic this$0:Lcom/market2345/account/gift/GameGiftActivity;


# direct methods
.method public constructor <init>(Lcom/market2345/account/gift/GameGiftActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;->this$0:Lcom/market2345/account/gift/GameGiftActivity;

    .line 55
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u793c\u5305\u4e2d\u5fc3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6211\u7684\u793c\u5305"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;->TITLES:[Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;->TITLES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Lcom/market2345/account/gift/GiftCenterFragment;

    invoke-direct {v0}, Lcom/market2345/account/gift/GiftCenterFragment;-><init>()V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/market2345/account/gift/UserGiftFragment;

    invoke-direct {v0}, Lcom/market2345/account/gift/UserGiftFragment;-><init>()V

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;->TITLES:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
