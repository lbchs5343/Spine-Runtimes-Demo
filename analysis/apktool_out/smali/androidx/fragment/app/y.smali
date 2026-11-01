.class public final Landroidx/fragment/app/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Landroid/view/ViewGroup;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/y;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/y;->a:Z

    iput-boolean v0, p0, Landroidx/fragment/app/y;->b:Z

    iput-object p1, p0, Landroidx/fragment/app/y;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Landroidx/fragment/app/v;)Landroidx/fragment/app/y;
    .locals 0

    invoke-virtual {p1}, Landroidx/fragment/app/v;->ch()Lg/gpu;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/fragment/app/y;->j(Landroid/view/ViewGroup;Lg/gpu;)Landroidx/fragment/app/y;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lg/tl;Ljava/util/Collection;)V
    .locals 3

    invoke-virtual {p0}, Lg/tl;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lg/bni;

    invoke-virtual {p0}, Lg/bni;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lg/evw;

    invoke-virtual {v0}, Lg/evw;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lg/evw;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lg/cd;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lg/evw;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static h(Lg/tl;Landroid/view/View;)V
    .locals 4

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg/cd;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/y;->h(Lg/tl;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static i(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lg/gdq;->a:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Landroidx/fragment/app/y;->i(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static j(Landroid/view/ViewGroup;Lg/gpu;)Landroidx/fragment/app/y;
    .locals 3

    const v0, 0x7f090315

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/fragment/app/y;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/fragment/app/y;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/y;

    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final k()V
    .locals 5

    iget-boolean v0, p0, Landroidx/fragment/app/y;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroid/view/ViewGroup;

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/y;->q()V

    iput-boolean v1, p0, Landroidx/fragment/app/y;->a:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/y;->e:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/a;->j()V

    iget-boolean v4, v3, Landroidx/fragment/app/a;->h:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/y;->l()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    invoke-virtual {v4}, Landroidx/fragment/app/a;->i()V

    goto :goto_2

    :cond_5
    iget-boolean v3, p0, Landroidx/fragment/app/y;->a:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/y;->p(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Landroidx/fragment/app/y;->a:Z

    :cond_6
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-object v2, v1, Landroidx/fragment/app/a;->f:Lg/dkk;

    sget-object v3, Lg/dkk;->ADDING:Lg/dkk;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Lg/gdn;->b(I)Lg/gdn;

    move-result-object v2

    sget-object v3, Lg/dkk;->NONE:Lg/dkk;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/a;->l(Lg/gdn;Lg/dkk;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-object v2, v1, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroidx/fragment/app/a;->e:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(Lg/gdn;Lg/dkk;Landroidx/fragment/app/x;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lg/ac;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/x;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/y;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/a;->l(Lg/gdn;Lg/dkk;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/a;-><init>(Lg/gdn;Lg/dkk;Landroidx/fragment/app/x;Lg/ac;)V

    iget-object p1, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/g;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/y;Landroidx/fragment/app/a;)V

    iget-object p2, v2, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lg/gfh;

    const/16 p2, 0x18

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, v2, p3}, Lg/gfh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p2, v2, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/y;->l()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/y;->b:Z

    iget-object v1, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    iget-object v3, v2, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Lg/gdn;->c(Landroid/view/View;)Lg/gdn;

    move-result-object v3

    iget-object v4, v2, Landroidx/fragment/app/a;->d:Lg/gdn;

    sget-object v5, Lg/gdn;->VISIBLE:Lg/gdn;

    if-ne v4, v5, :cond_0

    if-eq v3, v5, :cond_0

    iget-object v1, v2, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/y;->b:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p(Ljava/util/ArrayList;Z)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    iget-object v11, v7, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v11}, Lg/gdn;->c(Landroid/view/View;)Lg/gdn;

    move-result-object v11

    sget-object v12, Lg/foa;->a:[I

    iget-object v13, v7, Landroidx/fragment/app/a;->d:Lg/gdn;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    if-eq v12, v10, :cond_2

    if-eq v12, v9, :cond_2

    const/4 v9, 0x3

    if-eq v12, v9, :cond_2

    if-eq v12, v8, :cond_1

    goto :goto_0

    :cond_1
    sget-object v8, Lg/gdn;->VISIBLE:Lg/gdn;

    if-eq v11, v8, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_2
    sget-object v8, Lg/gdn;->VISIBLE:Lg/gdn;

    if-ne v11, v8, :cond_0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_3
    invoke-static {v9}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/a;

    iget-object v12, v12, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/a;

    iget-object v14, v14, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mAnimationInfo:Lg/hep;

    iget-object v15, v12, Landroidx/fragment/app/Fragment;->mAnimationInfo:Lg/hep;

    const/16 v16, 0x2

    iget v9, v15, Lg/hep;->n:I

    iput v9, v14, Lg/hep;->n:I

    iget v9, v15, Lg/hep;->q:I

    iput v9, v14, Lg/hep;->q:I

    iget v9, v15, Lg/hep;->e:I

    iput v9, v14, Lg/hep;->e:I

    iget v9, v15, Lg/hep;->g:I

    iput v9, v14, Lg/hep;->g:I

    const/4 v9, 0x2

    goto :goto_1

    :cond_5
    const/16 v16, 0x2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v12, 0x0

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/a;

    new-instance v13, Lg/ac;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9}, Landroidx/fragment/app/a;->i()V

    iget-object v14, v9, Landroidx/fragment/app/a;->c:Ljava/util/HashSet;

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroidx/fragment/app/i;

    invoke-direct {v15, v9, v13}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/a;Lg/ac;)V

    iput-boolean v12, v15, Landroidx/fragment/app/i;->a:Z

    iput-boolean v2, v15, Landroidx/fragment/app/i;->c:Z

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lg/ac;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9}, Landroidx/fragment/app/a;->i()V

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v14, Lg/fwj;

    if-eqz v2, :cond_6

    if-ne v9, v5, :cond_7

    :goto_3
    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    if-ne v9, v6, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    invoke-direct {v14, v9, v13, v2, v12}, Lg/fwj;-><init>(Landroidx/fragment/app/a;Lg/ac;ZZ)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroidx/fragment/app/g;

    invoke-direct {v12, v0, v11, v9}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/y;Ljava/util/ArrayList;Landroidx/fragment/app/a;)V

    iget-object v9, v9, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v13, 0x0

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fwj;

    invoke-virtual {v14}, Landroidx/fragment/app/n;->h()Z

    move-result v15

    const/16 v23, 0x1

    iget-object v10, v14, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    iget-object v10, v10, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-object v4, v14, Lg/fwj;->c:Ljava/lang/Object;

    if-eqz v15, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v14, v4}, Lg/fwj;->d(Ljava/lang/Object;)Lg/ebs;

    move-result-object v15

    iget-object v8, v14, Lg/fwj;->b:Ljava/lang/Object;

    invoke-virtual {v14, v8}, Lg/fwj;->d(Ljava/lang/Object;)Lg/ebs;

    move-result-object v14

    const-string v12, " returned Transition "

    move-object/from16 v25, v3

    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v15, :cond_b

    if-eqz v14, :cond_b

    if-ne v15, v14, :cond_a

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_6
    if-eqz v15, :cond_c

    goto :goto_7

    :cond_c
    move-object v15, v14

    :goto_7
    if-nez v13, :cond_d

    move-object v13, v15

    goto :goto_8

    :cond_d
    if-eqz v15, :cond_f

    if-ne v13, v15, :cond_e

    goto :goto_8

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_8
    move-object/from16 v3, v25

    const/4 v8, 0x4

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_10
    move-object/from16 v25, v3

    const/16 v23, 0x1

    iget-object v3, v0, Landroidx/fragment/app/y;->c:Landroid/view/ViewGroup;

    if-nez v13, :cond_12

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fwj;

    iget-object v7, v4, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroidx/fragment/app/n;->g()V

    goto :goto_9

    :cond_11
    move-object v10, v1

    move-object v12, v6

    move-object/from16 v30, v11

    goto/16 :goto_20

    :cond_12
    new-instance v4, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lg/tl;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Lg/bcp;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object/from16 v26, v7

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v27, v14

    move-object/from16 v14, v17

    check-cast v14, Lg/fwj;

    iget-object v14, v14, Lg/fwj;->b:Ljava/lang/Object;

    if-eqz v14, :cond_20

    if-eqz v5, :cond_20

    move/from16 v28, v15

    iget-object v15, v5, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_1f

    iget-object v7, v6, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v13, v14}, Lg/ebs;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lg/ebs;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v29, v0

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v30, v11

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v31, v1

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v32, v4

    move-object/from16 v33, v8

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_14

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    move-object/from16 v17, v1

    const/4 v1, -0x1

    if-eq v8, v1, :cond_13

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    goto :goto_b

    :cond_14
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v2, :cond_15

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lg/bca;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lg/bca;

    goto :goto_c

    :cond_15
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lg/bca;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lg/bca;

    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v4, :cond_16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v11, v4}, Lg/bcp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v18

    goto :goto_d

    :cond_16
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_e

    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_f

    :cond_18
    new-instance v4, Lg/tl;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lg/bcp;-><init>(I)V

    iget-object v11, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4, v11}, Landroidx/fragment/app/y;->h(Lg/tl;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Lg/tl;->e(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v12, v11}, Lg/tl;->e(Ljava/util/Collection;)Z

    new-instance v11, Lg/tl;

    invoke-direct {v11, v8}, Lg/bcp;-><init>(I)V

    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v11, v8}, Landroidx/fragment/app/y;->h(Lg/tl;Landroid/view/View;)V

    invoke-virtual {v11, v1}, Lg/tl;->e(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Lg/tl;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v11, v8}, Lg/tl;->e(Ljava/util/Collection;)Z

    sget-object v8, Lg/hbv;->a:Lg/aqe;

    iget v8, v12, Lg/bcp;->g:I

    add-int/lit8 v8, v8, -0x1

    :goto_10
    if-ltz v8, :cond_1a

    invoke-virtual {v12, v8}, Lg/bcp;->o(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v12, v8}, Lg/bcp;->r(I)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v7, v18

    goto :goto_10

    :cond_1a
    move-object/from16 v18, v7

    invoke-virtual {v12}, Lg/tl;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Landroidx/fragment/app/y;->g(Lg/tl;Ljava/util/Collection;)V

    invoke-virtual {v12}, Lg/tl;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v11, v7}, Landroidx/fragment/app/y;->g(Lg/tl;Ljava/util/Collection;)V

    invoke-virtual {v12}, Lg/bcp;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move-object v4, v10

    move/from16 v15, v28

    move-object/from16 v0, v29

    move-object/from16 v10, v31

    move-object/from16 v1, v32

    move-object/from16 v8, v33

    const/4 v7, 0x0

    goto/16 :goto_16

    :cond_1b
    if-eqz v2, :cond_1c

    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lg/bca;

    goto :goto_11

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lg/bca;

    :goto_11
    new-instance v7, Lg/cef;

    invoke-direct {v7, v6, v5, v2, v11}, Lg/cef;-><init>(Landroidx/fragment/app/a;Landroidx/fragment/app/a;ZLg/tl;)V

    invoke-static {v3, v7}, Lg/azx;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lg/tl;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1d

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v13, v0, v14}, Lg/ebs;->j(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_12

    :cond_1d
    move-object/from16 v0, v29

    :goto_12
    invoke-virtual {v11}, Lg/tl;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1e

    new-instance v4, Lg/gfh;

    move-object/from16 v8, v33

    invoke-direct {v4, v13, v1, v8}, Lg/gfh;-><init>(Lg/ebs;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v3, v4}, Lg/azx;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v15, 0x1

    :goto_13
    move-object/from16 v1, v32

    goto :goto_14

    :cond_1e
    move-object/from16 v8, v33

    move/from16 v15, v28

    goto :goto_13

    :goto_14
    invoke-virtual {v13, v14, v1, v9}, Lg/ebs;->i(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v14

    move-object/from16 v22, v10

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v22}, Lg/ebs;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v4, v22

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v10, v31

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v18

    goto :goto_16

    :cond_1f
    move-object/from16 v29, v10

    move-object v10, v1

    move-object v1, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v0

    move-object/from16 v30, v11

    goto :goto_15

    :cond_20
    move-object/from16 v28, v10

    move-object v10, v1

    move-object v1, v4

    move-object/from16 v4, v28

    move-object/from16 v29, v0

    move-object/from16 v30, v11

    move/from16 v28, v15

    :goto_15
    move/from16 v15, v28

    move-object/from16 v0, v29

    :goto_16
    move-object v11, v4

    move-object v4, v1

    move-object v1, v10

    move-object v10, v11

    move-object/from16 v14, v27

    move-object/from16 v11, v30

    goto/16 :goto_a

    :cond_21
    move-object/from16 v28, v10

    move-object v10, v1

    move-object v1, v4

    move-object/from16 v4, v28

    move-object/from16 v29, v0

    move-object/from16 v30, v11

    move/from16 v28, v15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lg/fwj;

    invoke-virtual {v15}, Landroidx/fragment/app/n;->h()Z

    move-result v17

    move-object/from16 p2, v2

    iget-object v2, v15, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    if-eqz v17, :cond_22

    move-object/from16 v27, v12

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/n;->g()V

    move-object/from16 v2, p2

    move-object/from16 v12, v27

    goto :goto_17

    :cond_22
    move-object/from16 v27, v12

    iget-object v12, v15, Lg/fwj;->c:Ljava/lang/Object;

    invoke-virtual {v13, v12}, Lg/ebs;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v7, :cond_24

    if-eq v2, v5, :cond_23

    if-ne v2, v6, :cond_24

    :cond_23
    const/16 v17, 0x1

    goto :goto_18

    :cond_24
    const/16 v17, 0x0

    :goto_18
    if-nez v12, :cond_26

    if-nez v17, :cond_25

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/fragment/app/n;->g()V

    :cond_25
    move-object/from16 v17, v1

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v1, v29

    goto/16 :goto_1c

    :cond_26
    move-object/from16 v31, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v7

    iget-object v7, v2, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    move-object/from16 v33, v14

    iget-object v14, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v14, v6}, Landroidx/fragment/app/y;->i(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v17, :cond_28

    if-ne v2, v5, :cond_27

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_27
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_28
    :goto_19
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_29

    invoke-virtual {v13, v1, v12}, Lg/ebs;->g(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v17, v12

    move-object v12, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v1

    goto :goto_1a

    :cond_29
    invoke-virtual {v13, v12, v6}, Lg/ebs;->l(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v12

    move-object/from16 v20, v6

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v22}, Lg/ebs;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v6, v18

    move-object/from16 v12, v20

    iget-object v14, v2, Landroidx/fragment/app/a;->d:Lg/gdn;

    move-object/from16 v17, v1

    sget-object v1, Lg/gdn;->GONE:Lg/gdn;

    if-ne v14, v1, :cond_2a

    move-object/from16 v1, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v13, v6, v1, v14}, Lg/ebs;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v1, Lg/byd;

    const/4 v7, 0x5

    invoke-direct {v1, v7, v12}, Lg/byd;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v1}, Lg/azx;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2a
    :goto_1a
    iget-object v1, v2, Landroidx/fragment/app/a;->d:Lg/gdn;

    sget-object v7, Lg/gdn;->VISIBLE:Lg/gdn;

    if-ne v1, v7, :cond_2c

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v28, :cond_2b

    invoke-virtual {v13, v6, v8}, Lg/ebs;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2b
    move-object/from16 v1, v29

    goto :goto_1b

    :cond_2c
    move-object/from16 v1, v29

    invoke-virtual {v13, v1, v6}, Lg/ebs;->j(Landroid/view/View;Ljava/lang/Object;)V

    :goto_1b
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v15, Lg/fwj;->a:Z

    if-eqz v2, :cond_2d

    invoke-virtual {v13, v11, v6}, Lg/ebs;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    move-object/from16 v14, v33

    goto :goto_1c

    :cond_2d
    move-object/from16 v14, v33

    invoke-virtual {v13, v14, v6}, Lg/ebs;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    :goto_1c
    move-object/from16 v2, p2

    move-object/from16 v29, v1

    move-object/from16 v1, v17

    move-object/from16 v12, v27

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    goto/16 :goto_17

    :cond_2e
    move-object/from16 v31, v6

    move-object/from16 v27, v12

    invoke-virtual {v13, v11, v14, v7}, Lg/ebs;->k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2f

    move-object/from16 v12, v31

    goto :goto_20

    :cond_2f
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/fwj;

    invoke-virtual {v6}, Landroidx/fragment/app/n;->h()Z

    move-result v8

    iget-object v11, v6, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    if-eqz v8, :cond_30

    goto :goto_1d

    :cond_30
    iget-object v8, v6, Lg/fwj;->c:Ljava/lang/Object;

    move-object/from16 v12, v31

    if-eqz v7, :cond_32

    if-eq v11, v5, :cond_31

    if-ne v11, v12, :cond_32

    :cond_31
    const/4 v14, 0x1

    goto :goto_1e

    :cond_32
    const/4 v14, 0x0

    :goto_1e
    if-nez v8, :cond_33

    if-eqz v14, :cond_36

    :cond_33
    sget-object v8, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v8

    if-nez v8, :cond_35

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v11}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_34
    invoke-virtual {v6}, Landroidx/fragment/app/n;->g()V

    goto :goto_1f

    :cond_35
    iget-object v8, v6, Landroidx/fragment/app/n;->f:Lg/ac;

    new-instance v14, Lg/gfh;

    const/16 v15, 0xe

    invoke-direct {v14, v6, v15, v11}, Lg/gfh;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v13, v1, v8, v14}, Lg/ebs;->c(Ljava/lang/Object;Lg/ac;Lg/gfh;)V

    :cond_36
    :goto_1f
    move-object/from16 v31, v12

    goto :goto_1d

    :cond_37
    move-object/from16 v12, v31

    sget-object v2, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_38

    :goto_20
    move-object/from16 v24, v5

    const/4 v8, 0x0

    goto/16 :goto_27

    :cond_38
    const/4 v2, 0x4

    invoke-static {v2, v0}, Lg/hbv;->c(ILjava/util/ArrayList;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v14, 0x0

    :goto_21
    if-ge v14, v6, :cond_39

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget-object v11, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v8}, Lg/cd;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lg/cd;->d(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    :cond_39
    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v8}, Lg/cd;->g(Landroid/view/View;)Ljava/lang/String;

    goto :goto_22

    :cond_3a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v8}, Lg/cd;->g(Landroid/view/View;)Ljava/lang/String;

    goto :goto_23

    :cond_3b
    invoke-virtual {v13, v3, v1}, Lg/ebs;->p(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_24
    if-ge v14, v1, :cond_3f

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget-object v11, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-static {v8}, Lg/cd;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_3c

    move/from16 v18, v1

    move-object/from16 v24, v5

    move-object/from16 v8, v27

    goto :goto_26

    :cond_3c
    const/4 v15, 0x0

    invoke-static {v8, v15}, Lg/cd;->d(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v8, v27

    invoke-virtual {v8, v11}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    move-object/from16 v24, v5

    const/4 v5, 0x0

    :goto_25
    move/from16 v18, v1

    if-ge v5, v1, :cond_3e

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v11}, Lg/cd;->d(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_26

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v18

    goto :goto_25

    :cond_3e
    :goto_26
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v27, v8

    move/from16 v1, v18

    move-object/from16 v5, v24

    goto :goto_24

    :cond_3f
    move/from16 v18, v1

    move-object/from16 v24, v5

    new-instance v17, Lg/anv;

    move-object/from16 v20, v2

    move-object/from16 v19, v4

    move-object/from16 v22, v6

    move-object/from16 v21, v9

    invoke-direct/range {v17 .. v22}, Lg/anv;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v2, v17

    move-object/from16 v1, v21

    invoke-static {v3, v2}, Lg/azx;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    invoke-static {v8, v0}, Lg/hbv;->c(ILjava/util/ArrayList;)V

    invoke-virtual {v13, v7, v1, v4}, Lg/ebs;->n(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v14, 0x0

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/i;

    invoke-virtual {v5}, Landroidx/fragment/app/n;->h()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-virtual {v5}, Landroidx/fragment/app/n;->g()V

    goto :goto_28

    :cond_40
    invoke-virtual {v5, v1}, Landroidx/fragment/app/i;->d(Landroid/content/Context;)Lg/gtb;

    move-result-object v6

    if-nez v6, :cond_41

    invoke-virtual {v5}, Landroidx/fragment/app/n;->g()V

    goto :goto_28

    :cond_41
    iget-object v6, v6, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v6, Landroid/animation/Animator;

    if-nez v6, :cond_42

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_42
    iget-object v7, v5, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    iget-object v9, v7, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-static {v9}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_43
    invoke-virtual {v5}, Landroidx/fragment/app/n;->g()V

    goto :goto_28

    :cond_44
    iget-object v11, v7, Landroidx/fragment/app/a;->d:Lg/gdn;

    sget-object v13, Lg/gdn;->GONE:Lg/gdn;

    if-ne v11, v13, :cond_45

    const/16 v20, 0x1

    goto :goto_29

    :cond_45
    const/16 v20, 0x0

    :goto_29
    move-object/from16 v11, v30

    if-eqz v20, :cond_46

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_46
    iget-object v9, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v17, Lg/bpz;

    move-object/from16 v18, v3

    move-object/from16 v22, v5

    move-object/from16 v21, v7

    move-object/from16 v19, v9

    invoke-direct/range {v17 .. v22}, Lg/bpz;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/a;Landroidx/fragment/app/i;)V

    move-object/from16 v9, v17

    move-object/from16 v13, v18

    move-object/from16 v7, v19

    move-object/from16 v3, v21

    invoke-virtual {v6, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-virtual {v3}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    :cond_47
    iget-object v5, v5, Landroidx/fragment/app/n;->f:Lg/ac;

    new-instance v7, Lg/fdy;

    const/16 v9, 0x8

    invoke-direct {v7, v6, v9, v3}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v5, v7}, Lg/ac;->d(Lg/dad;)V

    move-object/from16 v30, v11

    move-object v3, v13

    const/4 v14, 0x1

    goto/16 :goto_28

    :cond_48
    move-object v13, v3

    move-object/from16 v11, v30

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/i;

    iget-object v4, v3, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    iget-object v5, v4, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4a

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_49
    invoke-virtual {v3}, Landroidx/fragment/app/n;->g()V

    goto :goto_2a

    :cond_4a
    if-eqz v14, :cond_4c

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4b
    invoke-virtual {v3}, Landroidx/fragment/app/n;->g()V

    goto :goto_2a

    :cond_4c
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroidx/fragment/app/i;->d(Landroid/content/Context;)Lg/gtb;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v6, Landroid/view/animation/Animation;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Landroidx/fragment/app/a;->d:Lg/gdn;

    sget-object v8, Lg/gdn;->REMOVED:Lg/gdn;

    if-eq v7, v8, :cond_4d

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3}, Landroidx/fragment/app/n;->g()V

    goto :goto_2b

    :cond_4d
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v7, Lg/bmx;

    invoke-direct {v7, v6, v13, v5}, Lg/bmx;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v6, Lg/bfp;

    invoke-direct {v6, v4, v13, v5, v3}, Lg/bfp;-><init>(Landroidx/fragment/app/a;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/i;)V

    invoke-virtual {v7, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {v4}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    :cond_4e
    :goto_2b
    iget-object v6, v3, Landroidx/fragment/app/n;->f:Lg/ac;

    new-instance v17, Lg/dpa;

    const/16 v22, 0x2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v13

    invoke-direct/range {v17 .. v22}, Lg/dpa;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v3, v17

    invoke-virtual {v6, v3}, Lg/ac;->d(Lg/dad;)V

    goto :goto_2a

    :cond_4f
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-object v2, v1, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v1, Landroidx/fragment/app/a;->d:Lg/gdn;

    invoke-virtual {v1, v2}, Lg/gdn;->d(Landroid/view/View;)V

    goto :goto_2c

    :cond_50
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static/range {v24 .. v24}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v12}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_51
    return-void
.end method

.method public final q()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/y;->c:Landroid/view/ViewGroup;

    sget-object v1, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/y;->l()V

    iget-object v2, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    invoke-virtual {v3}, Landroidx/fragment/app/a;->i()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/y;->e:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    invoke-static {v4}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/fragment/app/y;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not attached to window. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/a;->j()V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/y;->d:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    invoke-static {v4}, Landroidx/fragment/app/v;->ao(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/y;->c:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/a;->j()V

    goto :goto_3

    :cond_6
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
