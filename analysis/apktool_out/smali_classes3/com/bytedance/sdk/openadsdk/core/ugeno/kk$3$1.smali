.class Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3$1;->dq:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk$3$1;->dq:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox;->dq(Ljava/lang/String;)V

    return-void
.end method
