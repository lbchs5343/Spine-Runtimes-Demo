.class Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/component/iw/no;)V
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/le/dq/d;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;)V

    :cond_0
    return-void
.end method
