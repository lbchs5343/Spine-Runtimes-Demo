.class Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:I

.field final synthetic p:Ljava/util/Map;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->s:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->ox:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->p:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Z)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->s:Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->ox:I

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;->p:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)I

    return-void
.end method
