.class public final Landroidx/recyclerview/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/a;

.field public final b:Lg/eie;

.field public final c:Lg/dqc;

.field public d:I

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/dqc;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lg/dqc;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/h;->d:I

    iput-object p1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/a;

    new-instance p1, Lg/eie;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/h;->b:Lg/eie;

    return-void
.end method


# virtual methods
.method public final g(IIILjava/lang/Object;)Lg/rx;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    invoke-virtual {v0}, Lg/dqc;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/rx;

    if-nez v0, :cond_0

    new-instance v0, Lg/rx;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lg/rx;->b:I

    iput p2, v0, Lg/rx;->c:I

    iput p3, v0, Lg/rx;->a:I

    iput-object p4, v0, Lg/rx;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    iput p1, v0, Lg/rx;->b:I

    iput p2, v0, Lg/rx;->c:I

    iput p3, v0, Lg/rx;->a:I

    iput-object p4, v0, Lg/rx;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/rx;

    const/4 v3, 0x0

    iput-object v3, v2, Lg/rx;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    invoke-virtual {v3, v2}, Lg/dqc;->c(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final i(Lg/rx;)V
    .locals 13

    iget v0, p1, Lg/rx;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    iget v2, p1, Lg/rx;->c:I

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/h;->j(II)I

    move-result v0

    iget v2, p1, Lg/rx;->c:I

    iget v3, p1, Lg/rx;->b:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_1
    iget v8, p1, Lg/rx;->a:I

    iget-object v9, p0, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    const/4 v10, 0x0

    if-ge v6, v8, :cond_6

    iget v8, p1, Lg/rx;->c:I

    mul-int v11, v3, v6

    add-int/2addr v11, v8

    iget v8, p1, Lg/rx;->b:I

    invoke-virtual {p0, v11, v8}, Landroidx/recyclerview/widget/h;->j(II)I

    move-result v8

    iget v11, p1, Lg/rx;->b:I

    if-eq v11, v4, :cond_3

    if-eq v11, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v0, 0x1

    if-ne v8, v12, :cond_4

    goto :goto_2

    :cond_3
    if-ne v8, v0, :cond_4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v12, p1, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {p0, v11, v0, v7, v12}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/h;->k(Lg/rx;I)V

    iput-object v10, v0, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v9, v0}, Lg/dqc;->c(Ljava/lang/Object;)Z

    iget v0, p1, Lg/rx;->b:I

    if-ne v0, v5, :cond_5

    add-int/2addr v2, v7

    :cond_5
    move v0, v8

    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p1, Lg/rx;->d:Ljava/lang/Object;

    iput-object v10, p1, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v9, p1}, Lg/dqc;->c(Ljava/lang/Object;)Z

    if-lez v7, :cond_7

    iget p1, p1, Lg/rx;->b:I

    invoke-virtual {p0, p1, v0, v7, v1}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/h;->k(Lg/rx;I)V

    iput-object v10, p1, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v9, p1}, Lg/dqc;->c(Ljava/lang/Object;)Z

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(II)I
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/16 v3, 0x8

    if-ltz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/rx;

    iget v5, v4, Lg/rx;->b:I

    const/4 v6, 0x2

    if-ne v5, v3, :cond_8

    iget v3, v4, Lg/rx;->c:I

    iget v5, v4, Lg/rx;->a:I

    if-ge v3, v5, :cond_0

    move v7, v3

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v3

    move v7, v5

    :goto_1
    if-lt p1, v7, :cond_6

    if-gt p1, v8, :cond_6

    if-ne v7, v3, :cond_3

    if-ne p2, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lg/rx;->a:I

    goto :goto_2

    :cond_1
    if-ne p2, v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lg/rx;->a:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lg/rx;->c:I

    goto :goto_3

    :cond_4
    if-ne p2, v6, :cond_5

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lg/rx;->c:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v3, :cond_c

    if-ne p2, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lg/rx;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lg/rx;->a:I

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lg/rx;->c:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lg/rx;->a:I

    goto :goto_4

    :cond_8
    iget v3, v4, Lg/rx;->c:I

    if-gt v3, p1, :cond_a

    if-ne v5, v2, :cond_9

    iget v3, v4, Lg/rx;->a:I

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_9
    if-ne v5, v6, :cond_c

    iget v3, v4, Lg/rx;->a:I

    add-int/2addr p1, v3

    goto :goto_4

    :cond_a
    if-ne p2, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lg/rx;->c:I

    goto :goto_4

    :cond_b
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lg/rx;->c:I

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_5
    if-ltz p2, :cond_11

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/rx;

    iget v2, v1, Lg/rx;->b:I

    iget-object v4, p0, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    const/4 v5, 0x0

    if-ne v2, v3, :cond_f

    iget v2, v1, Lg/rx;->a:I

    iget v6, v1, Lg/rx;->c:I

    if-eq v2, v6, :cond_e

    if-gez v2, :cond_10

    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v5, v1, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Lg/dqc;->c(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    iget v2, v1, Lg/rx;->a:I

    if-gtz v2, :cond_10

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v5, v1, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Lg/dqc;->c(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public final k(Lg/rx;I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a;->d(Lg/rx;)V

    iget-object v0, v0, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p1, Lg/rx;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget v1, p1, Lg/rx;->a:I

    iget-object p1, p1, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p1, Lg/rx;->a:I

    invoke-virtual {v0, p2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget v0, p2, Lg/aqz;->m:I

    add-int/2addr v0, p1

    iput v0, p2, Lg/aqz;->m:I

    return-void
.end method

.method public final l(I)Z
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/rx;

    iget v5, v4, Lg/rx;->b:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget v4, v4, Lg/rx;->a:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/h;->m(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_0
    if-ne v5, v7, :cond_2

    iget v5, v4, Lg/rx;->c:I

    iget v4, v4, Lg/rx;->a:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/h;->m(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    :goto_2
    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final m(II)I
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/rx;

    iget v3, v2, Lg/rx;->b:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, v2, Lg/rx;->c:I

    if-ne v3, p1, :cond_0

    iget p1, v2, Lg/rx;->a:I

    goto :goto_1

    :cond_0
    if-ge v3, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v2, v2, Lg/rx;->a:I

    if-gt v2, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v4, v2, Lg/rx;->c:I

    if-gt v4, p1, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget v2, v2, Lg/rx;->a:I

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v2, v2, Lg/rx;->a:I

    add-int/2addr p1, v2

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public final n(Lg/rx;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lg/rx;->b:I

    iget-object v1, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/a;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    iget v0, p1, Lg/rx;->c:I

    iget p1, p1, Lg/rx;->a:I

    iget-object v1, v1, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lg/rx;->c:I

    iget v3, p1, Lg/rx;->a:I

    iget-object p1, p1, Lg/rx;->d:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    return-void

    :cond_2
    iget v0, p1, Lg/rx;->c:I

    iget p1, p1, Lg/rx;->a:I

    iget-object v1, v1, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void

    :cond_3
    iget v0, p1, Lg/rx;->c:I

    iget p1, p1, Lg/rx;->a:I

    iget-object v1, v1, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/rx;

    iget-object v5, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/a;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/a;->d(Lg/rx;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h;->h(Ljava/util/ArrayList;)V

    iput v2, p0, Landroidx/recyclerview/widget/h;->d:I

    return-void
.end method

.method public final p()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/h;->b:Lg/eie;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object v2, v0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x8

    const/4 v8, -0x1

    if-ltz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/rx;

    iget v9, v9, Lg/rx;->b:I

    if-ne v9, v7, :cond_1

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_2
    const/4 v6, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eq v3, v8, :cond_22

    add-int/lit8 v7, v3, 0x1

    iget-object v11, v1, Lg/eie;->g:Ljava/lang/Object;

    check-cast v11, Landroidx/recyclerview/widget/h;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/rx;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/rx;

    iget v14, v13, Lg/rx;->b:I

    if-eq v14, v4, :cond_1d

    if-eq v14, v6, :cond_b

    if-eq v14, v9, :cond_4

    goto :goto_0

    :cond_4
    iget v5, v12, Lg/rx;->a:I

    iget v6, v13, Lg/rx;->c:I

    if-ge v5, v6, :cond_5

    add-int/lit8 v6, v6, -0x1

    iput v6, v13, Lg/rx;->c:I

    goto :goto_3

    :cond_5
    iget v8, v13, Lg/rx;->a:I

    add-int/2addr v6, v8

    if-ge v5, v6, :cond_6

    add-int/lit8 v8, v8, -0x1

    iput v8, v13, Lg/rx;->a:I

    iget v5, v12, Lg/rx;->c:I

    iget-object v6, v13, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v11, v9, v5, v4, v6}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v4

    goto :goto_4

    :cond_6
    :goto_3
    move-object v4, v10

    :goto_4
    iget v5, v12, Lg/rx;->c:I

    iget v6, v13, Lg/rx;->c:I

    if-gt v5, v6, :cond_7

    add-int/lit8 v6, v6, 0x1

    iput v6, v13, Lg/rx;->c:I

    goto :goto_5

    :cond_7
    iget v8, v13, Lg/rx;->a:I

    add-int/2addr v6, v8

    if-ge v5, v6, :cond_8

    sub-int/2addr v6, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v8, v13, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v11, v9, v5, v6, v8}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v5

    iget v8, v13, Lg/rx;->a:I

    sub-int/2addr v8, v6

    iput v8, v13, Lg/rx;->a:I

    goto :goto_6

    :cond_8
    :goto_5
    move-object v5, v10

    :goto_6
    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v6, v13, Lg/rx;->a:I

    if-lez v6, :cond_9

    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v10, v13, Lg/rx;->d:Ljava/lang/Object;

    iget-object v6, v11, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    invoke-virtual {v6, v13}, Lg/dqc;->c(Ljava/lang/Object;)Z

    :goto_7
    if-eqz v4, :cond_a

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget v8, v12, Lg/rx;->c:I

    iget v9, v12, Lg/rx;->a:I

    if-ge v8, v9, :cond_d

    iget v14, v13, Lg/rx;->c:I

    if-ne v14, v8, :cond_c

    iget v14, v13, Lg/rx;->a:I

    sub-int v8, v9, v8

    if-ne v14, v8, :cond_c

    const/4 v5, 0x1

    :goto_8
    const/4 v8, 0x0

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    goto :goto_8

    :cond_d
    iget v14, v13, Lg/rx;->c:I

    add-int/lit8 v15, v9, 0x1

    if-ne v14, v15, :cond_e

    iget v14, v13, Lg/rx;->a:I

    sub-int/2addr v8, v9

    if-ne v14, v8, :cond_e

    const/4 v5, 0x1

    :goto_9
    const/4 v8, 0x1

    goto :goto_a

    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    :goto_a
    iget v14, v13, Lg/rx;->c:I

    if-ge v9, v14, :cond_f

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lg/rx;->c:I

    goto :goto_b

    :cond_f
    iget v15, v13, Lg/rx;->a:I

    add-int/2addr v14, v15

    if-ge v9, v14, :cond_10

    add-int/lit8 v15, v15, -0x1

    iput v15, v13, Lg/rx;->a:I

    iput v6, v12, Lg/rx;->b:I

    iput v4, v12, Lg/rx;->a:I

    iget v3, v13, Lg/rx;->a:I

    if-nez v3, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v10, v13, Lg/rx;->d:Ljava/lang/Object;

    iget-object v2, v11, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    invoke-virtual {v2, v13}, Lg/dqc;->c(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    :goto_b
    iget v4, v12, Lg/rx;->c:I

    iget v9, v13, Lg/rx;->c:I

    if-gt v4, v9, :cond_11

    add-int/lit8 v9, v9, 0x1

    iput v9, v13, Lg/rx;->c:I

    goto :goto_c

    :cond_11
    iget v14, v13, Lg/rx;->a:I

    add-int/2addr v9, v14

    if-ge v4, v9, :cond_12

    sub-int/2addr v9, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v6, v4, v9, v10}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v4

    iget v6, v12, Lg/rx;->c:I

    iget v9, v13, Lg/rx;->c:I

    sub-int/2addr v6, v9

    iput v6, v13, Lg/rx;->a:I

    goto :goto_d

    :cond_12
    :goto_c
    move-object v4, v10

    :goto_d
    if-eqz v5, :cond_13

    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v10, v12, Lg/rx;->d:Ljava/lang/Object;

    iget-object v2, v11, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    invoke-virtual {v2, v12}, Lg/dqc;->c(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    if-eqz v8, :cond_17

    if-eqz v4, :cond_15

    iget v5, v12, Lg/rx;->c:I

    iget v6, v4, Lg/rx;->c:I

    if-le v5, v6, :cond_14

    iget v6, v4, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->c:I

    :cond_14
    iget v5, v12, Lg/rx;->a:I

    iget v6, v4, Lg/rx;->c:I

    if-le v5, v6, :cond_15

    iget v6, v4, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->a:I

    :cond_15
    iget v5, v12, Lg/rx;->c:I

    iget v6, v13, Lg/rx;->c:I

    if-le v5, v6, :cond_16

    iget v6, v13, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->c:I

    :cond_16
    iget v5, v12, Lg/rx;->a:I

    iget v6, v13, Lg/rx;->c:I

    if-le v5, v6, :cond_1b

    iget v6, v13, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->a:I

    goto :goto_e

    :cond_17
    if-eqz v4, :cond_19

    iget v5, v12, Lg/rx;->c:I

    iget v6, v4, Lg/rx;->c:I

    if-lt v5, v6, :cond_18

    iget v6, v4, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->c:I

    :cond_18
    iget v5, v12, Lg/rx;->a:I

    iget v6, v4, Lg/rx;->c:I

    if-lt v5, v6, :cond_19

    iget v6, v4, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->a:I

    :cond_19
    iget v5, v12, Lg/rx;->c:I

    iget v6, v13, Lg/rx;->c:I

    if-lt v5, v6, :cond_1a

    iget v6, v13, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->c:I

    :cond_1a
    iget v5, v12, Lg/rx;->a:I

    iget v6, v13, Lg/rx;->c:I

    if-lt v5, v6, :cond_1b

    iget v6, v13, Lg/rx;->a:I

    sub-int/2addr v5, v6

    iput v5, v12, Lg/rx;->a:I

    :cond_1b
    :goto_e
    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v5, v12, Lg/rx;->c:I

    iget v6, v12, Lg/rx;->a:I

    if-eq v5, v6, :cond_1c

    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_1c
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_f
    if-eqz v4, :cond_0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    iget v4, v12, Lg/rx;->a:I

    iget v6, v13, Lg/rx;->c:I

    if-ge v4, v6, :cond_1e

    const/4 v5, -0x1

    goto :goto_10

    :cond_1e
    const/4 v5, 0x0

    :goto_10
    iget v8, v12, Lg/rx;->c:I

    if-ge v8, v6, :cond_1f

    add-int/lit8 v5, v5, 0x1

    :cond_1f
    if-gt v6, v8, :cond_20

    iget v6, v13, Lg/rx;->a:I

    add-int/2addr v8, v6

    iput v8, v12, Lg/rx;->c:I

    :cond_20
    iget v6, v13, Lg/rx;->c:I

    if-gt v6, v4, :cond_21

    iget v8, v13, Lg/rx;->a:I

    add-int/2addr v4, v8

    iput v4, v12, Lg/rx;->a:I

    :cond_21
    add-int/2addr v6, v5

    iput v6, v13, Lg/rx;->c:I

    invoke-virtual {v2, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_3a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/rx;

    iget v12, v11, Lg/rx;->b:I

    if-eq v12, v4, :cond_39

    iget-object v13, v0, Landroidx/recyclerview/widget/h;->c:Lg/dqc;

    iget-object v14, v0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/a;

    if-eq v12, v6, :cond_2e

    if-eq v12, v9, :cond_24

    if-eq v12, v7, :cond_23

    :goto_12
    move-object v9, v10

    goto/16 :goto_24

    :cond_23
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/h;->n(Lg/rx;)V

    goto :goto_12

    :cond_24
    iget v12, v11, Lg/rx;->c:I

    iget v15, v11, Lg/rx;->a:I

    add-int/2addr v15, v12

    move v5, v12

    const/4 v7, 0x0

    :goto_13
    if-ge v12, v15, :cond_2b

    iget-object v6, v14, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v12, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/p;

    move-result-object v10

    if-nez v10, :cond_25

    :goto_14
    const/4 v10, 0x0

    goto :goto_15

    :cond_25
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    iget-object v9, v10, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    iget-object v6, v6, Landroidx/recyclerview/widget/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    sget v6, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    goto :goto_14

    :cond_26
    :goto_15
    if-nez v10, :cond_27

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/h;->l(I)Z

    move-result v6

    if-eqz v6, :cond_28

    :cond_27
    const/4 v9, 0x4

    goto :goto_17

    :cond_28
    if-ne v8, v4, :cond_29

    iget-object v6, v11, Lg/rx;->d:Ljava/lang/Object;

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v5, v7, v6}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/h;->n(Lg/rx;)V

    move v5, v12

    const/4 v7, 0x0

    goto :goto_16

    :cond_29
    const/4 v9, 0x4

    :goto_16
    const/4 v8, 0x0

    goto :goto_18

    :goto_17
    if-nez v8, :cond_2a

    iget-object v6, v11, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v0, v9, v5, v7, v6}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/h;->i(Lg/rx;)V

    move v5, v12

    const/4 v7, 0x0

    :cond_2a
    const/4 v8, 0x1

    :goto_18
    add-int/2addr v7, v4

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    goto :goto_13

    :cond_2b
    iget v6, v11, Lg/rx;->a:I

    if-eq v7, v6, :cond_2c

    iget-object v6, v11, Lg/rx;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v11, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v13, v11}, Lg/dqc;->c(Ljava/lang/Object;)Z

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v5, v7, v6}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v11

    goto :goto_19

    :cond_2c
    const/4 v9, 0x4

    :goto_19
    if-nez v8, :cond_2d

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/h;->i(Lg/rx;)V

    goto :goto_1a

    :cond_2d
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/h;->n(Lg/rx;)V

    :goto_1a
    const/4 v6, 0x2

    const/4 v9, 0x0

    goto/16 :goto_24

    :cond_2e
    iget v5, v11, Lg/rx;->c:I

    iget v6, v11, Lg/rx;->a:I

    add-int/2addr v6, v5

    move v7, v5

    const/4 v8, 0x0

    const/4 v10, -0x1

    :goto_1b
    if-ge v7, v6, :cond_36

    iget-object v12, v14, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12, v7, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/p;

    move-result-object v15

    if-nez v15, :cond_2f

    :goto_1c
    const/4 v15, 0x0

    goto :goto_1d

    :cond_2f
    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/n;

    iget-object v9, v15, Landroidx/recyclerview/widget/p;->n:Landroid/view/View;

    iget-object v12, v12, Landroidx/recyclerview/widget/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    sget v9, Landroidx/recyclerview/widget/RecyclerView;->HORIZONTAL:I

    goto :goto_1c

    :cond_30
    :goto_1d
    if-nez v15, :cond_31

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/h;->l(I)Z

    move-result v9

    if-eqz v9, :cond_32

    :cond_31
    const/4 v9, 0x2

    const/4 v12, 0x0

    goto :goto_1f

    :cond_32
    const/4 v9, 0x2

    const/4 v12, 0x0

    if-ne v10, v4, :cond_33

    invoke-virtual {v0, v9, v5, v8, v12}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/h;->n(Lg/rx;)V

    const/4 v10, 0x1

    goto :goto_1e

    :cond_33
    const/4 v10, 0x0

    :goto_1e
    const/4 v9, 0x0

    goto :goto_21

    :goto_1f
    if-nez v10, :cond_34

    invoke-virtual {v0, v9, v5, v8, v12}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/h;->i(Lg/rx;)V

    const/4 v10, 0x1

    goto :goto_20

    :cond_34
    const/4 v10, 0x0

    :goto_20
    const/4 v9, 0x1

    :goto_21
    if-eqz v10, :cond_35

    sub-int/2addr v7, v8

    sub-int/2addr v6, v8

    const/4 v8, 0x1

    goto :goto_22

    :cond_35
    add-int/lit8 v8, v8, 0x1

    :goto_22
    add-int/2addr v7, v4

    move v10, v9

    const/4 v9, 0x4

    goto :goto_1b

    :cond_36
    iget v6, v11, Lg/rx;->a:I

    if-eq v8, v6, :cond_37

    const/4 v9, 0x0

    iput-object v9, v11, Lg/rx;->d:Ljava/lang/Object;

    invoke-virtual {v13, v11}, Lg/dqc;->c(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5, v8, v9}, Landroidx/recyclerview/widget/h;->g(IIILjava/lang/Object;)Lg/rx;

    move-result-object v11

    goto :goto_23

    :cond_37
    const/4 v6, 0x2

    const/4 v9, 0x0

    :goto_23
    if-nez v10, :cond_38

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/h;->i(Lg/rx;)V

    goto :goto_24

    :cond_38
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/h;->n(Lg/rx;)V

    goto :goto_24

    :cond_39
    move-object v9, v10

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/h;->n(Lg/rx;)V

    :goto_24
    add-int/lit8 v3, v3, 0x1

    move-object v10, v9

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x4

    goto/16 :goto_11

    :cond_3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final q()V
    .locals 9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->o()V

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/rx;

    iget v5, v4, Lg/rx;->b:I

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/recyclerview/widget/h;->a:Landroidx/recyclerview/widget/a;

    if-eq v5, v6, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x4

    if-eq v5, v8, :cond_1

    const/16 v8, 0x8

    if-eq v5, v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/a;->d(Lg/rx;)V

    iget v5, v4, Lg/rx;->c:I

    iget v4, v4, Lg/rx;->a:I

    iget-object v7, v7, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/a;->d(Lg/rx;)V

    iget v5, v4, Lg/rx;->c:I

    iget v8, v4, Lg/rx;->a:I

    iget-object v4, v4, Lg/rx;->d:Ljava/lang/Object;

    iget-object v7, v7, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v5, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/a;->d(Lg/rx;)V

    iget v5, v4, Lg/rx;->c:I

    iget v4, v4, Lg/rx;->a:I

    iget-object v7, v7, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Lg/aqz;

    iget v6, v5, Lg/aqz;->m:I

    add-int/2addr v6, v4

    iput v6, v5, Lg/aqz;->m:I

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/a;->d(Lg/rx;)V

    iget v5, v4, Lg/rx;->c:I

    iget v4, v4, Lg/rx;->a:I

    iget-object v7, v7, Landroidx/recyclerview/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h;->h(Ljava/util/ArrayList;)V

    iput v2, p0, Landroidx/recyclerview/widget/h;->d:I

    return-void
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
