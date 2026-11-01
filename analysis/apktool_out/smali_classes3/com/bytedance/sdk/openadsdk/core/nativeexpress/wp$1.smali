.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;->getShowAdCount()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->d:Ljava/util/List;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/ExpressOnePointFiveView;->getCurrentCompletelyVisibleAdPosition()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->no:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(JILcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;Landroid/view/View;)V

    return-void
.end method

.method public dq(Z)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(JZLjava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/wp;J)J

    return-void
.end method
