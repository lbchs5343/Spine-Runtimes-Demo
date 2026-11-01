.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Ljava/util/List;)Ljava/util/List;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->d:J

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;J)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method
