.class public final Landroidx/recyclerview/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Ljava/util/List;

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public e:I

.field public f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public h:Lg/dvv;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->b:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/f;->c:I

    iput p1, p0, Landroidx/recyclerview/widget/f;->e:I

    return-void
.end method

.method public static i(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Landroidx/recyclerview/widget/f;->i(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/f;->s(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    iget-object v1, v0, Landroidx/recyclerview/widget/r;->d:[I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/r;->a:I

    :cond_2
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/p;)V
    .locals 12

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->af()Z

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->ah()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->w()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p1, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    sget-object v0, Lg/goi;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/m;->onFailedToRecycleView(Landroidx/recyclerview/widget/p;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    iget-object v7, p0, Landroidx/recyclerview/widget/f;->g:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cached view received recycle internal? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    if-nez v5, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->aj()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    :cond_6
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_7
    :goto_4
    iget v5, p0, Landroidx/recyclerview/widget/f;->e:I

    if-lez v5, :cond_f

    iget v5, p1, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit16 v5, v5, 0x20e

    if-eqz v5, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/f;->e:I

    if-lt v5, v6, :cond_9

    if-lez v5, :cond_9

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/f;->s(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_9
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v6, :cond_e

    if-lez v5, :cond_e

    iget-object v6, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    iget v8, p1, Landroidx/recyclerview/widget/p;->g:I

    iget-object v9, v6, Landroidx/recyclerview/widget/r;->d:[I

    if-eqz v9, :cond_b

    iget v9, v6, Landroidx/recyclerview/widget/r;->a:I

    mul-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_b

    iget-object v11, v6, Landroidx/recyclerview/widget/r;->d:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v10, v10, 0x2

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, -0x1

    :goto_6
    if-ltz v5, :cond_d

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/p;

    iget v6, v6, Landroidx/recyclerview/widget/p;->g:I

    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    iget-object v9, v8, Landroidx/recyclerview/widget/r;->d:[I

    if-eqz v9, :cond_d

    iget v9, v8, Landroidx/recyclerview/widget/r;->a:I

    mul-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v9, :cond_d

    iget-object v11, v8, Landroidx/recyclerview/widget/r;->d:[I

    aget v11, v11, v10

    if-ne v11, v6, :cond_c

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v10, v10, 0x2

    goto :goto_7

    :cond_d
    add-int/2addr v5, v3

    :cond_e
    :goto_8
    invoke-virtual {v7, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_10

    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/f;->p(Landroidx/recyclerview/widget/p;Z)V

    move v2, v5

    goto :goto_b

    :cond_10
    move v2, v5

    goto :goto_3

    :goto_b
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Lg/bng;

    invoke-virtual {v4, p1}, Lg/bng;->c(Landroidx/recyclerview/widget/p;)V

    if-nez v2, :cond_11

    if-nez v3, :cond_11

    if-eqz v0, :cond_11

    invoke-static {v1}, Lg/egh;->y(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/p;->j:Landroidx/recyclerview/widget/m;

    iput-object v0, p1, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    :cond_11
    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->af()Z

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_15

    const/4 v2, 0x1

    :cond_15
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/b;->dx:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/f;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/f;->e:I

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/f;->e:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/f;->s(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/p;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/p;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/p;->q:Landroidx/recyclerview/widget/f;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/p;->e:Z

    iget v0, p1, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, Landroidx/recyclerview/widget/p;->f:I

    return-void
.end method

.method public final n(I)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/f;->r(IJ)Landroidx/recyclerview/widget/p;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    return-object p1
.end method

.method public final o(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p;

    move-result-object p1

    iget v0, p1, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    :cond_2
    iput-object p0, p1, Landroidx/recyclerview/widget/p;->q:Landroidx/recyclerview/widget/f;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/recyclerview/widget/p;->e:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/m;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iput-object p0, p1, Landroidx/recyclerview/widget/p;->q:Landroidx/recyclerview/widget/f;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/recyclerview/widget/p;->e:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Landroidx/recyclerview/widget/p;Z)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/p;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/t;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/recyclerview/widget/t;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/amk;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    :cond_1
    if-eqz p2, :cond_5

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_4

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/m;->onViewRecycled(Landroidx/recyclerview/widget/p;)V

    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    if-eqz p2, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Lg/bng;

    invoke-virtual {p2, p1}, Lg/bng;->c(Landroidx/recyclerview/widget/p;)V

    :cond_3
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p2, :cond_5

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    iput-object v3, p1, Landroidx/recyclerview/widget/p;->j:Landroidx/recyclerview/widget/m;

    iput-object v3, p1, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->v()Lg/dvv;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroidx/recyclerview/widget/p;->t:I

    invoke-virtual {p2, v0}, Lg/dvv;->d(I)Lg/atv;

    move-result-object v1

    iget-object v1, v1, Lg/atv;->b:Ljava/util/ArrayList;

    iget-object p2, p2, Lg/dvv;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/atv;

    iget p2, p2, Lg/atv;->c:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_6

    iget-object p1, p1, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-static {p1}, Lg/egh;->y(Landroid/view/View;)V

    return-void

    :cond_6
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz p2, :cond_8

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "this scrap item already exists"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p;->ae()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    iget-object v1, v1, Lg/dvv;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final r(IJ)Landroidx/recyclerview/widget/p;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v1, :cond_4d

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {v3}, Lg/aqz;->p()I

    move-result v3

    if-ge v1, v3, :cond_4d

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v3, v3, Lg/aqz;->n:Z

    const/16 v4, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_2

    iget-object v9, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/p;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->ad()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v10

    if-ne v10, v1, :cond_1

    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/p;->ab(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/m;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/h;

    invoke-virtual {v8, v1, v7}, Landroidx/recyclerview/widget/h;->m(II)I

    move-result v8

    if-lez v8, :cond_4

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/m;->getItemId(I)J

    move-result-wide v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_4

    iget-object v11, v0, Landroidx/recyclerview/widget/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/p;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/p;->ad()Z

    move-result v12

    if-nez v12, :cond_3

    iget-wide v12, v11, Landroidx/recyclerview/widget/p;->l:J

    cmp-long v14, v12, v8

    if-nez v14, :cond_3

    invoke-virtual {v11, v4}, Landroidx/recyclerview/widget/p;->ab(I)V

    move-object v9, v11

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_4
    iget-object v8, v0, Landroidx/recyclerview/widget/f;->d:Ljava/util/ArrayList;

    iget-object v10, v0, Landroidx/recyclerview/widget/f;->g:Ljava/util/ArrayList;

    if-nez v9, :cond_1f

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v9, :cond_a

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/p;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->ad()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v13

    if-ne v13, v1, :cond_9

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v13

    if-nez v13, :cond_9

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v13, v13, Lg/aqz;->n:Z

    if-nez v13, :cond_7

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v13

    if-nez v13, :cond_9

    :cond_7
    invoke-virtual {v12, v4}, Landroidx/recyclerview/widget/p;->ab(I)V

    :cond_8
    :goto_6
    move-object v9, v12

    goto/16 :goto_c

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    iget-object v9, v9, Landroidx/recyclerview/widget/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_c

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v15

    if-ne v15, v1, :cond_b

    invoke-virtual {v14}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v15

    if-nez v15, :cond_b

    invoke-virtual {v14}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    :goto_8
    if-eqz v13, :cond_12

    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p;

    move-result-object v9

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    iget-object v12, v11, Landroidx/recyclerview/widget/n;->d:Lg/fmk;

    iget-object v14, v11, Landroidx/recyclerview/widget/n;->c:Lg/fc;

    iget-object v14, v14, Lg/fc;->e:Ljava/lang/Object;

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    if-ltz v14, :cond_11

    invoke-virtual {v12, v14}, Lg/fmk;->f(I)Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-virtual {v12, v14}, Lg/fmk;->h(I)V

    invoke-virtual {v11, v13}, Landroidx/recyclerview/widget/n;->m(Landroid/view/View;)V

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    iget-object v12, v11, Landroidx/recyclerview/widget/n;->d:Lg/fmk;

    iget-object v11, v11, Landroidx/recyclerview/widget/n;->c:Lg/fc;

    iget-object v11, v11, Lg/fc;->e:Ljava/lang/Object;

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    const/4 v14, -0x1

    if-ne v11, v14, :cond_d

    :goto_9
    const/4 v11, -0x1

    goto :goto_a

    :cond_d
    invoke-virtual {v12, v11}, Lg/fmk;->f(I)Z

    move-result v15

    if-eqz v15, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v12, v11}, Lg/fmk;->k(I)I

    move-result v12

    sub-int/2addr v11, v12

    :goto_a
    if-eq v11, v14, :cond_f

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/n;->n(I)V

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/f;->o(Landroid/view/View;)V

    const/16 v11, 0x2020

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/p;->ab(I)V

    goto :goto_c

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v9, :cond_14

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/p;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->ag()I

    move-result v13

    if-ne v13, v1, :cond_13

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->y()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v9, :cond_8

    invoke-virtual {v12}, Landroidx/recyclerview/widget/p;->toString()Ljava/lang/String;

    goto/16 :goto_6

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v11

    if-eqz v11, :cond_17

    sget-boolean v11, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v11, :cond_16

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v11, v11, Lg/aqz;->n:Z

    if-eqz v11, :cond_15

    goto :goto_d

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "should not receive a removed view unless it is pre layout"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_d
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v11, v11, Lg/aqz;->n:Z

    goto :goto_e

    :cond_17
    iget v11, v9, Landroidx/recyclerview/widget/p;->g:I

    if-ltz v11, :cond_1e

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result v12

    if-ge v11, v12, :cond_1e

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v11, v11, Lg/aqz;->n:Z

    if-nez v11, :cond_19

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    iget v12, v9, Landroidx/recyclerview/widget/p;->g:I

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/m;->getItemViewType(I)I

    move-result v11

    iget v12, v9, Landroidx/recyclerview/widget/p;->t:I

    if-eq v11, v12, :cond_19

    :cond_18
    const/4 v11, 0x0

    goto :goto_e

    :cond_19
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/m;->hasStableIds()Z

    move-result v11

    if-eqz v11, :cond_1a

    iget-wide v11, v9, Landroidx/recyclerview/widget/p;->l:J

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    iget v14, v9, Landroidx/recyclerview/widget/p;->g:I

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/m;->getItemId(I)J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-nez v15, :cond_18

    :cond_1a
    const/4 v11, 0x1

    :goto_e
    if-nez v11, :cond_1d

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/p;->ab(I)V

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->af()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v11, v9, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-virtual {v2, v11, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v11, v9, Landroidx/recyclerview/widget/p;->q:Landroidx/recyclerview/widget/f;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/f;->m(Landroidx/recyclerview/widget/p;)V

    goto :goto_f

    :cond_1b
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->ad()Z

    move-result v11

    if-eqz v11, :cond_1c

    iget v11, v9, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v11, v11, -0x21

    iput v11, v9, Landroidx/recyclerview/widget/p;->f:I

    :cond_1c
    :goto_f
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/f;->k(Landroidx/recyclerview/widget/p;)V

    const/4 v9, 0x0

    goto :goto_10

    :cond_1d
    const/4 v3, 0x1

    goto :goto_10

    :cond_1e
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    :goto_10
    const-wide v17, 0x7fffffffffffffffL

    const-wide/16 v19, 0x3

    if-nez v9, :cond_33

    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/h;

    invoke-virtual {v11, v1, v7}, Landroidx/recyclerview/widget/h;->m(II)I

    move-result v11

    if-ltz v11, :cond_32

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/m;->getItemCount()I

    move-result v12

    if-ge v11, v12, :cond_32

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/m;->getItemViewType(I)I

    move-result v12

    const-wide/16 v21, 0x4

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/m;->hasStableIds()Z

    move-result v13

    if-eqz v13, :cond_27

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/m;->getItemId(I)J

    move-result-wide v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    :goto_11
    if-ltz v9, :cond_23

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    const-wide/16 v24, 0x0

    move-object/from16 v15, v23

    check-cast v15, Landroidx/recyclerview/widget/p;

    const/16 v23, 0x1

    iget-wide v5, v15, Landroidx/recyclerview/widget/p;->l:J

    iget-object v7, v15, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    cmp-long v26, v5, v13

    if-nez v26, :cond_22

    invoke-virtual {v15}, Landroidx/recyclerview/widget/p;->ad()Z

    move-result v5

    if-nez v5, :cond_22

    iget v5, v15, Landroidx/recyclerview/widget/p;->t:I

    if-ne v12, v5, :cond_21

    invoke-virtual {v15, v4}, Landroidx/recyclerview/widget/p;->ab(I)V

    invoke-virtual {v15}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v4, v4, Lg/aqz;->n:Z

    if-nez v4, :cond_20

    iget v4, v15, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v4, v4, -0xf

    or-int/lit8 v4, v4, 0x2

    iput v4, v15, Landroidx/recyclerview/widget/p;->f:I

    :cond_20
    move-object v9, v15

    goto :goto_13

    :cond_21
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p;

    move-result-object v6

    const/4 v7, 0x0

    iput-object v7, v6, Landroidx/recyclerview/widget/p;->q:Landroidx/recyclerview/widget/f;

    iput-boolean v5, v6, Landroidx/recyclerview/widget/p;->e:Z

    iget v5, v6, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v5, v5, -0x21

    iput v5, v6, Landroidx/recyclerview/widget/p;->f:I

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/f;->k(Landroidx/recyclerview/widget/p;)V

    :cond_22
    add-int/lit8 v9, v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_11

    :cond_23
    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_12
    if-ltz v4, :cond_25

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/p;

    iget-wide v6, v5, Landroidx/recyclerview/widget/p;->l:J

    cmp-long v8, v6, v13

    if-nez v8, :cond_26

    invoke-virtual {v5}, Landroidx/recyclerview/widget/p;->y()Z

    move-result v6

    if-nez v6, :cond_26

    iget v6, v5, Landroidx/recyclerview/widget/p;->t:I

    if-ne v12, v6, :cond_24

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v9, v5

    goto :goto_13

    :cond_24
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/f;->s(I)V

    :cond_25
    const/4 v9, 0x0

    goto :goto_13

    :cond_26
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    :goto_13
    if-eqz v9, :cond_28

    iput v11, v9, Landroidx/recyclerview/widget/p;->g:I

    const/4 v3, 0x1

    goto :goto_14

    :cond_27
    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    :cond_28
    :goto_14
    if-nez v9, :cond_2c

    sget v4, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f;->v()Lg/dvv;

    move-result-object v4

    iget-object v4, v4, Lg/dvv;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/atv;

    if-eqz v4, :cond_2a

    iget-object v4, v4, Lg/atv;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_15
    if-ltz v5, :cond_2a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/p;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/p;->y()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/p;

    goto :goto_16

    :cond_29
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    :cond_2a
    const/4 v4, 0x0

    :goto_16
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Landroidx/recyclerview/widget/p;->ae()V

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v5, :cond_2b

    iget-object v5, v4, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2b

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/recyclerview/widget/f;->i(Landroid/view/ViewGroup;Z)V

    :cond_2b
    move-object v9, v4

    :cond_2c
    if-nez v9, :cond_34

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    cmp-long v6, p2, v17

    if-eqz v6, :cond_2f

    iget-object v6, v0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    invoke-virtual {v6, v12}, Lg/dvv;->d(I)Lg/atv;

    move-result-object v6

    iget-wide v6, v6, Lg/atv;->d:J

    cmp-long v8, v6, v24

    if-eqz v8, :cond_2e

    add-long/2addr v6, v4

    cmp-long v8, v6, p2

    if-gez v8, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v6, 0x0

    goto :goto_18

    :cond_2e
    :goto_17
    const/4 v6, 0x1

    :goto_18
    if-nez v6, :cond_2f

    const/16 v16, 0x0

    return-object v16

    :cond_2f
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v6, v2, v12}, Landroidx/recyclerview/widget/m;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p;

    move-result-object v9

    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v6, :cond_30

    iget-object v6, v9, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    if-eqz v6, :cond_30

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v9, Landroidx/recyclerview/widget/p;->p:Ljava/lang/ref/WeakReference;

    :cond_30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    iget-object v8, v0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    sub-long/2addr v6, v4

    invoke-virtual {v8, v12}, Lg/dvv;->d(I)Lg/atv;

    move-result-object v4

    iget-wide v10, v4, Lg/atv;->d:J

    cmp-long v5, v10, v24

    if-nez v5, :cond_31

    goto :goto_19

    :cond_31
    div-long v10, v10, v21

    mul-long v10, v10, v19

    div-long v6, v6, v21

    add-long/2addr v6, v10

    :goto_19
    iput-wide v6, v4, Lg/atv;->d:J

    goto :goto_1a

    :cond_32
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "(offset:"

    const-string v5, ").state:"

    const-string v6, "Inconsistency detected. Invalid item position "

    invoke-static {v1, v11, v6, v4, v5}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {v4}, Lg/aqz;->p()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_33
    const-wide/16 v21, 0x4

    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    :cond_34
    :goto_1a
    if-eqz v3, :cond_36

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v5, v4, Lg/aqz;->n:Z

    if-nez v5, :cond_36

    iget v5, v9, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit16 v6, v5, 0x2000

    if-eqz v6, :cond_35

    const/4 v6, 0x1

    goto :goto_1b

    :cond_35
    const/4 v6, 0x0

    :goto_1b
    if-eqz v6, :cond_36

    and-int/lit16 v5, v5, -0x2001

    iput v5, v9, Landroidx/recyclerview/widget/p;->f:I

    iget-boolean v4, v4, Lg/aqz;->l:Z

    if-eqz v4, :cond_36

    invoke-static {v9}, Lg/dgn;->g(Landroidx/recyclerview/widget/p;)V

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Lg/dgn;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->ai()Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg/geq;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v9}, Lg/geq;->c(Landroidx/recyclerview/widget/p;)V

    invoke-virtual {v2, v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/p;Lg/geq;)V

    :cond_36
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v4, v4, Lg/aqz;->n:Z

    if-eqz v4, :cond_37

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->aa()Z

    move-result v4

    if-eqz v4, :cond_37

    iput v1, v9, Landroidx/recyclerview/widget/p;->d:I

    goto :goto_1d

    :cond_37
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->aa()Z

    move-result v4

    if-eqz v4, :cond_3a

    iget v4, v9, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_38

    const/4 v5, 0x1

    goto :goto_1c

    :cond_38
    const/4 v5, 0x0

    :goto_1c
    if-nez v5, :cond_3a

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->ac()Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_1e

    :cond_39
    :goto_1d
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_27

    :cond_3a
    :goto_1e
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v4, :cond_3c

    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->u()Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_1f

    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lg/awf;->u(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    :goto_1f
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/h;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroidx/recyclerview/widget/h;->m(II)I

    move-result v4

    const/4 v7, 0x0

    iput-object v7, v9, Landroidx/recyclerview/widget/p;->j:Landroidx/recyclerview/widget/m;

    iget-object v6, v9, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    iput-object v2, v9, Landroidx/recyclerview/widget/p;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget v8, v9, Landroidx/recyclerview/widget/p;->t:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    cmp-long v12, p2, v17

    if-eqz v12, :cond_3e

    iget-object v12, v0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    invoke-virtual {v12, v8}, Lg/dvv;->d(I)Lg/atv;

    move-result-object v8

    iget-wide v12, v8, Lg/atv;->a:J

    cmp-long v8, v12, v24

    if-eqz v8, :cond_3e

    add-long/2addr v12, v10

    cmp-long v8, v12, p2

    if-gez v8, :cond_3d

    goto :goto_20

    :cond_3d
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_27

    :cond_3e
    :goto_20
    invoke-virtual {v9}, Landroidx/recyclerview/widget/p;->ah()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-static {v2, v6, v8, v12}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x1

    goto :goto_21

    :cond_3f
    const/4 v8, 0x0

    :goto_21
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/m;

    invoke-virtual {v12, v9, v4}, Landroidx/recyclerview/widget/m;->bindViewHolder(Landroidx/recyclerview/widget/p;I)V

    if-eqz v8, :cond_40

    invoke-static {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    iget-object v4, v0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    iget v8, v9, Landroidx/recyclerview/widget/p;->t:I

    sub-long/2addr v12, v10

    invoke-virtual {v4, v8}, Lg/dvv;->d(I)Lg/atv;

    move-result-object v4

    iget-wide v10, v4, Lg/atv;->a:J

    cmp-long v8, v10, v24

    if-nez v8, :cond_41

    goto :goto_22

    :cond_41
    div-long v10, v10, v21

    mul-long v10, v10, v19

    div-long v12, v12, v21

    add-long/2addr v12, v10

    :goto_22
    iput-wide v12, v4, Lg/atv;->a:J

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_42

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_23

    :cond_42
    const/4 v4, 0x1

    :goto_23
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/j;

    if-nez v8, :cond_43

    goto :goto_26

    :cond_43
    iget-object v8, v8, Landroidx/recyclerview/widget/j;->b:Landroidx/recyclerview/widget/t;

    if-eqz v8, :cond_44

    const/4 v10, 0x1

    goto :goto_24

    :cond_44
    const/4 v10, 0x0

    :goto_24
    if-eqz v10, :cond_47

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lg/goi;->l(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v10

    if-nez v10, :cond_45

    goto :goto_25

    :cond_45
    instance-of v7, v10, Lg/dln;

    if-eqz v7, :cond_46

    check-cast v10, Lg/dln;

    iget-object v7, v10, Lg/dln;->a:Lg/amk;

    goto :goto_25

    :cond_46
    new-instance v7, Lg/amk;

    invoke-direct {v7, v10}, Lg/amk;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_25
    if-eqz v7, :cond_47

    if-eq v7, v8, :cond_47

    iget-object v10, v8, Landroidx/recyclerview/widget/t;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v10, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    invoke-static {v6, v8}, Lg/goi;->ab(Landroid/view/View;Lg/amk;)V

    goto :goto_26

    :cond_48
    const/4 v4, 0x1

    :goto_26
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v6, v6, Lg/aqz;->n:Z

    if-eqz v6, :cond_49

    iput v1, v9, Landroidx/recyclerview/widget/p;->d:I

    :cond_49
    const/4 v1, 0x1

    :goto_27
    iget-object v6, v9, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_4a

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lg/yx;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    :cond_4a
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_4b

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lg/yx;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    :cond_4b
    move-object v2, v7

    check-cast v2, Lg/yx;

    :goto_28
    iput-object v9, v2, Lg/yx;->b:Landroidx/recyclerview/widget/p;

    if-eqz v3, :cond_4c

    if-eqz v1, :cond_4c

    const/4 v6, 0x1

    goto :goto_29

    :cond_4c
    const/4 v6, 0x0

    :goto_29
    iput-boolean v6, v2, Lg/yx;->a:Z

    return-object v9

    :cond_4d
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "("

    const-string v5, "). Item count:"

    const-string v6, "Invalid item position "

    invoke-static {v1, v1, v6, v4, v5}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {v4}, Lg/aqz;->p()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final s(I)V
    .locals 3

    sget v0, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/p;

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/f;->p(Landroidx/recyclerview/widget/p;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final t(I)I
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {v1}, Lg/aqz;->p()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget-boolean v1, v1, Lg/aqz;->n:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/h;->m(II)I

    move-result p1

    return p1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "invalid position "

    const-string v3, ". State item count is "

    invoke-static {p1, v2, v3}, Lg/tn;->z(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    invoke-virtual {v2}, Lg/aqz;->p()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final u(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->ah()Z

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->af()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/recyclerview/widget/p;->q:Landroidx/recyclerview/widget/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/f;->m(Landroidx/recyclerview/widget/p;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->ad()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Landroidx/recyclerview/widget/p;->f:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Landroidx/recyclerview/widget/p;->f:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/f;->k(Landroidx/recyclerview/widget/p;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Lg/dgn;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/p;->aj()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Lg/dgn;

    invoke-virtual {p1, v0}, Lg/dgn;->h(Landroidx/recyclerview/widget/p;)V

    :cond_3
    return-void
.end method

.method public final v()Lg/dvv;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    if-nez v0, :cond_0

    new-instance v0, Lg/dvv;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lg/dvv;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, v0, Lg/dvv;->b:I

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lg/dvv;->c:Ljava/util/Set;

    iput-object v0, p0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->q()V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    return-object v0
.end method

.method public final w(Landroidx/recyclerview/widget/m;Z)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/f;->h:Lg/dvv;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/dvv;->a:Landroid/util/SparseArray;

    iget-object v0, v0, Lg/dvv;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/atv;

    iget-object v0, v0, Lg/atv;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/p;

    iget-object v3, v3, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    invoke-static {v3}, Lg/egh;->y(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
