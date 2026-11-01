.class public Lcom/bytedance/sdk/component/ia/d/p/d/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p2, p1, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq:I

    iput p2, p0, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static dq(II)Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    const-wide/32 v1, 0xa4cb800

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;-><init>(IIJ)V

    return-object v0
.end method

.method public static dq(IIJ)Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;-><init>(IIJ)V

    return-object v0
.end method

.method public static ox()Lcom/bytedance/sdk/component/ia/d/p/d/dq;
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    const/16 v1, 0x64

    const-wide/32 v2, 0xa4cb800

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;-><init>(IIJ)V

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->d:I

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq:I

    return v0
.end method
