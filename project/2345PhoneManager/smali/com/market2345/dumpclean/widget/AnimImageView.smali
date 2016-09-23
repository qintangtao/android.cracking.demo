.class public Lcom/market2345/dumpclean/widget/AnimImageView;
.super Landroid/widget/ImageView;
.source "AnimImageView.java"


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/AnimImageView;->intBackGround()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/AnimImageView;->intBackGround()V

    .line 22
    return-void
.end method


# virtual methods
.method public intBackGround()V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/AnimImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/AnimImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 26
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/AnimImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/AnimImageView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 29
    :cond_0
    return-void
.end method
