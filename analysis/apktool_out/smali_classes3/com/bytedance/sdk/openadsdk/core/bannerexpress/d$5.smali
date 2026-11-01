.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->p:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->p:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->p:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->p:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->q(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->p:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$5;->p:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0
.end method
