.class public Lcom/market2345/applist/activity/ClassifyListActivityNew;
.super Lcom/market2345/applist/activity/TitleBarActivity;
.source "ClassifyListActivityNew.java"


# static fields
.field public static final CATEGORYID:Ljava/lang/String; = "categoryid"

.field public static final CATEGORYNAME:Ljava/lang/String; = "categoryname"

.field public static final CATEGORYTAG:Ljava/lang/String; = "categorytag"

.field public static final CLASSTYPE:Ljava/lang/String; = "classtype"

.field public static final CURRENTINDEX:Ljava/lang/String; = "currentindex"

.field public static final TAGS:Ljava/lang/String; = "tags"


# instance fields
.field private fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

.field private menuDownLoad2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/market2345/applist/activity/TitleBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/market2345/applist/activity/ClassifyListActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 38
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 40
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivityNew;->setContentView(I)V

    .line 41
    const v4, 0x7f090051

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/market2345/applist/activity/ClassifyListActivityNew$1;

    invoke-direct {v5, p0}, Lcom/market2345/applist/activity/ClassifyListActivityNew$1;-><init>(Lcom/market2345/applist/activity/ClassifyListActivityNew;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-string v4, "categoryname"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f090052

    invoke-virtual {p0, v4}, Lcom/market2345/applist/activity/ClassifyListActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, ""

    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v4, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {p0}, Lcom/market2345/applist/activity/ClassifyListActivityNew;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f09005e

    invoke-direct {v4, v5, v6}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivityNew;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    .line 50
    new-instance v1, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;

    invoke-direct {v1}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;-><init>()V

    .line 51
    .local v1, "fragment":Lcom/market2345/slidemenu/ClassifyViewPagerFragment;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivityNew;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v4}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 54
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivityNew;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v4, v1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Lcom/market2345/ui/BaseFragment;)V

    .line 55
    iget-object v4, p0, Lcom/market2345/applist/activity/ClassifyListActivityNew;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v4}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    .line 58
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/market2345/slidemenu/ClassifyViewPagerFragment;
    :cond_1
    return-void
.end method
