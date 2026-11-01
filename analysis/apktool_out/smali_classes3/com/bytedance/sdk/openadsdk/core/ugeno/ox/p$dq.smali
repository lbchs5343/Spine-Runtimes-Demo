.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

.field dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

.field private ox:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;ILcom/bytedance/sdk/component/adexpress/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;->ox:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;->ox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$dq;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    const/16 v2, 0x89

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;Lcom/bytedance/sdk/component/adexpress/d/o$dq;I)V

    :cond_0
    return-void
.end method
