.class Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;Lcom/bytedance/sdk/openadsdk/core/r/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;

    const-string p1, "WriteCacheTask"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    return-void
.end method

.method private d()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;)I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    const-string v2, "net_ad_already_shown"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "   reqId: "

    const-string v4, "lqmt"

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f13\u5b58\u5df2show\uff1a rit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->d()Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->ox()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v2

    const-string v5, "materialMeta"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    const-string v2, "net_ad_save_success"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f13\u5b58\u6210\u529f\uff1a rit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->ox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/ds;

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->d()V

    return-void
.end method
