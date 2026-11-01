.class Lcom/bytedance/sdk/component/widget/recycler/mp$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/widget/recycler/mp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:I

.field dq:I

.field ox:I

.field p:I

.field s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->p:I

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->d:I

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq(II)I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->p:I

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->ox:I

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->s:I

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->d:I

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->s:I

    iget v3, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->ox:I

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public dq(II)I
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x4

    return p1
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->dq:I

    return-void
.end method

.method public dq(IIII)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->d:I

    iput p2, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->ox:I

    iput p3, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->p:I

    iput p4, p0, Lcom/bytedance/sdk/component/widget/recycler/mp$dq;->s:I

    return-void
.end method
