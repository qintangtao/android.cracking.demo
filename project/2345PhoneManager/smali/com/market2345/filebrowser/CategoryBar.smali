.class public Lcom/market2345/filebrowser/CategoryBar;
.super Landroid/view/View;
.source "CategoryBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/CategoryBar$Category;
    }
.end annotation


# static fields
.field private static final ANI_PERIOD:I = 0x64

.field private static final ANI_TOTAL_FRAMES:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "CategoryBar"

.field private static final MARGIN:I


# instance fields
.field private categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/CategoryBar$Category;",
            ">;"
        }
    .end annotation
.end field

.field private mFullValue:J

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/filebrowser/CategoryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/filebrowser/CategoryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/CategoryBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/CategoryBar;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/market2345/filebrowser/CategoryBar;->stepAnimation()V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/market2345/filebrowser/CategoryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private stepAnimation()V
    .locals 8

    .prologue
    .line 174
    iget-object v3, p0, Lcom/market2345/filebrowser/CategoryBar;->timer:Ljava/util/Timer;

    if-nez v3, :cond_0

    .line 197
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v1, 0x0

    .line 178
    .local v1, "finished":I
    iget-object v3, p0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/CategoryBar$Category;

    .line 180
    .local v0, "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    iget-wide v4, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->tmpValue:J

    iget-wide v6, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->aniStep:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->tmpValue:J

    .line 181
    iget-wide v4, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->tmpValue:J

    iget-wide v6, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->value:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 183
    iget-wide v4, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->value:J

    iput-wide v4, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->tmpValue:J

    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 185
    iget-object v3, p0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/market2345/filebrowser/CategoryBar;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 189
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/market2345/filebrowser/CategoryBar;->timer:Ljava/util/Timer;

    .line 190
    const-string v3, "CategoryBar"

    const-string v4, "Animation stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/filebrowser/CategoryBar;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public addCategory(I)V
    .locals 2
    .param p1, "categoryImg"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/market2345/filebrowser/CategoryBar$Category;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market2345/filebrowser/CategoryBar$Category;-><init>(Lcom/market2345/filebrowser/CategoryBar;Lcom/market2345/filebrowser/CategoryBar$1;)V

    .line 86
    .local v0, "ca":Lcom/market2345/filebrowser/CategoryBar$Category;
    iput p1, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->resImg:I

    .line 87
    iget-object v1, p0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    const v14, 0x7f02006b

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/filebrowser/CategoryBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 104
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/filebrowser/CategoryBar;->getWidth()I

    move-result v14

    add-int/lit8 v13, v14, 0x0

    .line 105
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/filebrowser/CategoryBar;->getHeight()I

    move-result v14

    add-int/lit8 v7, v14, 0x0

    .line 106
    .local v7, "height":I
    if-le v13, v7, :cond_2

    const/4 v9, 0x1

    .line 108
    .local v9, "isHorizontal":Z
    :goto_0
    const/4 v3, 0x0

    .line 109
    .local v3, "bounds":Landroid/graphics/Rect;
    if-eqz v9, :cond_3

    .line 110
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "bounds":Landroid/graphics/Rect;
    const/4 v14, 0x0

    const/4 v15, 0x0

    add-int/lit8 v16, v13, 0x0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .restart local v3    # "bounds":Landroid/graphics/Rect;
    :goto_1
    const/4 v2, 0x0

    .line 115
    .local v2, "beginning":I
    if-nez v9, :cond_0

    .line 116
    add-int/2addr v2, v7

    .line 117
    :cond_0
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/market2345/filebrowser/CategoryBar;->mFullValue:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/CategoryBar$Category;

    .line 123
    .local v4, "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/filebrowser/CategoryBar;->timer:Ljava/util/Timer;

    if-nez v14, :cond_4

    iget-wide v10, v4, Lcom/market2345/filebrowser/CategoryBar$Category;->value:J

    .line 124
    .local v10, "value":J
    :goto_3
    if-eqz v9, :cond_5

    .line 126
    int-to-long v14, v13

    mul-long/2addr v14, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/filebrowser/CategoryBar;->mFullValue:J

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v12, v14

    .line 127
    .local v12, "w":I
    if-eqz v12, :cond_1

    .line 129
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 130
    add-int v14, v2, v12

    iput v14, v3, Landroid/graphics/Rect;->right:I

    .line 131
    iget v14, v4, Lcom/market2345/filebrowser/CategoryBar$Category;->resImg:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/filebrowser/CategoryBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 132
    iget v14, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 133
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 134
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    add-int/2addr v2, v12

    .line 136
    goto :goto_2

    .line 106
    .end local v2    # "beginning":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isHorizontal":Z
    .end local v10    # "value":J
    .end local v12    # "w":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 112
    .restart local v3    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "isHorizontal":Z
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    .end local v3    # "bounds":Landroid/graphics/Rect;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    add-int/lit8 v17, v7, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v3    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 123
    .restart local v2    # "beginning":I
    .restart local v4    # "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-wide v10, v4, Lcom/market2345/filebrowser/CategoryBar$Category;->tmpValue:J

    goto :goto_3

    .line 139
    .restart local v10    # "value":J
    :cond_5
    int-to-long v14, v7

    mul-long/2addr v14, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/filebrowser/CategoryBar;->mFullValue:J

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v6, v14

    .line 140
    .local v6, "h":I
    if-eqz v6, :cond_1

    .line 142
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 143
    sub-int v14, v2, v6

    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 144
    iget v14, v4, Lcom/market2345/filebrowser/CategoryBar$Category;->resImg:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/filebrowser/CategoryBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 145
    iget v14, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    .line 146
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    sub-int/2addr v2, v6

    goto/16 :goto_2

    .line 152
    .end local v4    # "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    .end local v6    # "h":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "value":J
    :cond_6
    if-eqz v9, :cond_7

    .line 154
    const/4 v14, 0x0

    iput v14, v3, Landroid/graphics/Rect;->left:I

    .line 155
    iget v14, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/filebrowser/CategoryBar;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    .line 162
    :goto_4
    const v14, 0x7f02006d

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/filebrowser/CategoryBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 163
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    return-void

    .line 159
    :cond_7
    const/4 v14, 0x0

    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 160
    iget v14, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/filebrowser/CategoryBar;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public setCategoryValue(IJ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 92
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/CategoryBar$Category;

    iput-wide p2, v0, Lcom/market2345/filebrowser/CategoryBar$Category;->value:J

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFullValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/market2345/filebrowser/CategoryBar;->mFullValue:J

    .line 66
    return-void
.end method

.method public declared-synchronized startAnimation()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/filebrowser/CategoryBar;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    :try_start_1
    const-string v0, "CategoryBar"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/market2345/filebrowser/CategoryBar;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/market2345/filebrowser/CategoryBar$Category;

    .line 210
    .local v6, "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/market2345/filebrowser/CategoryBar$Category;->tmpValue:J

    .line 211
    iget-wide v0, v6, Lcom/market2345/filebrowser/CategoryBar$Category;->value:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    iput-wide v0, v6, Lcom/market2345/filebrowser/CategoryBar$Category;->aniStep:J

    .line 212
    iget-wide v0, v6, Lcom/market2345/filebrowser/CategoryBar$Category;->aniStep:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 214
    iget-wide v0, v6, Lcom/market2345/filebrowser/CategoryBar$Category;->value:J

    iput-wide v0, v6, Lcom/market2345/filebrowser/CategoryBar$Category;->aniStep:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 201
    .end local v6    # "c":Lcom/market2345/filebrowser/CategoryBar$Category;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/CategoryBar;->timer:Ljava/util/Timer;

    .line 219
    iget-object v0, p0, Lcom/market2345/filebrowser/CategoryBar;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/market2345/filebrowser/CategoryBar$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/CategoryBar$1;-><init>(Lcom/market2345/filebrowser/CategoryBar;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
