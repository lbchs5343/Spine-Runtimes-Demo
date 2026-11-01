.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/video/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
