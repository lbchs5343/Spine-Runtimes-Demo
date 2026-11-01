.class Lcom/bytedance/sdk/openadsdk/core/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/embedapplog/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/mn;->dq(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/mn;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/mn;Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->le()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jy/d;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/fw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ox()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->h()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/jy;->dq()Z

    move-result v0

    return v0
.end method
