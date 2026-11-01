.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$dq;

.field final synthetic iw:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$dq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->iw:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->ox:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->p:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->ox:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->s:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;->dq(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/ox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/dq;Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->iw:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$dq;

    if-eqz p2, :cond_2

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$2;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq/d$dq;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    return-void
.end method
