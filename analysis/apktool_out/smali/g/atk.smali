.class public abstract Lg/atk;
.super Lg/dms;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lg/eha;


# static fields
.field public static final synthetic d:I


# instance fields
.field public aa:Landroid/widget/ImageView;

.field public ab:Landroid/view/inputmethod/InputMethodManager;

.field public e:La/a/ab;

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Lg/eqi;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Landroid/widget/EditText;

.field public final l:Ljava/lang/String;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/TextView;

.field public o:Lg/bhc;

.field public p:Lg/coz;

.field public final q:Ljava/lang/String;

.field public r:Lg/atk;

.field public s:Lg/hbj;

.field public final t:Ljava/lang/String;

.field public u:Landroid/view/MenuItem;

.field public v:Landroid/view/View;

.field public final w:Ljava/lang/String;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/view/Menu;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lg/ub;-><init>()V

    const-string v0, "manifest_mode"

    iput-object v0, p0, Lg/atk;->t:Ljava/lang/String;

    const-string v0, "manifest_wrap"

    iput-object v0, p0, Lg/atk;->w:Ljava/lang/String;

    const-string v0, "manifest_scalable"

    iput-object v0, p0, Lg/atk;->l:Ljava/lang/String;

    const-string v0, "manifest_line_number"

    iput-object v0, p0, Lg/atk;->q:Ljava/lang/String;

    new-instance v0, Lg/eqi;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/eqi;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v0, p0, Lg/atk;->h:Lg/eqi;

    const-string v0, ""

    iput-object v0, p0, Lg/atk;->z:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/atk;->g:Z

    return-void
.end method

