.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Ljava/util/List;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

.field final synthetic ox:Z

.field final synthetic p:Ljava/util/List;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;Lcom/bytedance/sdk/openadsdk/core/r/dq;JZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->d:J

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->ox:Z

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->p:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->iw:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->d:J

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/r/j;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->p:Ljava/util/List;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->ox:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->ox:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->p:Ljava/util/List;

    const/16 v2, 0x6c

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;ILjava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$3;->p:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
