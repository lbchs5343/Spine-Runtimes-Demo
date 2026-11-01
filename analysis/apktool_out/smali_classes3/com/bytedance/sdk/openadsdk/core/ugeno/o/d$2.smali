.class Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->ig(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ig/s;

    move-result-object p1

    const-string v0, "template info load fail"

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->mp(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->q(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->jy(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;Lorg/json/JSONObject;Ljava/util/List;)V

    return-void
.end method
