.class Lcom/market2345/filebrowser/CategoryBar$Category;
.super Ljava/lang/Object;
.source "CategoryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/CategoryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Category"
.end annotation


# instance fields
.field public aniStep:J

.field public resImg:I

.field final synthetic this$0:Lcom/market2345/filebrowser/CategoryBar;

.field public tmpValue:J

.field public value:J


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/CategoryBar;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/market2345/filebrowser/CategoryBar$Category;->this$0:Lcom/market2345/filebrowser/CategoryBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/CategoryBar;Lcom/market2345/filebrowser/CategoryBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/CategoryBar;
    .param p2, "x1"    # Lcom/market2345/filebrowser/CategoryBar$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/CategoryBar$Category;-><init>(Lcom/market2345/filebrowser/CategoryBar;)V

    return-void
.end method
