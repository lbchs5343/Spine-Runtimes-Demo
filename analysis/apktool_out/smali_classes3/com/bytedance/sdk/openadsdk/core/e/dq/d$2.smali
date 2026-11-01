.class Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Ljava/util/concurrent/CountDownLatch;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->p:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->dq:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->ox:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->p:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->d:Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/dq/d$dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$2;->ox:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
