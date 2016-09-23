.class Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/adapter/MusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cbChecked:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/market2345/filebrowser/adapter/MusicAdapter;

.field tvMucisDuration:Landroid/widget/TextView;

.field tvMucisSize:Landroid/widget/TextView;

.field tvMusicName:Landroid/widget/TextView;

.field tvSetRing:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/adapter/MusicAdapter;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->this$0:Lcom/market2345/filebrowser/adapter/MusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/adapter/MusicAdapter;Lcom/market2345/filebrowser/adapter/MusicAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/adapter/MusicAdapter;
    .param p2, "x1"    # Lcom/market2345/filebrowser/adapter/MusicAdapter$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/MusicAdapter;)V

    return-void
.end method
