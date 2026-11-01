.class Lcom/bytedance/sdk/openadsdk/core/ugeno/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/i$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;->dq(Lg/dry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;

.field final synthetic dq:Lg/dry;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;Lg/dry;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw$1;->dq:Lg/dry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/iw$1;->dq:Lg/dry;

    if-eqz v0, :cond_0

    check-cast v0, Lg/emr;

    invoke-virtual {v0, p1}, Lg/emr;->aa(I)V

    :cond_0
    return-void
.end method
