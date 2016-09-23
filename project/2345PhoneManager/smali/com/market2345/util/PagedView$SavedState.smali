.class public Lcom/market2345/util/PagedView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/util/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/market2345/util/PagedView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2037
    new-instance v0, Lcom/market2345/util/PagedView$SavedState$1;

    invoke-direct {v0}, Lcom/market2345/util/PagedView$SavedState$1;-><init>()V

    sput-object v0, Lcom/market2345/util/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2026
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2017
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/util/PagedView$SavedState;->currentPage:I

    .line 2027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/market2345/util/PagedView$SavedState;->currentPage:I

    .line 2028
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/market2345/util/PagedView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/market2345/util/PagedView$1;

    .prologue
    .line 2015
    invoke-direct {p0, p1}, Lcom/market2345/util/PagedView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2021
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2017
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/util/PagedView$SavedState;->currentPage:I

    .line 2022
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2033
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2034
    iget v0, p0, Lcom/market2345/util/PagedView$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2035
    return-void
.end method
