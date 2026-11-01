.class Lcom/bytedance/sdk/component/widget/recycler/mn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/recycler/mn$dq;
    }
.end annotation


# instance fields
.field final dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/recycler/mn$dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;

    return-void
.end method

.method private d(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;

    iget v3, v3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->dq:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_1

    return v0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private dq(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/bytedance/sdk/component/widget/recycler/dq$d;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;

    iget v0, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->dq:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/mn;->d(Ljava/util/List;ILcom/bytedance/sdk/component/widget/recycler/dq$d;ILcom/bytedance/sdk/component/widget/recycler/dq$d;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq(Ljava/util/List;ILcom/bytedance/sdk/component/widget/recycler/dq$d;ILcom/bytedance/sdk/component/widget/recycler/dq$d;)V

    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/mn;->ox(Ljava/util/List;ILcom/bytedance/sdk/component/widget/recycler/dq$d;ILcom/bytedance/sdk/component/widget/recycler/dq$d;)V

    return-void
.end method

.method private ox(Ljava/util/List;ILcom/bytedance/sdk/component/widget/recycler/dq$d;ILcom/bytedance/sdk/component/widget/recycler/dq$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ">;I",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            "I",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ")V"
        }
    .end annotation

    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-ge v3, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-gt v1, v3, :cond_2

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    add-int/2addr v3, v1

    iput v3, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    :cond_2
    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-gt v1, v0, :cond_3

    iget v3, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    add-int/2addr v0, v3

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    :cond_3
    add-int/2addr v1, v2

    iput v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;ILcom/bytedance/sdk/component/widget/recycler/dq$d;ILcom/bytedance/sdk/component/widget/recycler/dq$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ">;I",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            "I",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ")V"
        }
    .end annotation

    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v3

    iput v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    goto :goto_0

    :cond_0
    iget v5, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_1

    sub-int/2addr v5, v3

    iput v5, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;

    iget v1, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget-object v5, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->ox:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v3, v5}, Lcom/bytedance/sdk/component/widget/recycler/mn$dq;->dq(IIILjava/lang/Object;)Lcom/bytedance/sdk/component/widget/recycler/dq$d;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v4

    :goto_1
    iget v1, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v5, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-gt v1, v5, :cond_2

    add-int/2addr v5, v3

    iput v5, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    goto :goto_2

    :cond_2
    iget v6, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    add-int v7, v5, v6

    if-ge v1, v7, :cond_3

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;

    add-int/2addr v1, v3

    iget-object v3, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->ox:Ljava/lang/Object;

    invoke-interface {v4, v2, v1, v5, v3}, Lcom/bytedance/sdk/component/widget/recycler/mn$dq;->dq(IIILjava/lang/Object;)Lcom/bytedance/sdk/component/widget/recycler/dq$d;

    move-result-object v4

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v1, v5

    iput v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    :cond_3
    :goto_2
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p3, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    if-lez p3, :cond_4

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;

    invoke-interface {p3, p5}, Lcom/bytedance/sdk/component/widget/recycler/mn$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/dq$d;)V

    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/mn;->d(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq(Ljava/util/List;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/List;ILcom/bytedance/sdk/component/widget/recycler/dq$d;ILcom/bytedance/sdk/component/widget/recycler/dq$d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ">;I",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            "I",
            "Lcom/bytedance/sdk/component/widget/recycler/dq$d;",
            ")V"
        }
    .end annotation

    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v1, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    iget v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-ne v4, v0, :cond_0

    iget v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int v0, v1, v0

    if-ne v4, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    add-int/lit8 v5, v1, 0x1

    if-ne v4, v5, :cond_2

    iget v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    if-ne v4, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iget v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_3

    sub-int/2addr v4, v2

    iput v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    goto :goto_2

    :cond_3
    iget v6, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_4

    sub-int/2addr v6, v2

    iput v6, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iput v5, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->dq:I

    iput v2, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget p2, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    if-nez p2, :cond_11

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;

    invoke-interface {p1, p5}, Lcom/bytedance/sdk/component/widget/recycler/mn$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/dq$d;)V

    return-void

    :cond_4
    :goto_2
    iget v1, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    const/4 v6, 0x0

    if-gt v1, v4, :cond_5

    add-int/2addr v4, v2

    iput v4, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    goto :goto_3

    :cond_5
    iget v7, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    add-int v8, v4, v7

    if-ge v1, v8, :cond_6

    add-int/2addr v4, v7

    sub-int/2addr v4, v1

    iget-object v7, p0, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;

    add-int/2addr v1, v2

    invoke-interface {v7, v5, v1, v4, v6}, Lcom/bytedance/sdk/component/widget/recycler/mn$dq;->dq(IIILjava/lang/Object;)Lcom/bytedance/sdk/component/widget/recycler/dq$d;

    move-result-object v6

    iget v1, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v2, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    sub-int/2addr v1, v2

    iput v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/mn;->dq:Lcom/bytedance/sdk/component/widget/recycler/mn$dq;

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/component/widget/recycler/mn$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/dq$d;)V

    return-void

    :cond_7
    if-eqz v0, :cond_b

    if-eqz v6, :cond_9

    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-le v0, v1, :cond_8

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    :cond_8
    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-le v0, v1, :cond_9

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    :cond_9
    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-le v0, v1, :cond_a

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    :cond_a
    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-le v0, v1, :cond_f

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    goto :goto_4

    :cond_b
    if-eqz v6, :cond_d

    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-lt v0, v1, :cond_c

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    :cond_c
    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-lt v0, v1, :cond_d

    iget v1, v6, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    :cond_d
    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-lt v0, v1, :cond_e

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    :cond_e
    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    if-lt v0, v1, :cond_f

    iget v1, p5, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    :cond_f
    :goto_4
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p5, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->d:I

    iget v0, p3, Lcom/bytedance/sdk/component/widget/recycler/dq$d;->p:I

    if-eq p5, v0, :cond_10

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_5
    if-eqz v6, :cond_11

    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_11
    return-void
.end method
