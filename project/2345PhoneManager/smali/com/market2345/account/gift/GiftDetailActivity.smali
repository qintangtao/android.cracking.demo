.class public Lcom/market2345/account/gift/GiftDetailActivity;
.super Lcom/market2345/home/BaseTitleActivity;
.source "GiftDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;
    }
.end annotation


# static fields
.field public static final KEY_GIFT_ID:Ljava/lang/String; = "key.gift.id"

.field public static final KEY_SOFT_ID:Ljava/lang/String; = "key.soft.id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/home/BaseTitleActivity;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/market2345/home/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/market2345/account/gift/GiftDetailActivity;->setContentView(I)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v1, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;

    invoke-direct {v1}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "key.soft.id"

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key.soft.id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "key.gift.id"

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key.gift.id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0900af

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 61
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/market2345/account/gift/GiftDetailActivity$GiftDetailFragment;
    :cond_0
    const v2, 0x7f0b0087

    invoke-virtual {p0, v2}, Lcom/market2345/account/gift/GiftDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/account/gift/GiftDetailActivity;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
