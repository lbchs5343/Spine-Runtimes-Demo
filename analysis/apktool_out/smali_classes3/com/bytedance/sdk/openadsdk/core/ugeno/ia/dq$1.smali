.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->mp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    const-string v0, "template info load fail"

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->kk:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lorg/json/JSONObject;Ljava/util/List;)V

    return-void
.end method
