.class public Lg/ero;
.super Lg/cuz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/cuz<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public am:Z

.field public final an:Landroid/os/Handler;

.field public ao:I

.field public ap:Ljava/io/File;

.field public final aq:Ljava/util/concurrent/ThreadPoolExecutor;

.field public ar:Landroid/content/SharedPreferences;

.field public as:I

.field public at:Z

.field public final au:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lg/cuz;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ero;->am:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lg/ero;->ap:Ljava/io/File;

    iput v0, p0, Lg/ero;->ao:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ero;->at:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/ero;->an:Landroid/os/Handler;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0xa

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, p0, Lg/ero;->aq:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/ero;->au:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final ab(Lg/amu;ILjava/lang/Object;)V
    .locals 2

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lg/ero;->aj(Landroidx/recyclerview/widget/p;)V

    invoke-super {p0, p1, p2, p3}, Lg/cuz;->ab(Lg/amu;ILjava/lang/Object;)V

    instance-of p2, p3, Lg/eih;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p3, Lg/eih;

    iget-boolean p2, p3, Lg/eih;->directory:Z

    if-eqz p2, :cond_2

    iget p2, p3, Lg/eih;->childCount:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lg/ero;->as:I

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lg/csb;

    invoke-direct {v1, p0, p3, p2, p1}, Lg/csb;-><init>(Lg/ero;Lg/eih;ILg/amu;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, p0, Lg/ero;->au:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/ero;->aq:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final bridge synthetic ad(Lg/amu;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lg/ero;->bb(Lg/amu;Ljava/io/File;)V

    return-void
.end method

.method public final ag(Landroidx/recyclerview/widget/p;)V
    .locals 5

    iget-object v0, p0, Lg/cuz;->i:Lg/atp;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, v0, Lg/atp;->h:I

    if-lez v3, :cond_1

    iget-boolean v3, p0, Lg/ero;->am:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget v4, v0, Lg/atp;->f:I

    if-gez v4, :cond_2

    const v0, 0x7f120355

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget v0, v0, Lg/atp;->f:I

    if-lez v0, :cond_3

    const v0, 0x7f120358

    goto :goto_2

    :cond_3
    const v0, 0x7f120356

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    const v0, 0x7f090232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final ai(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lg/ero;->ap:Ljava/io/File;

    invoke-static {}, Lg/dyd;->aa()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/ero;->ap:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Lg/ero;->al(Ljava/lang/Object;Z)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public final aj(Landroidx/recyclerview/widget/p;)V
    .locals 2

    iget-object v0, p0, Lg/ero;->au:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    iget-object v1, p0, Lg/ero;->aq:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lg/cuz;->t:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic al(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lg/ero;->bc(Ljava/io/File;Z)V

    return-void
.end method

.method public final av(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    check-cast p1, Ljava/io/File;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/baf;->bf(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final aw()V
    .locals 3

    iget-object v0, p0, Lg/ero;->ar:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hidden"

    iget-boolean v2, p0, Lg/ero;->am:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "grid"

    iget-boolean v2, p0, Lg/cuz;->u:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sort"

    iget v2, p0, Lg/ero;->ao:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ascending"

    iget-boolean v2, p0, Lg/ero;->at:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final ax()V
    .locals 4

    iget v0, p0, Lg/ero;->as:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lg/ero;->as:I

    iget-object v0, p0, Lg/ero;->au:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lg/ero;->aq:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    iget-object v0, p0, Lg/ero;->an:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final ay(Lg/eih;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lg/eih;->childCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-boolean v1, p1, Lg/eih;->directory:Z

    if-eqz v1, :cond_2

    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f120354

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f120355

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-wide v0, p1, Lg/eih;->sizeBytes:J

    invoke-static {v0, v1}, Lg/buj;->v(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final az(Lg/eih;Z)Ljava/lang/String;
    .locals 5

    if-eqz p2, :cond_0

    iget-object v0, p1, Lg/eih;->formattedGridDate:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lg/eih;->formattedDate:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-wide v0, p1, Lg/eih;->modifiedTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lg/eih;->modifiedTime:J

    if-eqz p2, :cond_2

    const/high16 v3, 0x20000

    goto :goto_1

    :cond_2
    const/high16 v3, 0x10000

    :goto_1
    or-int/lit8 v3, v3, 0x15

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v0, 0x7f120550

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p2, :cond_4

    iput-object v0, p1, Lg/eih;->formattedGridDate:Ljava/lang/String;

    return-object v0

    :cond_4
    iput-object v0, p1, Lg/eih;->formattedDate:Ljava/lang/String;

    return-object v0
.end method

.method public final ba()V
    .locals 2

    invoke-virtual {p0}, Lg/ero;->ax()V

    iget-boolean v0, p0, Lg/cuz;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    div-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    new-instance v0, Lg/eri;

    invoke-direct {v0, p0, v1}, Lg/eri;-><init>(Lg/ero;Landroidx/recyclerview/widget/GridLayoutManager;)V

    iput-object v0, v1, Landroidx/recyclerview/widget/GridLayoutManager;->g:Lg/cgo;

    iput-object v1, p0, Lg/cuz;->w:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object v0, p0, Lg/cuz;->w:Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_0
    iget-object v0, p0, Lg/cuz;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lg/cuz;->w:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    iget-object v0, p0, Lg/cuz;->t:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lg/cuz;->j:Lg/bze;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    return-void
.end method

.method public final bb(Lg/amu;Ljava/io/File;)V
    .locals 3

    iget-object v0, p1, Lg/amu;->ao:Landroid/widget/TextView;

    iget-object v1, p1, Lg/amu;->ap:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    instance-of v2, p2, Lg/eih;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lg/eih;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lg/ero;->az(Lg/eih;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lg/ero;->ay(Lg/eih;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lg/cuz;->ad(Lg/amu;Ljava/lang/Object;)V

    return-void
.end method

.method public final bc(Ljava/io/File;Z)V
    .locals 2

    invoke-virtual {p0}, Lg/ero;->ax()V

    iget-object v0, p0, Lg/cuz;->j:Lg/bze;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lg/bze;->b:Lg/atp;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lg/cuz;->al(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lg/cuz;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "nnf_file_browser"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lg/ero;->ar:Landroid/content/SharedPreferences;

    const-string v0, "hidden"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/ero;->am:Z

    iget-object p1, p0, Lg/ero;->ar:Landroid/content/SharedPreferences;

    const-string v0, "grid"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/cuz;->u:Z

    iget-object p1, p0, Lg/ero;->ar:Landroid/content/SharedPreferences;

    const-string v0, "sort"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/ero;->ao:I

    iget-object p1, p0, Lg/ero;->ar:Landroid/content/SharedPreferences;

    const-string v0, "ascending"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lg/ero;->at:Z

    iget-object p1, p0, Lg/ero;->aq:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lg/cuz;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lg/ero;->ba()V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lg/ero;->aq:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lg/ero;->ax()V

    iget-object v0, p0, Lg/cuz;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090239

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p1, p0, Lg/ero;->am:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lg/ero;->am:Z

    invoke-virtual {p0}, Lg/ero;->aw()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/u;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p1, p0, Lg/cuz;->o:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, v2}, Lg/ero;->bc(Ljava/io/File;Z)V

    return v3

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090241

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/u;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg/gkr;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lg/cuz;->l:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    invoke-direct {v0, v1, p1}, Lg/gkr;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object p1, v0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast p1, Lg/ftn;

    new-instance v4, Lg/cck;

    invoke-direct {v4, v1}, Lg/cck;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0008

    invoke-virtual {v4, v1, p1}, Lg/cck;->inflate(ILandroid/view/Menu;)V

    invoke-static {p1, v3}, Lg/cpn;->a(Landroid/view/Menu;Z)V

    iget-boolean v1, p0, Lg/cuz;->u:Z

    if-eqz v1, :cond_2

    const v1, 0x7f090234

    goto :goto_1

    :cond_2
    const v1, 0x7f090236

    :goto_1
    invoke-virtual {p1, v1}, Lg/ftn;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v1, 0x7f09023b

    const v4, 0x7f09023e

    const v5, 0x7f09023c

    const v6, 0x7f09023d

    filled-new-array {v5, v6, v1, v4}, [I

    move-result-object v1

    iget v4, p0, Lg/ero;->ao:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Lg/ftn;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-boolean v1, p0, Lg/ero;->at:Z

    if-eqz v1, :cond_3

    const v1, 0x7f09022a

    goto :goto_2

    :cond_3
    const v1, 0x7f090230

    :goto_2
    invoke-virtual {p1, v1}, Lg/ftn;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    new-instance p1, Lg/aoi;

    const/16 v1, 0xa

    invoke-direct {p1, v1, p0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    iput-object p1, v0, Lg/gkr;->c:Ljava/lang/Object;

    iget-object p1, v0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast p1, Lg/byn;

    invoke-virtual {p1}, Lg/byn;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p1, Lg/byn;->d:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2, v2, v2, v2}, Lg/byn;->l(IIZZ)V

    return v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-super {p0, p1}, Lg/cuz;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f090239

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lg/ero;->am:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12035b

    goto :goto_0

    :cond_0
    const v0, 0x7f120362

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lg/ero;->am:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080180

    goto :goto_1

    :cond_1
    const v0, 0x7f08017f

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    array-length p1, p2

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/cuz;->s:Lg/gaf;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lg/gaf;->onCancelled()V

    return-void

    :cond_0
    const/4 p1, 0x0

    aget p2, p3, p1

    if-nez p2, :cond_1

    iget-object p1, p0, Lg/ero;->ap:Ljava/io/File;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lg/ero;->bc(Ljava/io/File;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f120361

    invoke-static {p2, p3, p1}, Lg/gm;->i(Landroid/content/Context;II)V

    iget-object p1, p0, Lg/cuz;->s:Lg/gaf;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lg/gaf;->onCancelled()V

    :cond_2
    return-void
.end method

.method public final y(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    check-cast p1, Ljava/io/File;

    instance-of v0, p1, Lg/eih;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lg/cuz;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Lg/eih;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg/ero;->az(Lg/eih;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lg/ero;->ay(Lg/eih;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const p1, 0x7f12035c

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-static {}, Lg/dyd;->aa()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lg/eyt;->am(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
