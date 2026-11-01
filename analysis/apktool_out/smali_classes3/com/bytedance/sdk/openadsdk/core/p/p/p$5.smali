.class Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/p/dq/d;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/p;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->ox:Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->dq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$5;->d:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V

    return-void
.end method
