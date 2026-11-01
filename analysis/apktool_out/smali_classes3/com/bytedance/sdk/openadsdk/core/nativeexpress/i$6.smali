.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->jy(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->f(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->mp(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$6;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->q(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0
.end method
