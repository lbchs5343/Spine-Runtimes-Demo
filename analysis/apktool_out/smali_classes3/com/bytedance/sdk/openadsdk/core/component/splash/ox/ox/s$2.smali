.class Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ox()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b9e\u65f6\u7269\u6599\u52a0\u8f7d\u6210\u529f isCache "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 2

    const-string v0, "Splash_FullLink"

    const-string v1, "\u5b9e\u65f6\u7269\u6599\u52a0\u8f7d\u5931\u8d25 "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/s$2;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method
