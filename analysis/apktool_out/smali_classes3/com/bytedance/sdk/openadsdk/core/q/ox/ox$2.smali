.class Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;
.super Lcom/bykv/vk/openvk/preload/geckox/o/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

.field final synthetic dq:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->dq:J

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    invoke-super {p0}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq()Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;Z)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/preload/geckox/ig/s;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/ig/s;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;Z)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/preload/geckox/ig/s;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/ig/s;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;Z)Z

    return-void
.end method

.method public dq(Ljava/lang/String;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq(Ljava/lang/String;J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq()Z

    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->dq:J

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p3, v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;ZJLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/o/dq;->dq(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox$2;->d:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    const-wide/16 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;ZJLjava/lang/String;)V

    return-void
.end method