.method public static ac(I)Ljava/lang/String;
    .locals 3

    const v0, 0xffffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%06X"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ad(Landroid/view/Menu;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final ae(Z)V
    .locals 7

    iget-object v0, p0, Lg/atk;->r:Lg/atk;

    invoke-static {v0}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lg/atk;->r:Lg/atk;

    const v0, 0x7f1203f1

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lg/atk;->s:Lg/hbj;

    if-nez v1, :cond_1

    iget-object p1, p0, Lg/atk;->r:Lg/atk;

    const v0, 0x7f1203f2

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "manifest"

    invoke-static {v1, v2, v1, v0}, Lg/awf;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg/atk;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v1, ".txt"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, ".html"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    :try_start_1
    iget-object v2, p0, Lg/atk;->s:Lg/hbj;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lg/atk;->s:Lg/hbj;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v6, p0, Lg/atk;->o:Lg/bhc;

    invoke-virtual {v5, v2, v6}, Lg/hbj;->l(Ljava/lang/CharSequence;Lg/bhc;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lg/erl;->ap(Ljava/io/Closeable;)V

    const v2, 0x7f09030f

    invoke-virtual {p0, v2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0}, Lg/buj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lg/buj;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getFolderPath(...)"

    invoke-static {v0, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lg/atk;->r:Lg/atk;

    invoke-static {v5}, Lg/acw;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg/bff;->d(Ljava/lang/Object;)V

    const-string v6, ""

    invoke-static {v0, v5, v6}, Lg/dmc;->cb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const/4 v3, 0x1

    aput-object v0, v5, v3

    const v0, 0x7f1203f6

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lg/dkt;

    invoke-direct {v3, p0, v1, p1}, Lg/dkt;-><init>(Lg/atk;Ljava/io/File;Z)V

    const p1, 0x7f1203a1

    invoke-static {v2, v0, v4, p1, v3}, Lg/afo;->ar(Landroid/view/View;Ljava/lang/CharSequence;IILandroid/view/View$OnClickListener;)Lg/sd;

    return-void

    :catchall_1
    move-exception p1

    :goto_2
    invoke-static {v2}, Lg/erl;->ap(Ljava/io/Closeable;)V

    throw p1

    :catch_1
    :goto_3
    invoke-static {v2}, Lg/erl;->ap(Ljava/io/Closeable;)V

    iget-object p1, p0, Lg/atk;->r:Lg/atk;

    const v0, 0x7f1203f0

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void
.end method

.method public final af()V
    .locals 3

    iget-object v0, p0, Lg/atk;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lg/dcv;->bk(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x10

    invoke-static {v1}, Lg/dyd;->ar(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/atk;->e:La/a/ab;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lg/atk;->e:La/a/ab;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/atk;->g:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lg/atk;->ab:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    return-void
.end method

.method public final loadData()V
    .locals 3

    iget-object v0, p0, Lg/atk;->y:Landroid/view/Menu;

    invoke-static {v0}, Lg/atk;->ad(Landroid/view/Menu;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/atk;->i:Z

    iget-object v0, p0, Lg/atk;->e:La/a/ab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/gc;->showLoadingProgress()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lg/fvi;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lg/atk;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {p1, v1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean p1, p0, Lg/atk;->g:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lg/atk;->af()V

    return-void

    :cond_2
    iget-object p1, p0, Lg/atk;->e:La/a/ab;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->findNext(Z)V

    return-void

    :cond_3
    iget-object v1, p0, Lg/atk;->aa:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-static {p1, v1}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-boolean p1, p0, Lg/atk;->g:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lg/atk;->af()V

    return-void

    :cond_5
    iget-object p1, p0, Lg/atk;->e:La/a/ab;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->findNext(Z)V

    return-void

    :cond_6
    iget-object v1, p0, Lg/atk;->x:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_7
    invoke-static {p1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lg/atk;->e:La/a/ab;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearMatches()V

    :cond_8
    iput-boolean v2, p0, Lg/atk;->g:Z

    iget-object p1, p0, Lg/atk;->v:Landroid/view/View;

    if-eqz p1, :cond_9

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object v0, p0, Lg/atk;->ab:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_a
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "dark_mode"

    const-string v2, "follow_system"

    invoke-static {v0, v1, v2}, Lg/byh;->ax(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/ckd;->af(Ljava/lang/String;)V

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Lg/dms;->setContentView(I)V

    iput-object v0, v0, Lg/atk;->r:Lg/atk;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v1, v2}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, v0, Lg/atk;->ab:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "cn.trinea.android.developertools"

    :cond_0
    iput-object v1, v0, Lg/atk;->f:Ljava/lang/String;

    invoke-static {v1}, Lg/hca;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1202d1

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object v1

    iget-object v2, v0, Lg/atk;->r:Lg/atk;

    invoke-static {v2, v1}, Lg/cro;->ba(Lg/dms;Lg/cgg;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "APP_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg/atk;->j:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f1202d0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0903aa

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, La/a/ab;

    iput-object v1, v0, Lg/atk;->e:La/a/ab;

    if-eqz v1, :cond_3

    const v3, 0x7f0902a1

    invoke-virtual {v0, v3}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Lg/gc;->bindProgressBar(Landroid/widget/ProgressBar;)Lg/gc;

    :cond_3
    iget-object v1, v0, Lg/atk;->e:La/a/ab;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    :cond_4
    iget-object v1, v0, Lg/atk;->e:La/a/ab;

    if-eqz v1, :cond_5

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_5
    iget-object v1, v0, Lg/atk;->e:La/a/ab;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    goto :goto_0

    :cond_6
    move-object v1, v3

    :goto_0
    const-string v5, "TrineaAndroidCommon"

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v7, v0, Lg/atk;->l:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/16 v1, 0x10

    invoke-static {v1}, Lg/dyd;->bp(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lg/atk;->e:La/a/ab;

    if-eqz v1, :cond_7

    new-instance v6, Lg/cia;

    invoke-direct {v6, v0}, Lg/cia;-><init>(Lg/atk;)V

    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    :cond_7
    iget-object v1, v0, Lg/atk;->e:La/a/ab;

    const/4 v6, 0x2

    if-eqz v1, :cond_8

    invoke-virtual {v1, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_8
    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lg/atk;->v:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lg/atk;->k:Landroid/widget/EditText;

    const v1, 0x7f0901d6

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lg/atk;->n:Landroid/widget/TextView;

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lg/atk;->m:Landroid/widget/ImageView;

    const v1, 0x7f090228

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lg/atk;->aa:Landroid/widget/ImageView;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lg/atk;->x:Landroid/widget/ImageView;

    iget-object v1, v0, Lg/atk;->k:Landroid/widget/EditText;

    if-eqz v1, :cond_9

    new-instance v3, Lg/fgm;

    invoke-direct {v3, v0}, Lg/fgm;-><init>(Lg/atk;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_9
    iget-object v1, v0, Lg/atk;->aa:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v1, v0, Lg/atk;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v1, v0, Lg/atk;->x:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    invoke-virtual {v0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    :goto_1
    iget-object v8, v0, Lg/atk;->r:Lg/atk;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_e

    const v9, 0x7f070449

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_2

    :cond_e
    const/16 v8, 0xe

    :goto_2
    cmpl-float v3, v1, v3

    if-lez v3, :cond_f

    const v3, 0x4136db6e

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_3

    :cond_f
    const/16 v1, 0x28

    :goto_3
    const v3, 0x7f040134

    const/4 v9, -0x1

    invoke-static {v0, v3, v9}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v3

    const v9, 0x7f04011d

    const/high16 v10, -0x1000000

    invoke-static {v0, v9, v10}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v9

    const v10, 0x7f04011f

    const v11, -0xbbbbbc

    invoke-static {v0, v10, v11}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v10

    const v11, 0x7f040126

    invoke-static {v0, v11, v9}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v11

    const v12, 0x7f04012f

    invoke-static {v0, v12, v11}, Lg/eyt;->z(Landroid/content/Context;II)I

    move-result v12

    iget-object v13, v0, Lg/atk;->e:La/a/ab;

    if-eqz v13, :cond_10

    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_10
    new-instance v13, Lg/bhc;

    invoke-static {v3}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v10}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lg/atk;->ac(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v7

    iget-object v7, v0, Lg/atk;->w:Ljava/lang/String;

    move/from16 v17, v1

    move/from16 v18, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput-object v3, v13, Lg/bhc;->h:Ljava/lang/String;

    iput-object v14, v13, Lg/bhc;->l:Ljava/lang/String;

    iput-object v15, v13, Lg/bhc;->n:Ljava/lang/String;

    iput-object v6, v13, Lg/bhc;->e:Ljava/lang/String;

    iput-object v11, v13, Lg/bhc;->g:Ljava/lang/String;

    iput-object v2, v13, Lg/bhc;->i:Ljava/lang/String;

    iput-object v4, v13, Lg/bhc;->o:Ljava/lang/String;

    iput-object v12, v13, Lg/bhc;->a:Ljava/lang/String;

    iput-object v10, v13, Lg/bhc;->k:Ljava/lang/String;

    iput-object v9, v13, Lg/bhc;->m:Ljava/lang/String;

    move/from16 v8, v18

    iput v8, v13, Lg/bhc;->b:I

    move/from16 v1, v17

    iput v1, v13, Lg/bhc;->f:I

    iput-boolean v7, v13, Lg/bhc;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, v13, Lg/bhc;->d:Z

    iput v1, v13, Lg/bhc;->c:I

    iput-object v13, v0, Lg/atk;->o:Lg/bhc;

    move-object/from16 v2, v16

    invoke-static {v0, v2, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v2, v0, Lg/atk;->o:Lg/bhc;

    if-eqz v2, :cond_11

    iget-object v3, v0, Lg/atk;->q:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lg/bhc;->d:Z

    :cond_11
    iget-object v2, v0, Lg/atk;->t:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    iget-object v2, v0, Lg/atk;->o:Lg/bhc;

    if-eqz v2, :cond_14

    iput v1, v2, Lg/bhc;->c:I

    goto :goto_4

    :cond_12
    iget-object v1, v0, Lg/atk;->o:Lg/bhc;

    if-eqz v1, :cond_14

    iput v3, v1, Lg/bhc;->c:I

    goto :goto_4

    :cond_13
    iget-object v1, v0, Lg/atk;->o:Lg/bhc;

    if-eqz v1, :cond_14

    const/4 v3, 0x1

    iput v3, v1, Lg/bhc;->c:I

    :cond_14
    :goto_4
    invoke-virtual {v0}, Lg/atk;->loadData()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    invoke-virtual {p0}, Lg/ub;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lg/atk;->y:Landroid/view/Menu;

    if-eqz p1, :cond_0

    const v0, 0x7f0901f2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lg/atk;->u:Landroid/view/MenuItem;

    iget-object v0, p0, Lg/atk;->t:Ljava/lang/String;

    const-string v1, "TrineaAndroidCommon"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lg/atk;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    const v4, 0x7f1202d6

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    if-eqz p1, :cond_6

    const v0, 0x7f0901f3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/atk;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    const v4, 0x7f1202d7

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    if-eqz p1, :cond_6

    const v0, 0x7f0901f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lg/atk;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    const v4, 0x7f1202d8

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_5
    if-eqz p1, :cond_6

    const v0, 0x7f0901f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    const v0, 0x7f0903b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lg/atk;->w:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_7
    if-eqz p1, :cond_8

    const v0, 0x7f0902d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, p0, Lg/atk;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_8
    if-eqz p1, :cond_9

    const v0, 0x7f0901c8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v4, p0, Lg/atk;->q:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_9
    if-eqz p1, :cond_b

    const v0, 0x7f0900ac

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lg/atk;->s:Lg/hbj;

    if-eqz v1, :cond_a

    iget-boolean v1, v1, Lg/hbj;->i:Z

    if-ne v1, v3, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    iget-boolean v0, p0, Lg/atk;->i:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Lg/atk;->ad(Landroid/view/Menu;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

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

    const v1, 0x7f0902d9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lg/atk;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/atk;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lg/atk;->v:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lg/atk;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    iget-object v0, p0, Lg/atk;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_4
    iget-object v0, p0, Lg/atk;->ab:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lg/atk;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_1

    :cond_5
    const v1, 0x7f0902cd

    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lg/atk;->r:Lg/atk;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lg/aip;

    invoke-direct {v1, v2, p0}, Lg/aip;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f030004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_6
    const v1, 0x7f0900ac

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lg/atk;->r:Lg/atk;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lg/atk;->j:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const v5, 0x7f1202e0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lg/atk;->s:Lg/hbj;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lg/hbj;->g:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    const-string v6, "\n"

    const/16 v7, 0x3e

    invoke-static {v5, v6, v3, v7}, Lg/gsv;->bh(Ljava/util/Collection;Ljava/lang/String;Lg/and;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_7
    move-object v5, v3

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    const v2, 0x7f1202df

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_8
    const v1, 0x7f0901f3

    iget-object v5, p0, Lg/atk;->t:Ljava/lang/String;

    if-ne v0, v1, :cond_b

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-static {p0, v2, v5}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lg/atk;->o:Lg/bhc;

    if-eqz v0, :cond_9

    iput v2, v0, Lg/bhc;->c:I

    :cond_9
    iget-object v0, p0, Lg/atk;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    const v1, 0x7f1202d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_a
    invoke-virtual {p0}, Lg/atk;->loadData()V

    goto/16 :goto_1

    :cond_b
    const v1, 0x7f0901f4

    if-ne v0, v1, :cond_e

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-static {p0, v0, v5}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v1, p0, Lg/atk;->o:Lg/bhc;

    if-eqz v1, :cond_c

    iput v0, v1, Lg/bhc;->c:I

    :cond_c
    iget-object v0, p0, Lg/atk;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_d

    const v1, 0x7f1202d7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_d
    invoke-virtual {p0}, Lg/atk;->loadData()V

    goto/16 :goto_1

    :cond_e
    const v1, 0x7f0901f5

    if-ne v0, v1, :cond_11

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-static {p0, v4, v5}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lg/atk;->o:Lg/bhc;

    if-eqz v0, :cond_f

    iput v4, v0, Lg/bhc;->c:I

    :cond_f
    iget-object v0, p0, Lg/atk;->u:Landroid/view/MenuItem;

    if-eqz v0, :cond_10

    const v1, 0x7f1202d8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_10
    invoke-virtual {p0}, Lg/atk;->loadData()V

    goto/16 :goto_1

    :cond_11
    const v1, 0x7f0903b0

    if-ne v0, v1, :cond_13

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/atk;->w:Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lg/atk;->o:Lg/bhc;

    if-eqz v0, :cond_12

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lg/bhc;->j:Z

    :cond_12
    invoke-virtual {p0}, Lg/atk;->loadData()V

    goto/16 :goto_1

    :cond_13
    const v1, 0x7f0902d1

    if-ne v0, v1, :cond_15

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/atk;->l:Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lg/atk;->e:La/a/ab;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto/16 :goto_1

    :cond_15
    const v1, 0x7f0901c8

    if-ne v0, v1, :cond_17

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lg/atk;->q:Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lg/atk;->o:Lg/bhc;

    if-eqz v0, :cond_16

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lg/bhc;->d:Z

    :cond_16
    invoke-virtual {p0}, Lg/atk;->loadData()V

    goto/16 :goto_1

    :cond_17
    const v1, 0x7f0902ec

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lg/atk;->s:Lg/hbj;

    if-nez v0, :cond_18

    iget-object v0, p0, Lg/atk;->r:Lg/atk;

    const v1, 0x7f1203f2

    invoke-static {v0, v1}, Lg/gm;->f(Landroid/content/Context;I)V

    goto :goto_1

    :cond_18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lg/atk;->s:Lg/hbj;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    iget-object v2, p0, Lg/atk;->r:Lg/atk;

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12040e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    :cond_19
    const v1, 0x7f090324

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lg/atk;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lg/atk;->r:Lg/atk;

    iget-object v1, p0, Lg/atk;->f:Ljava/lang/String;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    :cond_1a
    const v1, 0x7f090325

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lg/atk;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lg/atk;->r:Lg/atk;

    iget-object v1, p0, Lg/atk;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/eyt;->bv(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1b
    :goto_1
    invoke-super {p0, p1}, Lg/dms;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lg/dms;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    invoke-static {p0, v2}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lg/atk;->ae(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lg/atk;->r:Lg/atk;

    invoke-static {p1}, Lg/fyt;->f(Landroid/content/Context;)V

    return-void

    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v1

    if-nez p1, :cond_3

    invoke-static {p0, v2}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lg/atk;->ae(Z)V

    return-void

    :cond_3
    iget-object p1, p0, Lg/atk;->r:Lg/atk;

    invoke-static {p1}, Lg/fyt;->f(Landroid/content/Context;)V

    return-void
.end method
