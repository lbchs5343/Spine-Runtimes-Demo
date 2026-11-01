.class Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;
.super Lcom/bytedance/sdk/component/kk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Ljava/io/File;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->ox:Ljava/io/File;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/dq/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/playable/dq;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->dq:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->p(Lcom/bytedance/sdk/openadsdk/core/playable/dq;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;->d(J)Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v0

    const-string v1, "PlayableCache"

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->mn()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->mn()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onResponse: Playable zip download success"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;

    const-string v1, "downloadZip"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/playable/dq$d;Lcom/bytedance/sdk/component/kk/d;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, -0x2bc

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v2, 0x0

    invoke-static {p2, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;)V

    const-string p1, "onResponse: Playable zip download fail"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/playable/dq;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->dq:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->p(Lcom/bytedance/sdk/openadsdk/core/playable/dq;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/16 v1, -0x2bc

    invoke-static {p2, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/playable/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->s:Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/dq$2;->p:Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/playable/dq;Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;Z)V

    const-string p1, "PlayableCache"

    const-string p2, "onFailure: Playable zip download fail"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
