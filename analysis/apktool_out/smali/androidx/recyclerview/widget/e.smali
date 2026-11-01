.class public final Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Lg/aqn;


# instance fields
.field public c:J

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/e;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lg/aqn;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/aqn;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/e;->b:Lg/aqn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static g(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/p;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/n;->o(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/p;->g:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/f;

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p2, v2

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {}, Lg/cpg;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RV Prefetch forced - needed next frame"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/f;->r(IJ)Landroidx/recyclerview/widget/p;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->aa()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/f;->u(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/f;->p(Landroidx/recyclerview/widget/p;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :goto_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1
.end method


# virtual methods
.method public final h(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempting to post unregistered view!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/e;->f:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    iput p2, p1, Landroidx/recyclerview/widget/r;->b:I

    iput p3, p1, Landroidx/recyclerview/widget/r;->c:I

    return-void
.end method

.method public final i(J)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v0, v1, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    invoke-virtual {v9, v8, v5}, Landroidx/recyclerview/widget/r;->f(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    iget v8, v8, Landroidx/recyclerview/widget/r;->a:I

    add-int/2addr v7, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v1, Landroidx/recyclerview/widget/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v4, :cond_6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_5

    :cond_2
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    iget v12, v11, Landroidx/recyclerview/widget/r;->b:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v11, Landroidx/recyclerview/widget/r;->c:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v13, v12

    const/4 v12, 0x0

    :goto_2
    iget v14, v11, Landroidx/recyclerview/widget/r;->a:I

    mul-int/lit8 v14, v14, 0x2

    if-ge v12, v14, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v8, v14, :cond_3

    new-instance v14, Lg/lj;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/lj;

    :goto_3
    iget-object v15, v11, Landroidx/recyclerview/widget/r;->d:[I

    add-int/lit8 v16, v12, 0x1

    aget v5, v15, v16

    if-gt v5, v13, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    iput-boolean v9, v14, Lg/lj;->c:Z

    iput v13, v14, Lg/lj;->d:I

    iput v5, v14, Lg/lj;->e:I

    iput-object v10, v14, Lg/lj;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v5, v15, v12

    iput v5, v14, Lg/lj;->b:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x2

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    sget-object v0, Landroidx/recyclerview/widget/e;->b:Lg/aqn;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_e

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/lj;

    iget-object v5, v4, Lg/lj;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_7

    goto/16 :goto_d

    :cond_7
    iget-boolean v7, v4, Lg/lj;->c:Z

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v7, :cond_8

    move-wide v10, v8

    goto :goto_7

    :cond_8
    move-wide v10, v2

    :goto_7
    iget v7, v4, Lg/lj;->b:I

    invoke-static {v5, v7, v10, v11}, Landroidx/recyclerview/widget/e;->g(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/p;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v7, v5, Landroidx/recyclerview/widget/p;->p:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->aa()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v5, v5, Landroidx/recyclerview/widget/p;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_a

    :cond_9
    const/4 v10, 0x1

    goto :goto_a

    :cond_a
    iget-boolean v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v7, :cond_b

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/n;->f()I

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_b
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    const/4 v10, 0x1

    invoke-virtual {v7, v5, v10}, Landroidx/recyclerview/widget/r;->f(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v10, v7, Landroidx/recyclerview/widget/r;->a:I

    if-eqz v10, :cond_9

    cmp-long v10, v2, v8

    if-nez v10, :cond_c

    :try_start_0
    const-string v8, "RV Nested Prefetch"

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_c
    const-string v8, "RV Nested Prefetch forced - needed next frame"

    :goto_8
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    const/4 v10, 0x1

    iput v10, v8, Lg/aqz;->d:I

    invoke-virtual {v9}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result v9

    iput v9, v8, Lg/aqz;->f:I

    const/4 v9, 0x0

    iput-boolean v9, v8, Lg/aqz;->n:Z

    iput-boolean v9, v8, Lg/aqz;->a:Z

    iput-boolean v9, v8, Lg/aqz;->j:Z

    const/4 v9, 0x0

    :goto_9
    iget v8, v7, Landroidx/recyclerview/widget/r;->a:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v9, v8, :cond_d

    iget-object v8, v7, Landroidx/recyclerview/widget/r;->d:[I

    aget v8, v8, v9

    invoke-static {v5, v8, v2, v3}, Landroidx/recyclerview/widget/e;->g(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v9, v9, 0x2

    goto :goto_9

    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_a
    const/4 v9, 0x0

    goto :goto_c

    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :goto_c
    iput-boolean v9, v4, Lg/lj;->c:Z

    iput v9, v4, Lg/lj;->d:I

    iput v9, v4, Lg/lj;->e:I

    const/4 v5, 0x0

    iput-object v5, v4, Lg/lj;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput v9, v4, Lg/lj;->b:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_e
    :goto_d
    return-void
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->e:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "RV Prefetch"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :goto_0
    iput-wide v1, p0, Landroidx/recyclerview/widget/e;->f:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-wide v5, v1

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    cmp-long v0, v5, v1

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/recyclerview/widget/e;->c:J

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/e;->i(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    iput-wide v1, p0, Landroidx/recyclerview/widget/e;->f:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method
