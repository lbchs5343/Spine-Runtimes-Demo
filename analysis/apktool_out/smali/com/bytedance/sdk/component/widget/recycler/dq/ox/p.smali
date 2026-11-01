.class public Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;
.super Ljava/lang/Object;


# instance fields
.field private d:Landroid/view/ViewParent;

.field private dq:Landroid/view/ViewParent;

.field private final ox:Landroid/view/View;

.field private p:Z

.field private s:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    return-void
.end method

.method private dq(ILandroid/view/ViewParent;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->d:Landroid/view/ViewParent;

    return-void

    :cond_1
    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq:Landroid/view/ViewParent;

    return-void
.end method

.method private p(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->d:Landroid/view/ViewParent;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq:Landroid/view/ViewParent;

    return-object p1
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq(I)Z

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq(II)Z

    move-result p1

    return p1
.end method

.method public dq(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/mn;->o(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p:Z

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p:Z

    return v0
.end method

.method public dq(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/ia;->dq(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public dq(FFZ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/ia;->dq(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public dq(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(II)Z
    .locals 4

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/ia;->dq(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq(ILandroid/view/ViewParent;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/ia;->d(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v1

    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public dq(IIII[I)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dq(IIII[II)Z
    .locals 12

    move-object/from16 v0, p5

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move/from16 v9, p6

    invoke-direct {p0, v9}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p(I)Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_5

    aput v2, v0, v2

    aput v2, v0, v1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, v0, v2

    aget v5, v0, v1

    move v10, v4

    move v11, v5

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/ia;->dq(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, v0, v2

    sub-int/2addr p1, v10

    aput p1, v0, v2

    aget p1, v0, v1

    sub-int/2addr p1, v11

    aput p1, v0, v1

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v2
.end method

.method public dq(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dq(II[I[II)Z
    .locals 10

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-direct {p0, p5}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_9

    aput v1, p4, v1

    aput v1, p4, v0

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p4, v1

    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->s:[I

    if-nez p3, :cond_4

    const/4 p3, 0x2

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->s:[I

    :cond_4
    iget-object p3, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->s:[I

    :cond_5
    move-object v6, p3

    aput v1, v6, v1

    aput v1, v6, v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    move v4, p1

    move v5, p2

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/ia;->dq(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    :cond_6
    aget p1, v6, v1

    if-nez p1, :cond_8

    aget p1, v6, v0

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public ox()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox(I)V

    return-void
.end method

.method public ox(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->p(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->ox:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/ia;->dq(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/widget/recycler/dq/ox/p;->dq(ILandroid/view/ViewParent;)V

    :cond_0
    return-void
.end method
