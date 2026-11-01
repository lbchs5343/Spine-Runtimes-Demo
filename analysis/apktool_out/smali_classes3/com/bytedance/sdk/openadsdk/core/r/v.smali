.class public Lcom/bytedance/sdk/openadsdk/core/r/v;
.super Ljava/lang/Object;


# instance fields
.field private d:D

.field private dq:I

.field private ox:I

.field private p:I

.field private s:I


# direct methods
.method public constructor <init>(IDII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->dq:I

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->d:D

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->ox:I

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->p:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->dq:I

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->p:I

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->s:I

    return-void
.end method

.method public ox()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->d:D

    return-wide v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/v;->ox:I

    return v0
.end method
