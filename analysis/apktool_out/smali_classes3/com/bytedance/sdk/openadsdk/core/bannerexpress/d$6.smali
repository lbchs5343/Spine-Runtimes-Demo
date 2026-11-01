.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/p$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ia(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->p:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->ox()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$6;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ia(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V

    return-void
.end method
