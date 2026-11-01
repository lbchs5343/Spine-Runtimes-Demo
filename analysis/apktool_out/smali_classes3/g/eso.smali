.class public abstract Lg/eso;
.super Lg/dms;
.source "SourceFile"

# interfaces
.implements Lg/gaf;


# static fields
.field public static final EXTRA_ALLOW_CREATE_DIR:Ljava/lang/String; = "nononsense.intent.ALLOW_CREATE_DIR"

.field public static final EXTRA_ALLOW_EXISTING_FILE:Ljava/lang/String; = "android.intent.extra.ALLOW_EXISTING_FILE"

.field public static final EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final EXTRA_MODE:Ljava/lang/String; = "nononsense.intent.MODE"

.field public static final EXTRA_PATHS:Ljava/lang/String; = "nononsense.intent.PATHS"

.field public static final EXTRA_SINGLE_CLICK:Ljava/lang/String; = "nononsense.intent.SINGLE_CLICK"

.field public static final EXTRA_START_PATH:Ljava/lang/String; = "nononsense.intent.START_PATH"

.field public static final MODE_DIR:I = 0x1

.field public static final MODE_FILE:I = 0x0

.field public static final MODE_FILE_AND_DIR:I = 0x2

.field public static final MODE_NEW_FILE:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "filepicker_fragment"


# instance fields
.field protected allowCreateDir:Z

.field private allowExistingFile:Z

.field protected allowMultiple:Z

.field private context:Landroid/content/Context;

.field protected mode:I

.field protected singleClick:Z

.field protected startPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/ub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/eso;->startPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lg/eso;->mode:I

    iput-boolean v0, p0, Lg/eso;->allowCreateDir:Z

    iput-boolean v0, p0, Lg/eso;->allowMultiple:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/eso;->allowExistingFile:Z

    iput-boolean v0, p0, Lg/eso;->singleClick:Z

    return-void
.end method

.method public static bridge synthetic d(Lg/eso;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/eso;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final e()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/v;

    move-result-object v0

    const-string v1, "filepicker_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->bc(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lg/cuz;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast v0, Lg/cuz;

    iget-object v1, v0, Lg/cuz;->n:Ljava/util/Stack;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    :goto_2
    return v2

    :cond_3
    invoke-virtual {v0, v1, v2}, Lg/cuz;->al(Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getFragment(Ljava/lang/String;IZZZZ)Lg/cuz;
.end method

.method public isDisplayHomeAsUpEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnterLeaveAnim()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCancelled()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00b0

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lg/eso;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nononsense.intent.ALLOW_CREATE_DIR"

    iget-boolean v1, p0, Lg/eso;->allowCreateDir:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/eso;->allowCreateDir:Z

    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/eso;->allowMultiple:Z

    const-string v0, "android.intent.extra.ALLOW_EXISTING_FILE"

    iget-boolean v2, p0, Lg/eso;->allowExistingFile:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/eso;->allowExistingFile:Z

    iget-boolean v0, p0, Lg/eso;->allowMultiple:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "nononsense.intent.SINGLE_CLICK"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg/eso;->singleClick:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/eso;->allowMultiple:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "onCreate \'singleClick\' can not be used with \'allowMultiple\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/eso;->startPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "nononsense.intent.START_PATH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/eso;->startPath:Ljava/lang/String;

    const-string v0, "nononsense.intent.MODE"

    iget v2, p0, Lg/eso;->mode:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/eso;->mode:I

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/b;

    move-result-object p1

    new-instance v0, Lg/bcn;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lg/bcn;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/b;->i(Lg/iz;Lg/bcn;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onFilePicked(Landroid/net/Uri;)V
    .locals 5

    if-nez p1, :cond_0

    const p1, 0x7f12021e

    invoke-static {p0, p1}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void

    :cond_0
    new-instance v0, Lg/gqc;

    invoke-direct {v0, p0}, Lg/gqc;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/die;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/buj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/die;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, ".so"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".jar"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_0
    iget-object v2, p0, Lg/eso;->context:Landroid/content/Context;

    invoke-static {v2}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    new-instance v2, Lg/aiw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lg/aiw;-><init>(Lg/eso;Landroid/net/Uri;I)V

    const p1, 0x7f030003

    invoke-virtual {v0, p1, v2}, Lg/gqc;->aw(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    goto :goto_1

    :cond_4
    new-instance v2, Lg/aiw;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lg/aiw;-><init>(Lg/eso;Landroid/net/Uri;I)V

    const p1, 0x7f030002

    invoke-virtual {v0, p1, v2}, Lg/gqc;->aw(ILandroid/content/DialogInterface$OnClickListener;)Lg/gqc;

    :goto_1
    new-instance p1, Lg/du;

    const/4 v2, 0x0

    invoke-direct {p1, v2, p0}, Lg/du;-><init>(ILjava/lang/Object;)V

    iput-object p1, v1, Lg/die;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Lg/gqc;->ak()Lg/fpl;

    return-void
.end method

.method public onFilesPicked(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "nononsense.intent.SINGLE_CLICK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "nononsense.intent.PATHS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ClipData;

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const-string v3, "Paths"

    invoke-direct {v1, v3, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/eso;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lg/ub;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
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

    const v1, 0x7f090280

    const-string v2, "filepicker_fragment"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/v;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/v;->bc(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lg/cuz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/eso;->context:Landroid/content/Context;

    check-cast p1, Lg/cuz;

    iget-object p1, p1, Lg/cuz;->o:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lg/baf;->ap(Landroid/content/Context;Ljava/lang/String;Z)Z

    return v3

    :cond_1
    const v1, 0x7f0900ea

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/v;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/v;->bc(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lg/cuz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/eso;->context:Landroid/content/Context;

    check-cast p1, Lg/cuz;

    iget-object p1, p1, Lg/cuz;->o:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {v0, v1, p1, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    :cond_2
    return v3

    :cond_3
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 10

    invoke-super {p0}, Lg/dms;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/v;

    move-result-object v0

    const-string v1, "filepicker_fragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->bc(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lg/eso;->startPath:Ljava/lang/String;

    iget v5, p0, Lg/eso;->mode:I

    iget-boolean v6, p0, Lg/eso;->allowMultiple:Z

    iget-boolean v7, p0, Lg/eso;->allowCreateDir:Z

    iget-boolean v8, p0, Lg/eso;->allowExistingFile:Z

    iget-boolean v9, p0, Lg/eso;->singleClick:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lg/eso;->getFragment(Ljava/lang/String;IZZZZ)Lg/cuz;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    new-instance v3, Landroidx/fragment/app/j;

    invoke-direct {v3, v0}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/v;)V

    const v0, 0x7f09016e

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v2, v1, v4}, Landroidx/fragment/app/j;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/fragment/app/j;->e(Z)I

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WORKAROUND_FOR_BUG_19917_KEY"

    const-string v1, "WORKAROUND_FOR_BUG_19917_VALUE"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
