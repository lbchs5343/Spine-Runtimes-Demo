.class Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/io;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/io;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->p:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/io;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/io;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/io;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->p:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->d:Ljava/lang/String;

    const-string v2, "deeplink_success_realtime"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->p:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->d:Ljava/lang/String;

    const-string v2, "open_url_app"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->p:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/io;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/io;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$3;->ox:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;->d()V

    :cond_0
    return-void
.end method
