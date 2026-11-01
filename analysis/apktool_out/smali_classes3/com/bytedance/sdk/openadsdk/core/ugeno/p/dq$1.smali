.class Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/le/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;)Lcom/bytedance/sdk/openadsdk/core/ig/s;

    move-result-object p1

    const-string p2, "ad meta info load fail"

    const/4 v0, -0x3

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/p/dq;Lorg/json/JSONObject;)V

    return-void
.end method
