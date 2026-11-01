.class public abstract Lg/fyx;
.super Lg/cms;
.source "SourceFile"

# interfaces
.implements Lg/dmn;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_IS_DISPLAY_HOME_AS_UP:Ljava/lang/String; = "idhau"

.field public static final EXTRA_IS_FINDABLE:Ljava/lang/String; = "ifa"

.field public static final EXTRA_IS_FIND_SHOWED:Ljava/lang/String; = "ifs"

.field public static final PREF_VIEWER_LINE_NUMBER:Ljava/lang/String; = "pref_viewer_line_number"

.field public static final PREF_VIEWER_WRAP:Ljava/lang/String; = "pref_viewer_wrap"

.field public static final PREF_VIEWER_ZOOM:Ljava/lang/String; = "pref_viewer_zoom"

.field public static final STORAGE_KEY_SHOW_WEB_VIEW_BANNER_AD:Ljava/lang/String; = "web_b_a_s"


# instance fields
.field private closeIV:Landroid/widget/ImageView;

.field protected context:Landroid/content/Context;

.field private findET:Landroid/widget/EditText;

.field private findLayout:Landroid/view/View;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field protected isDisplayHomeAsUpEnabled:Ljava/lang/Boolean;

.field private isNotFound:Z

.field private lastIV:Landroid/widget/ImageView;

.field private lastTitle:Ljava/lang/CharSequence;

.field private lastUrl:Ljava/lang/String;

.field private lastUrlWhenAdShow:Ljava/lang/String;

.field private matchResultTV:Landroid/widget/TextView;

.field private nextIV:Landroid/widget/ImageView;

.field protected webView:La/a/ab;

