.class Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/i$ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field final synthetic dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;->ox:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;->ox:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/kx/dq/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/kx/dq/dq;->dq(IJJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kx/dq/d$1$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
