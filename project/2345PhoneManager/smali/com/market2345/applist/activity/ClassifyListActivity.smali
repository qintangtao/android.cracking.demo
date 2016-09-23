.class public Lcom/market2345/applist/activity/ClassifyListActivity;
.super Lcom/market2345/applist/activity/TitleBarActivity;
.source "ClassifyListActivity.java"


# static fields
.field public static final CATEGORYID:Ljava/lang/String; = "categoryid"

.field public static final CATEGORYNAME:Ljava/lang/String; = "categoryname"

.field public static final CATEGORYTAG:Ljava/lang/String; = "categorytag"

.field public static final CLASSTYPE:Ljava/lang/String; = "classtype"

.field public static final CURRENTINDEX:Ljava/lang/String; = "currentindex"

.field public static final TAGS:Ljava/lang/String; = "tags"


# instance fields
.field private categoryId:Ljava/lang/String;

.field private categoryName:Ljava/lang/String;

.field private classType:Ljava/lang/String;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private currentIndex:I

.field private currentTag:Ljava/lang/String;

.field private currentViewId:I

.field private fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private menuDownLoad2:Landroid/widget/TextView;

.field private mhHandler:Landroid/os/Handler;

.field private tagClickListener:Landroid/view/View$OnClickListener;

.field private tagText1:Landroid/widget/TextView;

.field private tagText2:Landroid/widget/TextView;

.field private tagText3:Landroid/widget/TextView;

.field private tagText4:Landroid/widget/TextView;

.field private tagText5:Landroid/widget/TextView;

.field private tagText6:Landroid/widget/TextView;

.field private tagText7:Landroid/widget/TextView;

.field private tagText8:Landroid/widget/TextView;

.field private tags:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/market2345/applist/activity/TitleBarActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/market2345/applist/activity/ClassifyListActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/applist/activity/ClassifyListActivity$1;-><init>(Lcom/market2345/applist/activity/ClassifyListActivity;)V

    iput-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    .line 394
    new-instance v0, Lcom/market2345/applist/activity/ClassifyListActivity$2;

    invoke-direct {v0, p0}, Lcom/market2345/applist/activity/ClassifyListActivity$2;-><init>(Lcom/market2345/applist/activity/ClassifyListActivity;)V

    iput-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/applist/activity/ClassifyListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentViewId:I

    return v0
.end method

