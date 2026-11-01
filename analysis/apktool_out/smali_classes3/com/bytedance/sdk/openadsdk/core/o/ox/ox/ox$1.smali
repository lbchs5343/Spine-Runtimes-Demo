.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->dq:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->dq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    return-void
.end method
