.class Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;->ox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;->mn()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw/dq;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
