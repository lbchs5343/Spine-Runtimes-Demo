.class Lcom/bytedance/sdk/openadsdk/core/o/ox/no$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/no;->fw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/no$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/no$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/no$2;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/no;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->iw:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/s;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
