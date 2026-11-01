.class public abstract Lg/ctx;
.super Lg/dms;
.source "SourceFile"


# instance fields
.field private alliancesImpl:Lg/fzk;


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    new-instance p1, Lg/fzk;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lg/fzk;->h:Lg/ctx;

    iput-object p0, p1, Lg/fzk;->l:Lg/ctx;

    iput-object p1, p0, Lg/ctx;->alliancesImpl:Lg/fzk;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/fzk;->b:Z

    const v1, 0x7fffffff

    iput v1, p1, Lg/fzk;->c:I

    invoke-static {p0}, Lg/aky;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Lg/fzk;->d:Ljava/util/ArrayList;

    const v1, 0x7f0902a5

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p1, Lg/fzk;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v1, p1, Lg/fzk;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lg/acw;->bo(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :cond_0
    iget-object v3, p1, Lg/fzk;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lg/fzk;->g:Landroid/view/View;

    const v1, 0x7f0900a0

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p1, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v0, p1, Lg/fzk;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/b;)V

    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lg/fzk;->i:Landroid/view/View;

    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lg/fzk;->o:Landroid/widget/TextView;

    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lg/fzk;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lg/fzk;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Lg/ld;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p1}, Lg/ld;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lg/ctx;->alliancesImpl:Lg/fzk;

    new-instance v0, Lg/fzn;

    iget-object v1, p1, Lg/fzk;->l:Lg/ctx;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lg/fzn;-><init>(IZ)V

    iput-object v1, v0, Lg/fzn;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v0, Lg/fzn;->d:Ljava/lang/Object;

    iput-object p1, v0, Lg/fzn;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lg/fzn;->f:Ljava/lang/Object;

    iput-object v0, p1, Lg/fzk;->n:Lg/fzn;

    invoke-static {v1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->m()Lg/fxe$e;

    move-result-object v0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lg/fxe$e;->isShowBrothers:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lg/fzk;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lg/fzk;->n:Lg/fzn;

    iget-object v4, v0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v4, Lg/ctx;

    invoke-static {v4}, Lg/dtw;->c(Landroid/content/Context;)Lg/daw;

    move-result-object v5

    const-class v6, Lg/azp;

    invoke-virtual {v5, v6}, Lg/daw;->r(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/azp;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lg/eyt;->bj(Landroid/content/Context;)I

    move-result v7

    invoke-static {v4}, Lg/cux;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v7, v4}, Lg/azp;->a(Ljava/lang/String;ILjava/lang/String;)Lg/czh;

    move-result-object v4

    new-instance v5, Lg/evf;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0}, Lg/evf;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v5}, Lg/czh;->d(Lg/bmm;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lg/fzk;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lg/fzk;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lg/fzk;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p1, Lg/fzk;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lg/dbv;

    iget-object v2, p1, Lg/fzk;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lg/dbv;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p1, Lg/fzk;->j:Lg/dbv;

    new-instance v1, Lg/ffi;

    iget-object v2, p1, Lg/fzk;->h:Lg/ctx;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lg/ffi;-><init>(I)V

    iput-object v2, v1, Lg/ffi;->d:Landroid/content/Context;

    const-class v2, Lg/dgk;

    invoke-virtual {v0, v2, v1}, Lg/dbv;->g(Ljava/lang/Class;Lg/ekf;)V

    iget-object v0, p1, Lg/fzk;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lg/fzk;->j:Lg/dbv;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m;)V

    return-void
.end method

.method public onStart()V
    .locals 8

    invoke-super {p0}, Lg/ub;->onStart()V

    iget-object v0, p0, Lg/ctx;->alliancesImpl:Lg/fzk;

    iget-object v1, v0, Lg/fzk;->n:Lg/fzn;

    iget-object v2, v1, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v2, Lg/ctx;

    invoke-static {v2}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v3

    invoke-virtual {v3}, Lg/atf;->o()Z

    move-result v3

    invoke-virtual {v2}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    invoke-virtual {v2}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    :cond_0
    invoke-static {v2, v3}, Lg/byh;->aw(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lg/sr;

    new-instance v4, Lg/fc;

    invoke-direct {v4, v6, v1}, Lg/fc;-><init>(ILjava/lang/Object;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5}, Lg/sr;-><init>(Ljava/lang/Object;IZ)V

    iput-object v3, v1, Lg/fzn;->i:Ljava/lang/Object;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v4, Lg/fgj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_2

    invoke-static {v2, v3, v1, v7}, Lg/cch;->r(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    iget-object v1, v0, Lg/fzk;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lg/fzk;->j:Lg/dbv;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lg/fzk;->l:Lg/ctx;

    invoke-static {v1}, Lg/aky;->m(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lg/fzk;->j:Lg/dbv;

    invoke-virtual {v2, v1}, Lg/dbv;->h(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lg/fzk;->j:Lg/dbv;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 5

    iget-object v0, p0, Lg/ctx;->alliancesImpl:Lg/fzk;

    iget-object v0, v0, Lg/fzk;->n:Lg/fzn;

    iget-object v1, v0, Lg/fzn;->i:Ljava/lang/Object;

    check-cast v1, Lg/sr;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lg/fzn;->h:Ljava/lang/Object;

    check-cast v3, Lg/ctx;

    sget v4, Lg/sr;->a:I

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, v0, Lg/fzn;->i:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v3, Lg/fnp;->b:Ljava/util/HashMap;

    const-string v3, "huawei"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v2, v0, Lg/fzn;->i:Ljava/lang/Object;

    throw v1

    :cond_1
    :goto_1
    invoke-super {p0}, Lg/ub;->onStop()V

    return-void
.end method
