.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->dq:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->dq:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->dq:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;)Lcom/bytedance/sdk/openadsdk/core/d/p;

    move-result-object v0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->dq:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
