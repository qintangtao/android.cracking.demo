.class public Lcom/market2345/common/util/BaseAdapterHelper;
.super Ljava/lang/Object;
.source "BaseAdapterHelper.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private position:I

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/market2345/common/util/BaseAdapterHelper;->context:Landroid/content/Context;

    .line 46
    iput p4, p0, Lcom/market2345/common/util/BaseAdapterHelper;->position:I

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->views:Landroid/util/SparseArray;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->convertView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->convertView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "position"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/market2345/common/util/BaseAdapterHelper;->context:Landroid/content/Context;

    .line 55
    iput p4, p0, Lcom/market2345/common/util/BaseAdapterHelper;->position:I

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->views:Landroid/util/SparseArray;

    .line 57
    iput-object p3, p0, Lcom/market2345/common/util/BaseAdapterHelper;->convertView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->convertView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/market2345/common/util/BaseAdapterHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Lcom/market2345/common/util/BaseAdapterHelper;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/market2345/common/util/BaseAdapterHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    .line 88
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/common/util/BaseAdapterHelper;

    .line 84
    .local v0, "existingHelper":Lcom/market2345/common/util/BaseAdapterHelper;
    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcom/market2345/common/util/BaseAdapterHelper;

    .end local v0    # "existingHelper":Lcom/market2345/common/util/BaseAdapterHelper;
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/market2345/common/util/BaseAdapterHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    goto :goto_0

    .line 87
    .restart local v0    # "existingHelper":Lcom/market2345/common/util/BaseAdapterHelper;
    :cond_1
    iput p4, v0, Lcom/market2345/common/util/BaseAdapterHelper;->position:I

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/market2345/common/util/BaseAdapterHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "position"    # I

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Lcom/market2345/common/util/BaseAdapterHelper;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/market2345/common/util/BaseAdapterHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/common/util/BaseAdapterHelper;

    .line 98
    .local v0, "existingHelper":Lcom/market2345/common/util/BaseAdapterHelper;
    iput p4, v0, Lcom/market2345/common/util/BaseAdapterHelper;->position:I

    goto :goto_0
.end method

.method private retrieveView(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v1, p0, Lcom/market2345/common/util/BaseAdapterHelper;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 479
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/market2345/common/util/BaseAdapterHelper;->convertView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/market2345/common/util/BaseAdapterHelper;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use BaseAdapterHelper constructor with position if you need to retrieve the position."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    iget v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->position:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/market2345/common/util/BaseAdapterHelper;->convertView:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public linkify(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    .local v0, "view":Landroid/widget/TextView;
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 271
    return-object v0
.end method

.method public setAdapter(ILandroid/widget/Adapter;)Landroid/widget/AdapterView;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 453
    .local v0, "view":Landroid/widget/AdapterView;
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 454
    return-object v0
.end method

.method public setAlpha(IF)Landroid/view/View;
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # F

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, "view":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 238
    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 246
    :goto_0
    return-object v1

    .line 241
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 242
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 243
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 244
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setBackgroundColor(II)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    return-object v0
.end method

.method public setBackgroundRes(II)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "backgroundRes"    # I

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    return-object v0
.end method

.method public setChecked(IZ)Landroid/widget/Checkable;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 440
    .local v0, "view":Landroid/widget/Checkable;
    invoke-interface {v0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 441
    return-object v0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    return-object v0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-object v0
.end method

.method public setImageResource(II)Landroid/widget/ImageView;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "imageResId"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    return-object v0
.end method

.method public setImageUrl(ILjava/lang/String;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 218
    .local v0, "view":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 219
    return-object v0
.end method

.method public setMax(II)Landroid/widget/ProgressBar;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 333
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 334
    return-object v0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    return-object v0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 401
    return-object v0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    return-object v0
.end method

.method public setProgress(II)Landroid/widget/ProgressBar;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 305
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 306
    return-object v0
.end method

.method public setProgress(III)Landroid/widget/ProgressBar;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I
    .param p3, "max"    # I

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 319
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 320
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 321
    return-object v0
.end method

.method public setRating(IF)Landroid/widget/RatingBar;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 346
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 347
    return-object v0
.end method

.method public setRating(IFI)Landroid/widget/RatingBar;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F
    .param p3, "max"    # I

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 360
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 361
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 362
    return-object v0
.end method

.method public setTag(IILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 428
    return-object v0
.end method

.method public setTag(ILjava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 414
    return-object v0
.end method

.method public setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-object v0
.end method

.method public setTextColor(II)Landroid/widget/TextView;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    return-object v0
.end method

.method public setTextColorRes(II)Landroid/widget/TextView;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "textColorRes"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/market2345/common/util/BaseAdapterHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    return-object v0
.end method

.method public setTypeface(ILandroid/graphics/Typeface;)Landroid/widget/TextView;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 280
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 281
    return-object v0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lcom/market2345/common/util/BaseAdapterHelper;
    .locals 6
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "viewIds"    # [I

    .prologue
    .line 288
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 289
    .local v4, "viewId":I
    invoke-direct {p0, v4}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 290
    .local v3, "view":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 291
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v3    # "view":Landroid/widget/TextView;
    .end local v4    # "viewId":I
    :cond_0
    return-object p0
.end method

.method public setVisible(II)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/market2345/common/util/BaseAdapterHelper;->retrieveView(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    return-object v0
.end method
