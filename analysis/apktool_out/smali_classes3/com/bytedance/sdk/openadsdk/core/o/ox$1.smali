.class Lcom/bytedance/sdk/openadsdk/core/o/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(ILjava/util/Map;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:I

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox;ILjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deeplink_success_realtime"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;I)V

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->dq:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->d:Ljava/util/Map;

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)Z

    const-string v0, "WebHelper"

    const-string v1, "openDetailPage() -> mContext.startActivity(intent) fail :"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deeplink_fail_realtime"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox;I)V

    return-void
.end method
