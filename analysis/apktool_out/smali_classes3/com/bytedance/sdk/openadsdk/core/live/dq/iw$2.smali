.class Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$2;
.super Lcom/bytedance/sdk/openadsdk/core/live/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$2;->d:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$2;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/live/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "requestDyAuth back:"

    const-string v1, "TTLiveSDkBridge"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v0, "requestDyAuth result:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$2;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;->dq(Z)V

    return-void
.end method
