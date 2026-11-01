.class public Lcom/bytedance/sdk/component/widget/recycler/s;
.super Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;

# interfaces
.implements Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/recycler/s$ox;,
        Lcom/bytedance/sdk/component/widget/recycler/s$p;,
        Lcom/bytedance/sdk/component/widget/recycler/s$dq;,
        Lcom/bytedance/sdk/component/widget/recycler/s$d;
    }
.end annotation


# instance fields
.field private cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

.field d:Lcom/bytedance/sdk/component/widget/recycler/ia;

.field dq:I

.field private e:I

.field private gh:Z

.field private i:Z

.field iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

.field private k:Z

.field private le:Z

.field final mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

.field ox:Z

.field p:I

.field private r:Z

.field s:I

.field private final wp:Lcom/bytedance/sdk/component/widget/recycler/s$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->r:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->i:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    new-instance p1, Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    new-instance p1, Lcom/bytedance/sdk/component/widget/recycler/s$d;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/widget/recycler/s$d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->wp:Lcom/bytedance/sdk/component/widget/recycler/s$d;

    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->e:I

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(I)V

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Z)V

    return-void
.end method

.method private d(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->ox(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private d(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s()I

    move-result v1

    sub-int/2addr v1, p2

    iget-boolean p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;II)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_5

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;II)V

    :cond_5
    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;II)V
    .locals 10

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->ox()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->i()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->ia()I

    move-result v8

    if-ge v8, v3, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    iget-boolean v9, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    iget-object v7, v7, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    iget-object v7, v7, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;->p:Landroid/view/View;

    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput-object v0, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    if-lez v5, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->wn()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->mn(II)V

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v5, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iput v2, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq()V

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    :cond_4
    if-lez v6, :cond_5

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->j()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result p3

    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw(II)V

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v6, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iput v2, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq()V

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    :cond_6
    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V
    .locals 1

    iget v0, p1, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    iget p1, p1, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->mn(II)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$dq;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->n()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p2}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq(Landroid/view/View;I)V

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->gh:Z

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->i:Z

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p3, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d(Landroid/view/View;I)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->q()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v0

    if-ge p2, v0, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p2

    if-ge p1, p2, :cond_7

    :cond_5
    iget-boolean p1, p3, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p1

    :goto_1
    iput p1, p3, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    :cond_7
    return v2
.end method

.method private dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->ox(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private dq(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v1

    goto :goto_0
.end method

.method private dq(IIZLcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->ia()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ig:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p4

    iput p4, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput p1, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget p1, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->mn()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->j()Landroid/view/View;

    move-result-object p1

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v2, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    add-int/2addr v0, v2

    iput v0, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->wn()Landroid/view/View;

    move-result-object p1

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v2, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput v0, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v2, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    add-int/2addr v0, v2

    iput v0, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p4}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p4

    add-int/2addr p1, p4

    :goto_1
    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput p2, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    if-eqz p3, :cond_3

    sub-int/2addr p2, p1

    iput p2, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    :cond_3
    iput p1, p4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;I)V
    .locals 5

    if-ltz p2, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_1

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;II)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_4

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-direct {p0, p1, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;II)V

    :cond_5
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;II)V
    .locals 0

    if-eq p2, p3, :cond_1

    if-le p3, p2, :cond_0

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    invoke-virtual {p0, p3, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le p2, p3, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$dq;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$dq;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d()V

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    :cond_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;)V
    .locals 2

    iget-boolean v0, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ig:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p2, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;I)V

    return-void

    :cond_0
    iget p2, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;I)V

    :cond_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V
    .locals 1

    iget v0, p1, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    iget p1, p1, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw(II)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$dq;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_c

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result p1

    if-ge v0, p1, :cond_c

    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/s$p;->dq()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/widget/recycler/s$p;->ox:Z

    iput-boolean p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    iget v1, v1, Lcom/bytedance/sdk/component/widget/recycler/s$p;->d:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    iget v1, v1, Lcom/bytedance/sdk/component/widget/recycler/s$p;->d:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    :goto_0
    return v0

    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    if-ne p1, v3, :cond_a

    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d()V

    return v0

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p1

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    iput-boolean v1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    return v0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p1

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    iput-boolean v0, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    return v0

    :cond_4
    iget-boolean v1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v1

    :goto_1
    iput v1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    if-ge v2, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-ne p1, v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    :cond_9
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->d()V

    :goto_3
    return v0

    :cond_a
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    iput-boolean p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p1

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    sub-int/2addr p1, v1

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p1

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->ox:I

    :goto_4
    return v0

    :cond_c
    iput v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    iput v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    :cond_d
    return v1
.end method

.method private er()V
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->r:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->r:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    return-void
.end method

