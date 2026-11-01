.class Lcom/bytedance/sdk/openadsdk/core/ji$16;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ji;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/h$ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$16;->d:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$16;->dq:Lcom/bytedance/sdk/openadsdk/core/h$ox;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$16;->dq:Lcom/bytedance/sdk/openadsdk/core/h$ox;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h$ox;->dq(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$16;->dq:Lcom/bytedance/sdk/openadsdk/core/h$ox;

    if-eqz p1, :cond_0

    const/16 v0, 0x259

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/h$ox;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
