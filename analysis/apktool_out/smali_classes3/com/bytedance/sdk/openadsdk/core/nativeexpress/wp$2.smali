.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Z

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->dq:Z

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->mn:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-static {p2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->dq:Z

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->d:J

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;Lcom/bytedance/sdk/openadsdk/core/r/dq;Ljava/util/List;ZJ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$2;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x3

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_1
    return-void
.end method
