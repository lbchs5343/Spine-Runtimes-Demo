.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;->dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Lcom/bytedance/sdk/component/no/dq/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->dq:Lcom/bytedance/sdk/component/no/dq/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->dq:Lcom/bytedance/sdk/component/no/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->d:Ljava/util/Map;

    const-string v1, "is_open_web_page"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->dq:Lcom/bytedance/sdk/component/no/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/kk$1;->d:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    return-void
.end method
