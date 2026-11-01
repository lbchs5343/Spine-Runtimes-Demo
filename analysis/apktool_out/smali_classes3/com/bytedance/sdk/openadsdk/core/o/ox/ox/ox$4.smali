.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;->dq()V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/iw;->d:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pop_up_download"

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ox()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pop_up_cancel"

    invoke-static {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
