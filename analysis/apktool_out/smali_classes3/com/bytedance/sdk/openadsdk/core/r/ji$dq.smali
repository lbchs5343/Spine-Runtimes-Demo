.class final Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/mp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dq"
.end annotation


# instance fields
.field private d:I

.field private dq:I

.field private ox:Ljava/lang/String;

.field private p:D


# direct methods
.method public constructor <init>(IILjava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->dq:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->d:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->ox:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->p:D

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->d:I

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->dq:I

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public p()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->p:D

    return-wide v0
.end method

.method public s()Z
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->dq:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;->ox:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
