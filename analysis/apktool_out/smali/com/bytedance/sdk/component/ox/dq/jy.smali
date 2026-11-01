.class final Lcom/bytedance/sdk/component/ox/dq/jy;
.super Ljava/lang/Object;


# instance fields
.field d:I

.field final dq:[B

.field iw:Lcom/bytedance/sdk/component/ox/dq/jy;

.field mn:Lcom/bytedance/sdk/component/ox/dq/jy;

.field ox:I

.field p:Z

.field s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->p:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iput p2, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iput p3, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->p:Z

    iput-boolean p5, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->s:Z

    return-void
.end method


# virtual methods
.method public final d()Lcom/bytedance/sdk/component/ox/dq/jy;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-eqz v3, :cond_1

    iput-object v0, v3, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-eqz v0, :cond_2

    iput-object v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    :cond_2
    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    return-object v2
.end method

.method public final dq()Lcom/bytedance/sdk/component/ox/dq/jy;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->p:Z

    new-instance v1, Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v3, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget v4, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/dq/jy;-><init>([BIIZZ)V

    return-object v1
.end method

.method public final dq(I)Lcom/bytedance/sdk/component/ox/dq/jy;
    .locals 5

    if-lez p1, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/ox/dq/f;->dq()Lcom/bytedance/sdk/component/ox/dq/jy;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v2, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget-object v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)Lcom/bytedance/sdk/component/ox/dq/jy;

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final dq(Lcom/bytedance/sdk/component/ox/dq/jy;)Lcom/bytedance/sdk/component/ox/dq/jy;
    .locals 1

    iput-object p0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object p1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    return-object p1
.end method

.method public final dq(Lcom/bytedance/sdk/component/ox/dq/jy;I)V
    .locals 4

    iget-boolean v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->s:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->p:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    iget v3, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v1, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iput v2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->dq:[B

    iget v3, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget p1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final ox()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->mn:Lcom/bytedance/sdk/component/ox/dq/jy;

    if-eq v0, p0, :cond_3

    iget-boolean v1, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->s:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v2, p0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->p:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    :goto_0
    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/jy;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/dq/jy;->d()Lcom/bytedance/sdk/component/ox/dq/jy;

    invoke-static {p0}, Lcom/bytedance/sdk/component/ox/dq/f;->dq(Lcom/bytedance/sdk/component/ox/dq/jy;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
