.class final Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;JLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->d:J

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->ox:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->eb()Lcom/bytedance/sdk/openadsdk/core/r/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->iw()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v2

    :cond_3
    sget-object v3, Lg/cvc;->CLICK:Lg/cvc;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->dq()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->d(I)Lg/dnf;

    move-result-object v1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v6

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(I)Lg/dyp;

    move-result-object v6

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->d:J

    new-instance v9, Lg/ajh;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-wide v4, v9, Lg/ajh;->c:J

    iput-object v0, v9, Lg/ajh;->e:Ljava/lang/String;

    iput-object v2, v9, Lg/ajh;->f:Ljava/lang/String;

    iput-object v1, v9, Lg/ajh;->a:Lg/dnf;

    iput-object v6, v9, Lg/ajh;->b:Lg/dyp;

    iput-object v3, v9, Lg/ajh;->d:Lg/cvc;

    iput-wide v7, v9, Lg/ajh;->g:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v9, v0}, Lg/cux;->ae(Lg/ajh;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tob_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq$1;->ox:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/mn;->d(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_3
    const-string v1, "TTLiveVideoUtil"

    const-string v2, "Throwable : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
