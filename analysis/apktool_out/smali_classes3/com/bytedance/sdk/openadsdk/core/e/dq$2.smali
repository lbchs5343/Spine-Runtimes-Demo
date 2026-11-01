.class Lcom/bytedance/sdk/openadsdk/core/e/dq$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e/dq;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/e/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/dq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/e/dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/e/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/dq;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq()V

    :cond_0
    return-void
.end method
