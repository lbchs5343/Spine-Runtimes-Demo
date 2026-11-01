.class Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/kk/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->d:Lcom/bytedance/sdk/component/kk/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->ox(J)Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->d:Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/d;->mn()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/dq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/h;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->p(J)Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->dq()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->dq:Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->d()J

    move-result-wide v2

    move-wide v4, v0

    move-wide v6, v2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    move-wide v4, v0

    move-wide v6, v4

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/playable/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;JJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->ox:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->d(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->ox:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    const-string v1, "PlayableCache"

    const-string v2, "unzip error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/16 v3, -0x2c0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;)V

    const/4 v0, 0x0

    :catchall_1
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->d:Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/d;->mn()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;->ox:Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;Z)V

    return-void
.end method
