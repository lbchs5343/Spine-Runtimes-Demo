.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;ILjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->dq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    const/4 v1, 0x1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->dq:I

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(ZI)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq$2;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/dq;Ljava/util/Map;)V

    return-void
.end method
