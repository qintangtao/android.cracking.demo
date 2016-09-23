.class Lcom/market2345/home/HomeTabActivity$MyHandler;
.super Landroid/os/Handler;
.source "HomeTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/home/HomeTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field checkIndex:I

.field theActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/home/HomeTabActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/market2345/home/HomeTabActivity;

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/home/HomeTabActivity$MyHandler;->checkIndex:I

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/home/HomeTabActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    .line 169
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/home/HomeTabActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/home/HomeTabActivity;

    .line 174
    .local v5, "activity":Lcom/market2345/home/HomeTabActivity;
    if-eqz v5, :cond_0

    .line 175
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 332
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 336
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 188
    :sswitch_1
    # getter for: Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$000(Lcom/market2345/home/HomeTabActivity;)[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    # getter for: Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$000(Lcom/market2345/home/HomeTabActivity;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 189
    # getter for: Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$000(Lcom/market2345/home/HomeTabActivity;)[Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    # getter for: Lcom/market2345/home/HomeTabActivity;->hotWordsArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$000(Lcom/market2345/home/HomeTabActivity;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Random;->nextInt(I)I

    move-result v20

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    # setter for: Lcom/market2345/home/HomeTabActivity;->currenthotWord:Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/market2345/home/HomeTabActivity;->access$102(Lcom/market2345/home/HomeTabActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    # getter for: Lcom/market2345/home/HomeTabActivity;->edittext:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$200(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/EditText;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u5927\u5bb6\u90fd\u5728\u641c:\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    # getter for: Lcom/market2345/home/HomeTabActivity;->currenthotWord:Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$100(Lcom/market2345/home/HomeTabActivity;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 191
    # getter for: Lcom/market2345/home/HomeTabActivity;->sloganView:Landroid/view/View;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$300(Lcom/market2345/home/HomeTabActivity;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 192
    # getter for: Lcom/market2345/home/HomeTabActivity;->sloganView:Landroid/view/View;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$300(Lcom/market2345/home/HomeTabActivity;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_1
    # getter for: Lcom/market2345/home/HomeTabActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$400(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->getCurrentFragment()Lcom/market2345/ui/BaseFragment;

    goto :goto_0

    .line 198
    :sswitch_2
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v5, v0, v1}, Lcom/market2345/util/SPUtil;->isCheckedUpdateToday(Landroid/content/Context;J)Z

    move-result v19

    if-nez v19, :cond_2

    .line 201
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/market2345/update/UpdateUtils;->update(ZZ)V

    .line 204
    :cond_2
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v19

    invoke-static {v5, v5, v0}, Lcom/market2345/http/MarketAPI;->checkUpgrade(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 209
    :sswitch_3
    const/16 v19, 0x0

    move/from16 v0, v19

    # invokes: Lcom/market2345/home/HomeTabActivity;->changeSearchHint(Z)V
    invoke-static {v5, v0}, Lcom/market2345/home/HomeTabActivity;->access$500(Lcom/market2345/home/HomeTabActivity;Z)V

    goto/16 :goto_0

    .line 212
    :sswitch_4
    # getter for: Lcom/market2345/home/HomeTabActivity;->isDestroy:Z
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$600(Lcom/market2345/home/HomeTabActivity;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 213
    # invokes: Lcom/market2345/home/HomeTabActivity;->delayedInit()V
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$700(Lcom/market2345/home/HomeTabActivity;)V

    goto/16 :goto_0

    .line 216
    :sswitch_5
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/market2345/common/util/Utils;->checkInstallShorCut(Landroid/content/Context;)V

    .line 218
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/market2345/common/util/Utils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "sc-nokjfs-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 219
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 220
    .local v13, "preferences":Landroid/content/SharedPreferences;
    const-string v19, "check_search_shortcut"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 221
    .local v7, "b":Z
    if-nez v7, :cond_0

    .line 222
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "check_search_shortcut"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0b0140

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/market2345/home/HomeTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.market2345"

    invoke-static/range {v19 .. v21}, Lcom/market2345/common/util/Utils;->hasShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 225
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 228
    :cond_3
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0b013f

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.market2345"

    invoke-static/range {v19 .. v21}, Lcom/market2345/common/util/Utils;->hasShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 229
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    sget-object v20, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    goto/16 :goto_0

    .line 234
    .end local v7    # "b":Z
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/market2345/common/util/Utils;->checkInstallCleanShorCut(Landroid/content/Context;)V

    .line 236
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/market2345/common/util/Utils;->checkSearchShorCut(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 240
    :sswitch_6
    # getter for: Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$800(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/PopupWindowController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/home/controller/PopupWindowController;->dismissWindow()V

    .line 241
    # getter for: Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$900(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/SlidingMenuController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/home/controller/SlidingMenuController;->openMenu()V

    goto/16 :goto_0

    .line 244
    :sswitch_7
    # invokes: Lcom/market2345/home/HomeTabActivity;->showSlidingGuide()V
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$1000(Lcom/market2345/home/HomeTabActivity;)V

    .line 245
    # getter for: Lcom/market2345/home/HomeTabActivity;->menuController:Lcom/market2345/home/controller/SlidingMenuController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$900(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/SlidingMenuController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/home/controller/SlidingMenuController;->closeMenu()V

    goto/16 :goto_0

    .line 248
    :sswitch_8
    # getter for: Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$800(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/PopupWindowController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/home/controller/PopupWindowController;->dismissWindow()V

    .line 249
    # invokes: Lcom/market2345/home/HomeTabActivity;->showSlidingGuide()V
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$1000(Lcom/market2345/home/HomeTabActivity;)V

    goto/16 :goto_0

    .line 252
    :sswitch_9
    # getter for: Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$800(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/PopupWindowController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/home/controller/PopupWindowController;->dismissWindow()V

    .line 253
    # invokes: Lcom/market2345/home/HomeTabActivity;->showSlidingGuide()V
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$1000(Lcom/market2345/home/HomeTabActivity;)V

    goto/16 :goto_0

    .line 256
    :sswitch_a
    # getter for: Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$800(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/PopupWindowController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/home/controller/PopupWindowController;->dismissWindow()V

    .line 258
    new-instance v19, Landroid/content/Intent;

    const-class v20, Lcom/market2345/lm/activity/FastinstallActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/market2345/home/HomeTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    :sswitch_b
    # getter for: Lcom/market2345/home/HomeTabActivity;->popupWindowController:Lcom/market2345/home/controller/PopupWindowController;
    invoke-static {v5}, Lcom/market2345/home/HomeTabActivity;->access$800(Lcom/market2345/home/HomeTabActivity;)Lcom/market2345/home/controller/PopupWindowController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/home/controller/PopupWindowController;->dismissWindow()V

    goto/16 :goto_0

    .line 268
    :sswitch_c
    new-instance v19, Lcom/market2345/clearStrategy/ClearManager;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/market2345/clearStrategy/ClearManager;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    invoke-virtual/range {v19 .. v20}, Lcom/market2345/clearStrategy/ClearManager;->updateDbFile(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 271
    :sswitch_d
    const-string v11, ""

    .line 272
    .local v11, "md5":Ljava/lang/String;
    const-string v14, ""

    .line 273
    .local v14, "sign":Ljava/lang/String;
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v19

    const-string v20, "com.market2345"

    invoke-virtual/range {v19 .. v20}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledAppMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 274
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/home/HomeTabActivity$MyHandler;->checkIndex:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 276
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "can not search package com.market2345|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 277
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/home/HomeTabActivity$MyHandler;->checkIndex:I

    .line 283
    :cond_5
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 285
    new-instance v17, Lcom/market2345/util/SignatureUtils;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/market2345/util/SignatureUtils;-><init>(Landroid/content/Context;)V

    .line 287
    .local v17, "utils":Lcom/market2345/util/SignatureUtils;
    :try_start_0
    const-string v19, "com.market2345"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/market2345/util/SignatureUtils;->getSignature(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v15

    .line 288
    .local v15, "signs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v19

    if-lez v19, :cond_7

    .line 289
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 290
    .local v16, "str":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 291
    goto :goto_2

    .line 279
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "signs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "utils":Lcom/market2345/util/SignatureUtils;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/home/HomeTabActivity$MyHandler;->checkIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/home/HomeTabActivity$MyHandler;->checkIndex:I

    .line 280
    iget-object v0, v5, Lcom/market2345/home/HomeTabActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x929

    const-wide/16 v22, 0xbb8

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 294
    .restart local v17    # "utils":Lcom/market2345/util/SignatureUtils;
    :catch_0
    move-exception v9

    .line 295
    .local v9, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "can not search package com.market2345|"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 298
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "utils":Lcom/market2345/util/SignatureUtils;
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 299
    const/4 v6, 0x0

    .line 301
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x80

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 306
    :goto_3
    if-nez v6, :cond_8

    const-string v12, "return null"

    .line 307
    .local v12, "meta":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    const-string v20, "wifi"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 308
    .local v18, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_9

    const-string v4, ""

    .line 310
    .local v4, "MAC":Ljava/lang/String;
    :goto_5
    new-instance v8, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v8, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v19, "http://zhushou.2345.com/index.php?c=log&d=launch"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-string v20, "pubKey"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-string v20, "apkMd5"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-string v20, "channel"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-string v20, "mac"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-string v20, "realDevice"

    const-string v21, "1"

    invoke-virtual/range {v19 .. v21}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-string v20, "vercode"

    const-string v21, "38"

    invoke-virtual/range {v19 .. v21}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-string v20, "version"

    const-string v21, "3.0.242702"

    invoke-virtual/range {v19 .. v21}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    const-class v20, Lcom/market2345/home/HomeTabActivity$HttpResult;

    invoke-virtual/range {v19 .. v20}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    new-instance v20, Lcom/market2345/home/HomeTabActivity$MyHandler$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/market2345/home/HomeTabActivity$MyHandler$1;-><init>(Lcom/market2345/home/HomeTabActivity$MyHandler;Lcom/market2345/home/HomeTabActivity;)V

    invoke-virtual/range {v19 .. v20}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    goto/16 :goto_0

    .line 303
    .end local v4    # "MAC":Ljava/lang/String;
    .end local v8    # "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    .end local v12    # "meta":Ljava/lang/String;
    .end local v18    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v9

    .line 304
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 306
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "UMENG_CHANNEL"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 308
    .restart local v12    # "meta":Ljava/lang/String;
    .restart local v18    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_c
        0xc -> :sswitch_7
        0x1e -> :sswitch_6
        0x1f -> :sswitch_8
        0x20 -> :sswitch_b
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x929 -> :sswitch_d
    .end sparse-switch
.end method
