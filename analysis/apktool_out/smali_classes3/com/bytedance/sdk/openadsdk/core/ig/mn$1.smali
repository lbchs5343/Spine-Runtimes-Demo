.class Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ig/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/mn;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/mn;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->d(Lcom/bytedance/sdk/openadsdk/core/ig/mn;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "render_sequence"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->ox(Lcom/bytedance/sdk/openadsdk/core/ig/mn;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "render_timeout"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/s/s;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "webview_count"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/s/s;->dq()Lcom/bytedance/sdk/component/adexpress/s/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/s/s;->ox()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "available_cache_count"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->p(Lcom/bytedance/sdk/openadsdk/core/ig/mn;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "render_start"

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
