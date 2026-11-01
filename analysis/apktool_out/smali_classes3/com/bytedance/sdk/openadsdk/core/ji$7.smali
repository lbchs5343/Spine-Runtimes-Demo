.class Lcom/bytedance/sdk/openadsdk/core/ji$7;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field final synthetic dq:[Lcom/bytedance/sdk/component/kk/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ji;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;[Lcom/bytedance/sdk/component/kk/d;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$7;->p:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$7;->dq:[Lcom/bytedance/sdk/component/kk/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$7;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ji$7;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$7;->dq:[Lcom/bytedance/sdk/component/kk/d;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$7;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$7;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$7$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji$7$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji$7;Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    const-string p1, "pkg_info_failed"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method
