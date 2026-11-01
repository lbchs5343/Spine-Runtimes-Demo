.class final Lcom/bytedance/sdk/openadsdk/core/r/n$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/r/n;->d()Lcom/bytedance/sdk/component/d/dq/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/d/dq/kk$dq;)Lcom/bytedance/sdk/component/d/dq/f;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/dq/kk$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/d/dq/kk$dq;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object p1

    const-string v0, "csj-location-record"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/d/dq/f;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "csj-source-from"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/d/dq/f;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "csj-extra-info"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/d/dq/f;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v0

    const/16 v2, 0x2290

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/r/n$5$1;

    invoke-direct {v3, p0, v0, v5, v8}, Lcom/bytedance/sdk/openadsdk/core/r/n$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/n$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stats_net_block_url"

    invoke-virtual {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/r/n;->dq(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v6, 0x1

    if-le v3, v6, :cond_1

    aget-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v7, v2

    sub-int/2addr v7, v6

    aget-object v1, v2, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :catch_0
    nop

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    :catch_1
    nop

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_0
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v6, v1

    move-object v7, v2

    goto :goto_3

    :catch_2
    nop

    goto :goto_1

    :goto_2
    move-object v2, v1

    goto :goto_1

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/n;->iw()Ljava/util/Set;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/r/n;->dq(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/n$5$2;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/r/n$5$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/n$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stats_net_locations_url"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-object p1
.end method
