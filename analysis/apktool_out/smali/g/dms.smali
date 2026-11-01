.class public abstract Lg/dms;
.super Lg/ub;
.source "SourceFile"

# interfaces
.implements Lg/aa;
.implements Lg/cww;


# instance fields
.field protected activityImpl:Lg/wq;

.field protected clickInterval:Lg/fei;


# virtual methods
.method public addActivityResultCallback(ILg/cbi;)V
    .locals 2

    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    monitor-enter v0

    if-nez p2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, v0, Lg/wq;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addPermissionCallback(I[Ljava/lang/String;[Lg/fcd;)V
    .locals 4

    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lg/wq;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lg/wq;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    array-length v2, p2

    if-ge p1, v2, :cond_2

    aget-object v2, p2, p1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aget-object v3, p2, p1

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    aget-object v3, p3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lg/ub;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final av()V
    .locals 7

    invoke-virtual {p0}, Lg/dms;->useDarkSystemBarIcons()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lg/bli;

    invoke-direct {v3, v2}, Lg/bli;-><init>(Landroid/view/View;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    const/16 v5, 0x17

    const/16 v6, 0x1a

    if-lt v2, v4, :cond_0

    new-instance v2, Lg/egy;

    invoke-direct {v2, v1, v3}, Lg/fqu;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x1e

    if-lt v2, v4, :cond_1

    new-instance v2, Lg/fqu;

    invoke-direct {v2, v1, v3}, Lg/fqu;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_0

    :cond_1
    if-lt v2, v6, :cond_2

    new-instance v2, Lg/bla;

    invoke-direct {v2, v1, v3}, Lg/djy;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_0

    :cond_2
    if-lt v2, v5, :cond_3

    new-instance v2, Lg/boy;

    invoke-direct {v2, v1, v3}, Lg/djy;-><init>(Landroid/view/Window;Lg/bli;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lg/djy;

    invoke-direct {v2, v1, v3}, Lg/djy;-><init>(Landroid/view/Window;Lg/bli;)V

    :goto_0
    invoke-virtual {v2, v0}, Lg/ffb;->b(Z)V

    invoke-virtual {v2, v0}, Lg/ffb;->a(Z)V

    const v0, 0x7f060405

    invoke-static {p0, v0}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_4
    if-ge v1, v6, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_5
    return-void
.end method

.method public getInteger(I)I
    .locals 1

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public getToolBarClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolBarLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    iget-boolean v0, v0, Lg/wq;->f:Z

    return v0
.end method

.method public isDisplayHomeAsUpEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnterLeaveAnim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p2, p0, Lg/dms;->activityImpl:Lg/wq;

    iget-object p2, p2, Lg/wq;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/cbi;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lg/cbi;->c()V

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    iget-object v1, v0, Lg/wq;->c:Lg/dms;

    invoke-interface {v1}, Lg/aa;->isDisplayHomeAsUpEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lg/aa;->isEnterLeaveAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lg/wq;->e:Lg/dms;

    const v1, 0x7f01004e

    const v2, 0x7f01004f

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/cro;->aw(Landroid/view/Window;Z)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lg/agk;->g(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    if-eq v4, v2, :cond_1

    invoke-static {v3, v2}, Lg/agk;->p(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    invoke-static {p1}, Lg/io;->z(Landroid/view/Window;)V

    invoke-static {p1}, Lg/io;->a(Landroid/view/Window;)V

    :cond_2
    invoke-virtual {p0}, Lg/dms;->av()V

    new-instance p1, Lg/wq;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p1, Lg/wq;->a:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p1, Lg/wq;->b:Landroid/util/SparseArray;

    iput-object p0, p1, Lg/wq;->e:Lg/dms;

    iput-object p0, p1, Lg/wq;->c:Lg/dms;

    iput-object p1, p0, Lg/dms;->activityImpl:Lg/wq;

    iput-boolean v0, p1, Lg/wq;->f:Z

    invoke-interface {p0}, Lg/aa;->isDisplayHomeAsUpEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lg/aa;->isEnterLeaveAnim()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f01004c

    const v0, 0x7f01004d

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    iget-object p1, p0, Lg/dms;->activityImpl:Lg/wq;

    invoke-virtual {p0}, Lg/dms;->getToolBarClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p1, Lg/wq;->d:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lg/dms;->activityImpl:Lg/wq;

    invoke-virtual {p0}, Lg/dms;->getToolBarLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iput-object v0, p1, Lg/wq;->g:Landroid/view/View$OnLongClickListener;

    new-instance p1, Lg/fei;

    invoke-direct {p1}, Lg/fei;-><init>()V

    iput-object p1, p0, Lg/dms;->clickInterval:Lg/fei;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lg/ub;->onDestroy()V

    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/wq;->f:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    iget-object v1, v0, Lg/wq;->e:Lg/dms;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object p1, v0, Lg/wq;->c:Lg/dms;

    invoke-interface {p1}, Lg/aa;->isEnterLeaveAnim()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f01004e

    const v0, 0x7f01004f

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    iget-object v0, v0, Lg/wq;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lg/afo;->at(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p2, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    aget-object v1, p2, v2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fcd;

    aget v4, p3, v2

    if-nez v4, :cond_2

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Lg/fcd;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Lg/fcd;->onDenied(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/u;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/u;->onResume()V

    invoke-virtual {p0}, Lg/dms;->av()V

    iget-object v0, p0, Lg/dms;->activityImpl:Lg/wq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lg/ub;->setContentView(I)V

    iget-object p1, p0, Lg/dms;->activityImpl:Lg/wq;

    invoke-virtual {p1}, Lg/wq;->h()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lg/ub;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lg/dms;->activityImpl:Lg/wq;

    invoke-virtual {p1}, Lg/wq;->h()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lg/ub;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lg/dms;->activityImpl:Lg/wq;

    invoke-virtual {p1}, Lg/wq;->h()V

    return-void
.end method

.method public setSubTitleC(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lg/gs;->k(Landroidx/fragment/app/u;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public useDarkSystemBarIcons()Z
    .locals 2

    invoke-virtual {p0}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
