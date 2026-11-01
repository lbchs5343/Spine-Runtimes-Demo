.class public Lcom/bytedance/sdk/openadsdk/core/r/ds;
.super Ljava/lang/Object;


# instance fields
.field private d:[B

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/r/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ds;->ox:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/r/ds;->d:[B

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/core/r/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ds;->ox:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    return-object v0
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object v0
.end method
