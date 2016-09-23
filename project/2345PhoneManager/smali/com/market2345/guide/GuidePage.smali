.class public interface abstract Lcom/market2345/guide/GuidePage;
.super Ljava/lang/Object;
.source "GuidePage.java"


# static fields
.field public static final GUIDECMD_SHOWFASTINSTALL:I = 0x22

.field public static final GUIDECMD_SHOWHOTKOWNBUTTON:I = 0x21

.field public static final GUIDECMD_SHOWSLIDINGMENU:I = 0x1e

.field public static final GUIDECMD_SHOWSLIDINGMENUBUTTONKOWNBUTTON:I = 0x1f

.field public static final GUIDECMD_SHOWUNIONICION:I = 0x1d

.field public static final GUIDECMD_SHOWVIEWPAGERSLIDINGKNOWBUTTON:I = 0x20

.field public static final SHOWHOTICONKEY:Ljava/lang/String; = "showhoticon"

.field public static final SHOWSLIDINGMENUBUTTONKEY:Ljava/lang/String; = "check_leftmenu"

.field public static final SHOWUNIONICONKEY:Ljava/lang/String; = "showunionicon"

.field public static final SHOWVIEWPAGERSLIDINGKEY:Ljava/lang/String; = "check_slide"


# virtual methods
.method public abstract buildDisplayView()Landroid/view/View;
.end method

.method public abstract buildPopupWindow()Landroid/widget/PopupWindow;
.end method

.method public abstract getPageTag()Ljava/lang/String;
.end method

.method public abstract isDisplayed()Z
.end method

.method public abstract saveDisplayed()V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setHandler(Landroid/os/Handler;)V
.end method
