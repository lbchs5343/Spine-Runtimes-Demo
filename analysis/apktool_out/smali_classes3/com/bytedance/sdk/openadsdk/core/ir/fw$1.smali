.class final Lcom/bytedance/sdk/openadsdk/core/ir/fw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/le/dq/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ir/fw;->dq(Lcom/bytedance/sdk/openadsdk/mp/d;IILcom/bytedance/sdk/openadsdk/core/ir/fw$dq;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/no;Lcom/bytedance/sdk/openadsdk/core/le/dq/d;)V
    .locals 1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/le/dq/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ir/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/component/iw/no;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ir/fw$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;->dq()V

    :cond_1
    return-void
.end method
