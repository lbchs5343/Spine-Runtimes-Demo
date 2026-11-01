.class Lcom/bytedance/sdk/component/widget/recycler/p$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:I

.field dq:I

.field ox:[I

.field p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    return-void
.end method

.method public dq(II)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq:I

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->d:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->q:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

    iget-object v1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->iw:Lcom/bytedance/sdk/component/widget/recycler/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/dq;->p()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->mp:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$dq;->dq()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->i()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->dq:I

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->d:I

    iget-object v3, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->bl:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(IILcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    iget v2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->f:I

    if-le v1, v2, :cond_3

    iput v1, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->f:I

    iput-boolean p2, v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->fw:Z

    iget-object p1, p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;->s:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->d()V

    :cond_3
    return-void
.end method

.method public dq(I)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->p:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/p$dq;->ox:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method
