.class Lcom/market2345/applist/activity/ClassifyListActivityNew$1;
.super Ljava/lang/Object;
.source "ClassifyListActivityNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/activity/ClassifyListActivityNew;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/activity/ClassifyListActivityNew;


# direct methods
.method constructor <init>(Lcom/market2345/applist/activity/ClassifyListActivityNew;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/applist/activity/ClassifyListActivityNew$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/applist/activity/ClassifyListActivityNew$1;->this$0:Lcom/market2345/applist/activity/ClassifyListActivityNew;

    invoke-virtual {v0}, Lcom/market2345/applist/activity/ClassifyListActivityNew;->finish()V

    .line 45
    return-void
.end method
