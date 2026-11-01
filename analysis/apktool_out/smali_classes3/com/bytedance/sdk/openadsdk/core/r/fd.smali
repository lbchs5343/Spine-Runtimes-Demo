.class public Lcom/bytedance/sdk/openadsdk/core/r/fd;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:I

.field private ox:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->p:I

    return-void
.end method

.method private iw()I
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private s()I
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->d:I

    return v0
.end method

.method public d(I)V
    .locals 1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r/fd;->iw()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->d:I

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x10

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->d:I

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->dq:I

    return v0
.end method

.method public dq(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->dq:I

    return-void

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->dq:I

    return-void
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->ox:I

    return v0
.end method

.method public ox(I)V
    .locals 1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r/fd;->s()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->ox:I

    return-void

    :cond_1
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->dq:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x10

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->ox:I

    return-void

    :cond_3
    :goto_1
    const/16 p1, 0x1e

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->ox:I

    return-void
.end method

.method public p()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/fd;->p:I

    return-void
.end method
