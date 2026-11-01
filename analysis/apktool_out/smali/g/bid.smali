.class public abstract Lg/bid;
.super Lg/fyx;
.source "SourceFile"


# static fields
.field public static final EXTRA_FILE_PATH:Ljava/lang/String; = "fp"

.field public static final EXTRA_NEED_STORAGE_PERMISSION:Ljava/lang/String; = "nsp"

.field public static final EXTRA_THEME_ADAPTIVE:Ljava/lang/String; = "ta"

.field public static final REQUEST_CODE_WRITE_EXTERNAL_STORAGE:I = 0xca


# instance fields
.field private fileName:Ljava/lang/String;

.field private fileParentPath:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileUri:Landroid/net/Uri;

.field private isNeedStoragePermission:Z

.field private isThemeAdaptive:Z

.field private presenter:Lg/bdn;

.field private sourceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/fyx;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bid;->isNeedStoragePermission:Z

    return-void
.end method

.method public static bridge synthetic d(Lg/bid;)Z
    .locals 0

    iget-boolean p0, p0, Lg/bid;->isThemeAdaptive:Z

    return p0
.end method


# virtual methods
.method public copyLink()V
    .locals 4

    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const v0, 0x7f12021e

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    iget-object v1, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/bid;->filePath:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lg/bid;->sourceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    iget-object v1, p0, Lg/fyx;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lg/baf;->bo(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/bid;->sourceIntent:Landroid/content/Intent;

    const-string v1, "fp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    iget-object v2, p0, Lg/bid;->filePath:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lg/bid;->fileName:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lg/bid;->filePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lg/bid;->fileParentPath:Ljava/lang/String;

    iget-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    const-string v1, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    iget-object v1, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lg/baf;->av(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v0, p0, Lg/bid;->fileName:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    iget-object v1, p0, Lg/bid;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/gbt;->setInitTitle(Ljava/lang/String;)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    iget-object v1, p0, Lg/bid;->fileParentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/gbt;->setInitSubTitle(Ljava/lang/String;)Lg/gbt;

    invoke-virtual {p0}, Lg/fyx;->setTitleAndSubTitle()V

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Viewer filePath is empty, intent is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bid;->sourceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/erl;->y(Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lg/bid;->sourceIntent:Landroid/content/Intent;

    new-instance v0, Lg/gtb;

    iget-object v1, p0, Lg/fyx;->context:Landroid/content/Context;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, p0}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v0, p0, Lg/bid;->presenter:Lg/bdn;

    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    const v0, 0x7f12021e

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void

    :cond_6
    iget-object v0, p0, Lg/bid;->presenter:Lg/bdn;

    iget-object v1, p0, Lg/bid;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    check-cast v0, Lg/gtb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/ffb;->as()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lg/eax;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v1, v2, v5}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCopyLinkTitle()I
    .locals 1

    const v0, 0x7f120155

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c002d

    return v0
.end method

.method public initView()V
    .locals 2

    invoke-super {p0}, Lg/fyx;->initView()V

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    return-void
.end method

.method public initWebViewArgs()V
    .locals 5

    invoke-super {p0}, Lg/fyx;->initWebViewArgs()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lg/bid;->sourceIntent:Landroid/content/Intent;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/gbt;->setAutoSetTitle(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v1}, Lg/gbt;->setAutoSetSubTitle(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/gbt;->setShareAttachmentText(Ljava/lang/String;)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lg/gbt;->setShareable(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v2}, Lg/gbt;->setShortcutable(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v2}, Lg/gbt;->setCopyLinkable(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v2}, Lg/gbt;->setZoomable(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    iget-object v3, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v4, "pref_viewer_zoom"

    invoke-static {v3, v4, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lg/gbt;->setZoomChecked(Z)Lg/gbt;

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v2}, Lg/gbt;->setWrapable(Z)V

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    iget-object v3, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v4, "pref_viewer_wrap"

    invoke-static {v3, v4, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/gbt;->setWrapChecked(Z)V

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v0, v2}, Lg/gbt;->setLineNumberable(Z)V

    iget-object v0, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    iget-object v1, p0, Lg/fyx;->context:Landroid/content/Context;

    const-string v3, "pref_viewer_line_number"

    invoke-static {v1, v3, v2}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lg/gbt;->setLineNumberChecked(Z)V

    iget-object v0, p0, Lg/bid;->sourceIntent:Landroid/content/Intent;

    const-string v1, "nsp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/bid;->isNeedStoragePermission:Z

    iget-object v0, p0, Lg/bid;->sourceIntent:Landroid/content/Intent;

    const-string v1, "ta"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/bid;->isThemeAdaptive:Z

    return-void
.end method

.method public isDisplayHomeAsUpEnabled()Z
    .locals 3

    iget-object v0, p0, Lg/fyx;->isDisplayHomeAsUpEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "idhau"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnterLeaveAnim()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "idhau"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public lineNumber(Z)V
    .locals 1

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "javascript:var ols = document.getElementsByTagName(\'ol\'); if(ols.length > 0) { ols[0].style.listStyleType = \'decimal\'; ols[0].style.paddingLeft = \'\'; var lis = ols[0].getElementsByTagName(\'li\'); for(var i = 0; i < lis.length; i++) { lis[i].style.borderLeft = \'\'; lis[i].style.paddingLeft = \'\'; } } void(0);"

    goto :goto_0

    :cond_0
    const-string p1, "javascript:var ols = document.getElementsByTagName(\'ol\'); if(ols.length > 0) { ols[0].style.listStyleType = \'none\'; ols[0].style.paddingLeft = \'0\'; var lis = ols[0].getElementsByTagName(\'li\'); for(var i = 0; i < lis.length; i++) { lis[i].style.borderLeft = \'none\'; lis[i].style.paddingLeft = \'0\'; } } void(0);"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public loadData()V
    .locals 2

    invoke-static {}, Lg/dyd;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lg/bid;->isNeedStoragePermission:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xca

    invoke-static {p0, v0, v1}, Lg/fyt;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lg/bid;->e()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "fp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/ub;->getDelegate()Lg/dkn;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    check-cast v0, Lg/dre;

    iget v2, v0, Lg/dre;->bd:I

    if-eq v2, v1, :cond_1

    iput v1, v0, Lg/dre;->bd:I

    iget-boolean v1, v0, Lg/dre;->as:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3, v3}, Lg/dre;->cs(ZZ)Z

    :cond_1
    invoke-super {p0, p1}, Lg/fyx;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lg/dms;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0xca

    if-ne p1, p2, :cond_1

    array-length p1, p3

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/bid;->e()V

    return-void

    :cond_0
    iget-object p1, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public openWithOtherApp()V
    .locals 3

    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const v0, 0x7f12021e

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/fyx;->context:Landroid/content/Context;

    iget-object v1, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    iget-object v2, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lg/baf;->u(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    iget-object v2, p0, Lg/fyx;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    const v0, 0x7f12036c

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {p1}, Lg/gbt;->getInitSubTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lg/gs;->k(Landroidx/fragment/app/u;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public share()V
    .locals 4

    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const v0, 0x7f12021e

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg/bid;->presenter:Lg/bdn;

    iget-object v1, p0, Lg/bid;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    check-cast v0, Lg/gtb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lg/cni; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0, v2, v1}, Lg/gtb;->v(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lg/xy; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lg/cni; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ViewerPresenter read file for sharing"

    invoke-static {v1, v0}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lg/cni; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x7f120226

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lg/fyx;->webViewArgs:Lg/gbt;

    invoke-virtual {v2}, Lg/gbt;->getShareAttachmentText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lg/cni;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lg/cni; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const v0, 0x7f120217

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void
.end method

.method public shortcut()V
    .locals 4

    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg/bid;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x7f12021e

    invoke-virtual {p0, v0}, Lg/fyx;->showTipMessageInner(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lg/bid;->filePath:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lg/eyt;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lg/dlb;->c()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lg/fyx;->context:Landroid/content/Context;

    iget-object v2, p0, Lg/bid;->filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lg/dov;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lg/fyx;->context:Landroid/content/Context;

    const-class v3, Lg/bid;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lg/bid;->fileUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    iget-object v2, p0, Lg/bid;->fileName:Ljava/lang/String;

    const v3, 0x7f0800e5

    invoke-static {p0, v0, v2, v3, v1}, Lg/baf;->v(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method public showData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance p2, Lg/gfh;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public wrap(Z)V
    .locals 1

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "javascript:document.getElementsByTagName(\'pre\')[0].style.whiteSpace = \'pre-wrap\'; document.getElementsByTagName(\'pre\')[0].style.wordWrap = \'break-word\'; void(0);"

    goto :goto_0

    :cond_0
    const-string p1, "javascript:document.getElementsByTagName(\'pre\')[0].style.whiteSpace = \'pre\'; document.getElementsByTagName(\'pre\')[0].style.wordWrap = \'normal\'; void(0);"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public zoom(Z)V
    .locals 2

    invoke-super {p0, p1}, Lg/fyx;->zoom(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:(function(){var meta = document.querySelector(\'meta[name=\"viewport\"]\');if (!meta) {  meta = document.createElement(\'meta\');  meta.name = \'viewport\';  document.head.appendChild(meta);}if ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") {  meta.content = \'width=device-width, user-scalable=yes\';} else {  meta.content = \'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\';}})()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg/fyx;->webView:La/a/ab;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