.method private ia(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->ia(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private iw(II)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iput v2, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    iput p2, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    return-void
.end method

.method private j()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    xor-int/2addr v3, v2

    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    iget-boolean v6, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    move-object v4, p0

    move-object v2, v0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/o;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/ia;Landroid/view/View;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;ZZ)I

    move-result p1

    return p1
.end method

.method private kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->ia(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private mn(II)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    iput v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    iput p2, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    return-void
.end method

.method private no(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 6

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    xor-int/2addr v3, v2

    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    move-object v4, p0

    move-object v2, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/o;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/ia;Landroid/view/View;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Z)I

    move-result p1

    return p1
.end method

.method private o(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 6

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(ZZ)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    xor-int/2addr v3, v2

    invoke-direct {p0, v3, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->le:Z

    move-object v4, p0

    move-object v2, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/o;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/ia;Landroid/view/View;Landroid/view/View;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;Z)I

    move-result p1

    return p1
.end method

.method private ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private wn()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->ox(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public d(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;-><init>(II)V

    return-object v0
.end method

.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq()V

    return-void
.end method

.method public dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->ox(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I
    .locals 7

    iget v0, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    iget v1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;)V

    :cond_1
    iget v1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    iget v3, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->wp:Lcom/bytedance/sdk/component/widget/recycler/s$d;

    :cond_2
    iget-boolean v4, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ig:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_8

    :cond_3
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq()V

    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/s$d;)V

    iget-boolean v4, v3, Lcom/bytedance/sdk/component/widget/recycler/s$d;->d:Z

    if-nez v4, :cond_8

    iget v4, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v5, v3, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    iget v6, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    mul-int v5, v5, v6

    add-int/2addr v5, v4

    iput v5, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget-boolean v4, v3, Lcom/bytedance/sdk/component/widget/recycler/s$d;->ox:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget-object v4, v4, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    if-nez v4, :cond_4

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget v4, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    iget v5, v3, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    sub-int/2addr v1, v5

    :cond_5
    iget v4, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    if-eq v4, v2, :cond_7

    iget v5, v3, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    iget v5, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    if-gez v5, :cond_6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;)V

    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/bytedance/sdk/component/widget/recycler/s$d;->p:Z

    if-eqz v4, :cond_2

    :cond_8
    iget p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->ox()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_1
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->o:Lcom/bytedance/sdk/component/widget/recycler/mp;

    :goto_2
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/mp;->dq(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->no:Lcom/bytedance/sdk/component/widget/recycler/mp;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dq(IIZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->o:Lcom/bytedance/sdk/component/widget/recycler/mp;

    :goto_2
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/bytedance/sdk/component/widget/recycler/mp;->dq(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p4, p0, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->no:Lcom/bytedance/sdk/component/widget/recycler/mp;

    goto :goto_2
.end method

.method public dq(Landroid/view/View;ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->er()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->s(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZLcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput p2, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    iput-boolean v2, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p3, v1, p4, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/s;->mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->wn()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->j()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;III)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_4

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    if-ge v4, p5, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_2

    return-object v3

    :cond_2
    if-nez v1, :cond_3

    move-object v1, v3

    :cond_3
    :goto_2
    add-int/2addr p3, v0

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    return-object v2
.end method

.method public dq(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;I)Lcom/bytedance/sdk/component/widget/recycler/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    iput-object v0, v1, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq:Lcom/bytedance/sdk/component/widget/recycler/ia;

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->jy()V

    return-void
.end method

.method public dq(IILcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    const/4 p2, 0x1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZLcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-virtual {p0, p3, p1, p4}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;)V

    :cond_2
    return-void
.end method

.method public dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/s$p;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    iget-boolean v3, v0, Lcom/bytedance/sdk/component/widget/recycler/s$p;->ox:Z

    iget v0, v0, Lcom/bytedance/sdk/component/widget/recycler/s$p;->dq:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->er()V

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    if-ne v0, v1, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->e:I

    if-ge v3, v4, :cond_4

    if-ltz v0, :cond_4

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0, v2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;->d(II)V

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/s$p;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    iget v0, v0, Lcom/bytedance/sdk/component/widget/recycler/s$p;->dq:I

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->er()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->n()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    iget-boolean v4, v3, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->s:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    if-ne v4, v1, :cond_4

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    if-nez v4, :cond_4

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v4

    if-gt v3, v4, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->i:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    iput-boolean v5, v0, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->s:Z

    :cond_5
    :goto_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v3, v3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->o:I

    if-ltz v3, :cond_6

    move v3, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->mn()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    if-eq v3, v1, :cond_9

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    const/high16 v6, -0x80000000

    if-eq v1, v6, :cond_9

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->p()I

    move-result v3

    iget-object v6, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v6, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->d(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    :goto_2
    sub-int/2addr v3, v1

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ox()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    goto :goto_2

    :goto_3
    if-lez v3, :cond_8

    add-int/2addr v4, v3

    goto :goto_4

    :cond_8
    sub-int/2addr v0, v3

    :cond_9
    :goto_4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->ia()Z

    move-result v3

    iput-boolean v3, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ig:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result v3

    iput-boolean v3, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->kk:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    iget-boolean v3, v1, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->p:Z

    if-eqz v3, :cond_b

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v4, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v3, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v4, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget v1, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    if-lez v1, :cond_a

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v0, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iget v0, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget v6, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v0, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    if-lez v0, :cond_e

    invoke-direct {p0, v4, v3}, Lcom/bytedance/sdk/component/widget/recycler/s;->mn(II)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v0, v3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v3, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    goto :goto_5

    :cond_b
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v0, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v3, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget v0, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    if-lez v0, :cond_c

    add-int/2addr v4, v0

    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(Lcom/bytedance/sdk/component/widget/recycler/s$dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v4, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    iget v4, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    iget v6, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->s:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v4, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v0, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ox:I

    if-lez v0, :cond_d

    invoke-direct {p0, v3, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw(II)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput v0, v1, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->ia:I

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v1, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    :cond_d
    move v3, v4

    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-lez v0, :cond_10

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->i:Z

    xor-int/2addr v0, v4

    if-eqz v0, :cond_f

    invoke-direct {p0, v1, p1, p2, v5}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v0

    invoke-direct {p0, v3, p1, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    add-int/2addr v1, v0

    goto :goto_7

    :cond_f
    invoke-direct {p0, v3, p1, p2, v5}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    move-result v0

    goto :goto_6

    :cond_10
    :goto_7
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;II)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->dq()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq()V

    goto :goto_8

    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->mn:Lcom/bytedance/sdk/component/widget/recycler/s$dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/s$dq;->dq()V

    :goto_8
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->i:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->gh:Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/s$d;)V
    .locals 6

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)Landroid/view/View;

    move-result-object v1

    const/4 p1, 0x1

    if-nez v1, :cond_0

    iput-boolean p1, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->d:Z

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;

    iget-object v0, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->no:Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    iget v4, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ne v0, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->d(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    iget v4, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    if-ne v4, v2, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-ne v0, v4, :cond_5

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p0, v1, v3, v3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-ne v0, p1, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->wp()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ji()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw(Landroid/view/View;)I

    move-result v3

    sub-int v3, v0, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->kx()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    :goto_3
    iget v4, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    if-ne v4, v2, :cond_7

    iget p3, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v2, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    sub-int v2, p3, v2

    :goto_4
    move v4, v3

    move v3, v2

    move v2, v4

    move v5, p3

    move v4, v0

    :goto_5
    move-object v0, p0

    goto :goto_7

    :cond_7
    iget v2, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget p3, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    add-int/2addr p3, v2

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->h()I

    move-result v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/component/widget/recycler/ia;->iw(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->iw:I

    if-ne v4, v2, :cond_9

    iget p3, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v2, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    sub-int v2, p3, v2

    move v4, p3

    move v5, v3

    :goto_6
    move v3, v0

    goto :goto_5

    :cond_9
    iget p3, p3, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->d:I

    iget v2, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->dq:I

    add-int/2addr v2, p3

    move v4, v2

    move v5, v3

    move v2, p3

    goto :goto_6

    :goto_7
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Landroid/view/View;IIII)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->d()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$o;->ox()Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    iput-boolean p1, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->ox:Z

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lcom/bytedance/sdk/component/widget/recycler/s$d;->p:Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;)V
    .locals 1

    iget v0, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->p:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;->p()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk$dq;->d(II)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->k:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;I)V
    .locals 0

    new-instance p2, Lcom/bytedance/sdk/component/widget/recycler/iw;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/component/widget/recycler/iw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;->ox(I)V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$gh;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->r:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->r:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->jy()V

    :cond_0
    return-void
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ia(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->no(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public ia()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->ia()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/ia;->s()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ig()I
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->o(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->mn()Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    :cond_0
    return-void
.end method

.method public kk()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->k()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->le()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->no(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public mn()Lcom/bytedance/sdk/component/widget/recycler/s$ox;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/s$ox;-><init>()V

    return-object v0
.end method

.method public mp()I
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public no()I
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public ox(ILcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->dq:Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->iw()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2, p3}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(IIZLcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iget v4, v2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->mn:I

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/bytedance/sdk/component/widget/recycler/s;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$f;Lcom/bytedance/sdk/component/widget/recycler/s$ox;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_1

    return v1

    :cond_1
    if-le v3, p2, :cond_2

    mul-int p1, v0, p2

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->d:Lcom/bytedance/sdk/component/widget/recycler/ia;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/ia;->dq(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->cd:Lcom/bytedance/sdk/component/widget/recycler/s$ox;

    iput p1, p2, Lcom/bytedance/sdk/component/widget/recycler/s$ox;->o:I

    return p1

    :cond_3
    return v1
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public ox(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->i()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->ia(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->p(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->ox:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public ox()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->kk(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->p:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->s:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/recycler/s$p;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->jy()V

    return-void
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->iw:Lcom/bytedance/sdk/component/widget/recycler/s$p;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->gh:Z

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->i:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    return v3

    :cond_6
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v3

    :cond_8
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->s()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Lcom/bytedance/sdk/component/widget/recycler/s;->dq:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/s;->s()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/s;->o(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public s()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$kk;->gh()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