.method static synthetic access$002(Lcom/market2345/applist/activity/ClassifyListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentViewId:I

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/applist/activity/ClassifyListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/applist/activity/ClassifyListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/market2345/applist/activity/ClassifyListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/applist/activity/ClassifyListActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/applist/activity/ClassifyListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->changeTextSelectStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/market2345/applist/activity/ClassifyListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/activity/ClassifyListActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->changeFragment()V

    return-void
.end method

.method private changeFragment()V
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    if-nez v1, :cond_0

    .line 259
    new-instance v1, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f09005e

    invoke-direct {v1, v2, v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 262
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->containsFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    .line 274
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->categoryId:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->classType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/market2345/applist/ClassifyAppListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/applist/ClassifyAppListFragment;

    move-result-object v0

    .line 269
    .local v0, "fragment":Lcom/market2345/applist/ClassifyAppListFragment;
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/applist/ClassifyAppListFragment;->setSupportTag(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/market2345/applist/ClassifyAppListFragment;->showSelf()V

    .line 271
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Lcom/market2345/ui/BaseFragment;)V

    goto :goto_0
.end method

.method private changeTextSelectStatus()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 347
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText1:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 349
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText2:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 351
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 353
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 357
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 359
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentBack(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 361
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentTextColor(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    return-void
.end method

.method private downLoadAnimation(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 212
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 213
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 215
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 216
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 217
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 218
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 219
    return-void
.end method

.method private getChildString(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 391
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentBack(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 367
    iget v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentViewId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 370
    const v0, 0x7f020080

    .line 372
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070078

    goto :goto_0
.end method

.method private getCurrentTextColor(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 377
    iget v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentViewId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 381
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private getCurrentViewId(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 288
    iget v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentIndex:I

    packed-switch v0, :pswitch_data_0

    .line 305
    const v0, 0x7f090064

    :goto_0
    return v0

    .line 291
    :pswitch_0
    const v0, 0x7f090065

    goto :goto_0

    .line 293
    :pswitch_1
    const v0, 0x7f090066

    goto :goto_0

    .line 295
    :pswitch_2
    const v0, 0x7f090067

    goto :goto_0

    .line 297
    :pswitch_3
    const v0, 0x7f090068

    goto :goto_0

    .line 299
    :pswitch_4
    const v0, 0x7f090069

    goto :goto_0

    .line 301
    :pswitch_5
    const v0, 0x7f09006a

    goto :goto_0

    .line 303
    :pswitch_6
    const v0, 0x7f09006b

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private initTitleView()V
    .locals 3

    .prologue
    .line 310
    const v1, 0x7f090064

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText1:Landroid/widget/TextView;

    .line 311
    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText2:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f090066

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    .line 313
    const v1, 0x7f090067

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    .line 314
    const v1, 0x7f090068

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    .line 315
    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    .line 316
    const v1, 0x7f09006a

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    .line 317
    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    .line 319
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText2:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/market2345/applist/activity/ClassifyListActivity;->getChildString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removeNullStringView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 225
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    array-length v0, v0

    rsub-int/lit8 v0, v0, 0x8

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_4
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText8:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText7:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText6:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tagText3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 145
    const-string v4, "classtype"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->classType:Ljava/lang/String;

    .line 146
    const-string v4, "categoryid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->categoryId:Ljava/lang/String;

    .line 147
    const-string v4, "tags"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    .line 148
    const-string v4, "categoryname"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->categoryName:Ljava/lang/String;

    .line 149
    const-string v4, "categorytag"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    .line 150
    const-string v4, "currentindex"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentIndex:I

    .line 151
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->categoryId:Ljava/lang/String;

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    .line 153
    :cond_0
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivity;->setContentView(I)V

    .line 154
    const v4, 0x7f090052

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "page_title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->categoryName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v4, 0x7f090051

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "left_btn":Landroid/view/View;
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v4, 0x7f090130

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 160
    .local v2, "menuDownLoad":Landroid/widget/FrameLayout;
    const v4, 0x7f0903ea

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->menuDownLoad2:Landroid/widget/TextView;

    .line 161
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v4, 0x7f090063

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 163
    invoke-direct {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->initTitleView()V

    .line 164
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->removeNullStringView()V

    .line 167
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentTag:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivity;->getCurrentViewId(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentViewId:I

    .line 168
    invoke-direct {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->changeTextSelectStatus()V

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->changeFragment()V

    .line 178
    .end local v1    # "left_btn":Landroid/view/View;
    .end local v2    # "menuDownLoad":Landroid/widget/FrameLayout;
    .end local v3    # "page_title":Landroid/widget/TextView;
    :cond_2
    return-void

    .line 155
    .restart local v3    # "page_title":Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->categoryName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/market2345/applist/activity/TitleBarActivity;->onDestroy()V

    .line 208
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/market2345/download/event/DownStartEvent;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V

    .line 201
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .param p1, "hasFocus"    # Z

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onWindowFocusChanged(Z)V

    .line 183
    iget v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentIndex:I

    iget-object v5, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentIndex:I

    iget-object v5, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->tags:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_1

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_1
    iget v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentIndex:I

    if-nez v4, :cond_3

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0

    .line 189
    :cond_3
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/market2345/applist/activity/ClassifyListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 192
    .local v3, "screenWidth":I
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 193
    .local v0, "density":F
    const/high16 v4, 0x43520000    # 210.0f

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->currentIndex:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x50

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 194
    .local v2, "moveSize":F
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivity;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    float-to-int v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method
