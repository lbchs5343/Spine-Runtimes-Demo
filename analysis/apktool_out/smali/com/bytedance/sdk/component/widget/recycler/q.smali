.class Lcom/bytedance/sdk/component/widget/recycler/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/widget/recycler/q$d;,
        Lcom/bytedance/sdk/component/widget/recycler/q$dq;
    }
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field final dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq<",
            "Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;",
            "Lcom/bytedance/sdk/component/widget/recycler/q$dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    new-instance v0, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->dq(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-eqz v1, :cond_4

    iget v2, v1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v0, p2

    and-int/2addr v0, v2

    iput v0, v1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->ox(I)Ljava/lang/Object;

    invoke-static {v1}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/q$dq;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/q;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d()V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq()Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    iput-object p2, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    return-void
.end method

.method public dq(J)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;->dq(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    return-object p1
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;->ox()V

    return-void
.end method

.method public dq(JLcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;->d(JLjava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq()Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    iget p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/q$d;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->dq(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->ox(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    iget v3, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/widget/recycler/q$d;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    iget-object v3, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/widget/recycler/q$d;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    invoke-interface {p1, v1, v3, v4}, Lcom/bytedance/sdk/component/widget/recycler/q$d;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    iget-object v3, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    iget-object v4, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    invoke-interface {p1, v1, v3, v4}, Lcom/bytedance/sdk/component/widget/recycler/q$d;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    goto :goto_1

    :cond_3
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    iget-object v3, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    iget-object v4, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    invoke-interface {p1, v1, v3, v4}, Lcom/bytedance/sdk/component/widget/recycler/q$d;->ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    goto :goto_1

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    iget-object v3, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/bytedance/sdk/component/widget/recycler/q$d;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    goto :goto_1

    :cond_5
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->d:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    iget-object v4, v2, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    invoke-interface {p1, v1, v3, v4}, Lcom/bytedance/sdk/component/widget/recycler/q$d;->d(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V

    :cond_6
    :goto_1
    invoke-static {v2}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/q$dq;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ia(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/q;->iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V

    return-void
.end method

.method public iw(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    :cond_0
    return-void
.end method

.method public mn(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;->ox(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->d:Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/ox;->dq(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq(Lcom/bytedance/sdk/component/widget/recycler/q$dq;)V

    :cond_2
    return-void
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/q;->dq(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;I)Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    move-result-object p1

    return-object p1
.end method

.method public ox(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq()Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->ox:Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$iw$d;

    iget p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    return-void
.end method

.method public p(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s(Lcom/bytedance/sdk/component/widget/recycler/RecyclerView$k;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq()Lcom/bytedance/sdk/component/widget/recycler/q$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/q;->dq:Lcom/bytedance/sdk/component/widget/recycler/dq/d/dq;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/d/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/bytedance/sdk/component/widget/recycler/q$dq;->dq:I

    return-void
.end method
