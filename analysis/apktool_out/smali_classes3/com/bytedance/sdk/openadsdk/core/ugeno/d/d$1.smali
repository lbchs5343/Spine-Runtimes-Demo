.class Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/i$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;->dq([Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;)Lg/eyj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;->s(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;)Lg/eyj;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;)Lg/dlv;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;->p(Lcom/bytedance/sdk/openadsdk/core/ugeno/d/d;)Lg/csh;

    move-result-object v1

    iget-object v1, v1, Lg/csh;->b:Ljava/util/ArrayList;

    check-cast p1, Lg/gsa;

    invoke-virtual {p1, v0, v1}, Lg/gsa;->e(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
