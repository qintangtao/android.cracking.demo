.class public Lcom/market2345/dumpclean/widget/NumberImagview;
.super Landroid/widget/ImageView;
.source "NumberImagview.java"


# instance fields
.field private GB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private KB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private MB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b3:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b4:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b5:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b6:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b7:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b8:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b9:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private dot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private imageHeight:I

.field private imageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202dd

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getImageSize()V

    .line 63
    return-void
.end method

.method private getImageSize()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 72
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 69
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 70
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->imageWidth:I

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->imageHeight:I

    goto :goto_0
.end method


# virtual methods
.method public setImageView(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->dot:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->dot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->dot:Ljava/lang/ref/WeakReference;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->dot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    :cond_2
    :goto_0
    return-void

    .line 82
    :cond_3
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202dd

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 89
    :cond_6
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b1:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 91
    :cond_7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202de

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b1:Ljava/lang/ref/WeakReference;

    .line 94
    :cond_8
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 96
    :cond_9
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 97
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b2:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 98
    :cond_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202df

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b2:Ljava/lang/ref/WeakReference;

    .line 101
    :cond_b
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 103
    :cond_c
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 104
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b3:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b3:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 105
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e0

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b3:Ljava/lang/ref/WeakReference;

    .line 108
    :cond_e
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b3:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 110
    :cond_f
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 111
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b4:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b4:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 112
    :cond_10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b4:Ljava/lang/ref/WeakReference;

    .line 116
    :cond_11
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b4:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 117
    :cond_12
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 118
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b5:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b5:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 119
    :cond_13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b5:Ljava/lang/ref/WeakReference;

    .line 123
    :cond_14
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b5:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 124
    :cond_15
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 125
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b6:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 126
    :cond_16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b6:Ljava/lang/ref/WeakReference;

    .line 129
    :cond_17
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b6:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 131
    :cond_18
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 132
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b7:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b7:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 133
    :cond_19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e4

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b7:Ljava/lang/ref/WeakReference;

    .line 136
    :cond_1a
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b7:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 138
    :cond_1b
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 139
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b8:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b8:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 140
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b8:Ljava/lang/ref/WeakReference;

    .line 143
    :cond_1d
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b8:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 145
    :cond_1e
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 146
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b9:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b9:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    .line 147
    :cond_1f
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b9:Ljava/lang/ref/WeakReference;

    .line 150
    :cond_20
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->b9:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 152
    :cond_21
    const-string v0, "KB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 153
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->KB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->KB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    .line 154
    :cond_22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202db

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->KB:Ljava/lang/ref/WeakReference;

    .line 157
    :cond_23
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->KB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 159
    :cond_24
    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 160
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->MB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->MB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    .line 161
    :cond_25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202dc

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->MB:Ljava/lang/ref/WeakReference;

    .line 166
    :cond_26
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->MB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 167
    :cond_27
    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->GB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->GB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    .line 169
    :cond_28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/NumberImagview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202da

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->GB:Ljava/lang/ref/WeakReference;

    .line 173
    :cond_29
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/NumberImagview;->GB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/widget/NumberImagview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method