.field protected webViewArgs:Lg/gbt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/ub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fyx;->isNotFound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fyx;->lastUrlWhenAdShow:Ljava/lang/String;

    iput-object v0, p0, Lg/fyx;->isDisplayHomeAsUpEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic ae(Lg/fyx;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lg/fyx;->matchResultTV:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final af()V
    .locals 3

    iget-object v0, p0, Lg/fyx;->findET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x10

    invoke-static {v1}, Lg/dyd;->ar(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fyx;->isNotFound:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lg/fyx;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final ag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/fyx;->lastUrlWhenAdShow:Ljava/lang/String;

    invoke-static {p1, v0}, Lg/cux;->ah(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lg/fyx;->lastUrlWhenAdShow:Ljava/lang/String;

    const-string p1, "web_b_a_s"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lg/byh;->r(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {p1}, Lg/byh;->aj(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f12005c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12007c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/cms;->bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lg/cms;->bannerAdShow()Z

    :cond_1
    return-void
.end method

.method public final ah()V
    .locals 3

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fyx;->isNotFound:Z

    iget-object v0, p0, Lg/fyx;->findLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/fyx;->matchResultTV:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lg/fyx;->findET:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/fyx;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public copyLink()V
    .locals 4

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public findViewControl()V
    .locals 3

    iget-object v0, p0, Lg/fyx;->findLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/fyx;->ah()V

    return-void

    :cond_1
    iget-object v0, p0, Lg/fyx;->findLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg/fyx;->findET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lg/fyx;->findET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    iget-object v0, p0, Lg/fyx;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lg/fyx;->findET:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public getCopyLinkTitle()I
    .locals 1

    const v0, 0x7f120154

    return v0
.end method

.method public abstract getLayoutId()I
.end method

.method public getShortcutIconResId()I
    .locals 1

    const v0, 0x7f0800e5

    return v0
.end method

.method public initData()V
    .locals 3

    invoke-virtual {p0}, Lg/fyx;->preInitData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    new-instance v1, Lg/doe;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lg/doe;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/gc;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    new-instance v1, Lg/fjy;

    invoke-direct {v1, p0, v2}, Lg/fjy;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v0, v1}, Lg/gc;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->isAutoSetSubTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/fyx;->setSubTitle(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lg/fyx;->setTitleAndSubTitle()V

    invoke-virtual {p0}, Lg/fyx;->loadData()V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f0903aa

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, La/a/ab;

    iput-object v0, p0, Lg/fyx;->webView:La/a/ab;

    const v1, 0x7f0902a1

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lg/gc;->bindProgressBar(Landroid/widget/ProgressBar;)Lg/gc;

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->getUAAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/gc;->setUAAppName(Ljava/lang/String;)Lg/gc;

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isShowOverrideFailTips()Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/gc;->setShowOverrideFailTips(Z)Lg/gc;

    sget-object v0, Lg/fnp;->b:Ljava/util/HashMap;

    const-string v0, "oppo"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Lg/dyd;->bq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/fyx;->findLayout:Landroid/view/View;

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v2}, Lg/gbt;->isFindShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lg/fyx;->findET:Landroid/widget/EditText;

    new-instance v2, Lg/fjw;

    invoke-direct {v2, p0}, Lg/fjw;-><init>(Lg/fyx;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lg/fyx;->matchResultTV:Landroid/widget/TextView;

    const v0, 0x7f0901be

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lg/fyx;->lastIV:Landroid/widget/ImageView;

    const v0, 0x7f090228

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lg/fyx;->nextIV:Landroid/widget/ImageView;

    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lg/fyx;->closeIV:Landroid/widget/ImageView;

    iget-object v0, p0, Lg/fyx;->nextIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lg/fyx;->lastIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lg/fyx;->closeIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x10

    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    new-instance v2, Lg/dgu;

    invoke-direct {v2, p0}, Lg/dgu;-><init>(Lg/fyx;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    :cond_2
    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isZoomChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/fyx;->ag(Ljava/lang/String;)V

    return-void
.end method

.method public initWebViewArgs()V
    .locals 4

    new-instance v0, Lg/gbt;

    invoke-direct {v0}, Lg/gbt;-><init>()V

    iput-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v2, "ifa"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lg/gbt;->setFindAble(Z)V

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const-string v2, "ifs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lg/gbt;->setFindShowed(Z)V

    const-string v1, "idhau"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lg/fyx;->isDisplayHomeAsUpEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/ub;->getSupportActionBar()Lg/gkl;

    move-result-object v0

    invoke-virtual {p0}, Lg/dms;->isDisplayHomeAsUpEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/gkl;->ai(Z)V

    :cond_0
    return-void
.end method

.method public lineNumber(Z)V
    .locals 0

    return-void
.end method

.method public abstract loadData()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lg/fyx;->lastIV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lg/fyx;->isNotFound:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg/fyx;->af()V

    return-void

    :cond_1
    iget-object p1, p0, Lg/fyx;->webView:La/a/ab;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->findNext(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/fyx;->nextIV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lg/fyx;->isNotFound:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lg/fyx;->af()V

    return-void

    :cond_3
    iget-object p1, p0, Lg/fyx;->webView:La/a/ab;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->findNext(Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lg/fyx;->closeIV:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lg/fyx;->ah()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lg/cms;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "dark_mode"

    const-string v0, "follow_system"

    invoke-static {p0, p1, v0}, Lg/byh;->ax(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->af(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/fyx;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lg/fyx;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lg/fyx;->initWebViewArgs()V

    invoke-virtual {p0}, Lg/fyx;->initView()V

    invoke-virtual {p0}, Lg/fyx;->initData()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object p1

    new-instance v0, Lg/bcn;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lg/bcn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0902ec

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isShareable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0902fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isShortcutable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->isCopyLinkable()Z

    move-result v0

    const v1, 0x7f0900e9

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lg/fyx;->getCopyLinkTitle()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->isZoomable()Z

    move-result v0

    const v1, 0x7f0903bb

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isZoomChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->isWrapable()Z

    move-result v0

    const v1, 0x7f0903b0

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isWrapChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_2
    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->isLineNumberable()Z

    move-result v0

    const v1, 0x7f0901c8

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_3
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isLineNumberChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_3
    const v0, 0x7f090280

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isOpenWithOtherApp()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090161

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isFindAble()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lg/cms;->onDestroy()V

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Lg/gc;->unBindProgressBar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lg/dms;->clickInterval:Lg/fei;

    invoke-virtual {v0}, Lg/fei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0902ec

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lg/fyx;->share()V

    return v2

    :cond_1
    const v1, 0x7f0902b9

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lg/fyx;->loadData()V

    return v2

    :cond_2
    const v1, 0x7f0902fb

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lg/fyx;->shortcut()V

    return v2

    :cond_3
    const v1, 0x7f0900e9

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lg/fyx;->copyLink()V

    return v2

    :cond_4
    const v1, 0x7f0903bb

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/gbt;->setZoomChecked(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "pref_viewer_zoom"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lg/fyx;->zoom(Z)V

    return v2

    :cond_5
    const v1, 0x7f0903b0

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/gbt;->setWrapChecked(Z)V

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "pref_viewer_wrap"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lg/fyx;->wrap(Z)V

    return v2

    :cond_6
    const v1, 0x7f0901c8

    if-ne v0, v1, :cond_7

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/gbt;->setLineNumberChecked(Z)V

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v1, "pref_viewer_line_number"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lg/fyx;->lineNumber(Z)V

    return v2

    :cond_7
    const v1, 0x7f090280

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lg/fyx;->openWithOtherApp()V

    return v2

    :cond_8
    const v1, 0x7f090161

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lg/fyx;->findViewControl()V

    return v2

    :cond_9
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public openWithOtherApp()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    const v1, 0x7f120459

    invoke-static {v0, v1}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void
.end method

.method public preInitData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lg/fyx;->lastUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iput-object p1, p0, Lg/fyx;->lastUrl:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v1}, Lg/gbt;->isSubtitleShowFullUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "://"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p0, p1}, Lg/gs;->k(Landroidx/fragment/app/u;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fyx;->lastTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lg/fyx;->lastTitle:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleAndSubTitle()V
    .locals 1

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/fyx;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getInitSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lg/gs;->k(Landroidx/fragment/app/u;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public share()V
    .locals 4

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0}, Lg/gbt;->getShareAttachmentText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    iget-object v2, p0, Lg/fyx;->context:Landroid/content/Context;

    const v3, 0x7f12040e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public shortcut()V
    .locals 9

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/eyt;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg/dlb;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1200bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lg/fyx;->getShortcutIconResId()I

    move-result v2

    iget-object v3, p0, Lg/fyx;->context:Landroid/content/Context;

    iget-object v4, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v6}, Lg/gbt;->getShareAttachmentText()Ljava/lang/String;

    move-result-object v7

    const-class v8, La/a/a;

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lg/dov;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lg/baf;->v(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method public showTipMessage(I)V
    .locals 2

    new-instance v0, Lg/dj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/dj;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showTipMessageInner(I)V
    .locals 1

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void
.end method

.method public wrap(Z)V
    .locals 1

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :goto_0
    iget-object p1, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_1
    return-void
.end method

.method public zoom(Z)V
    .locals 0

    return-void
.end method
