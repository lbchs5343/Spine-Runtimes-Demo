.class Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;
.super Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/dq/dq/d;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 9

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x369da

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    const v0, 0x369d8

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v3

    const v0, 0x369d9

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v8

    const-string v2, "onInstalled"

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/api/proto/Bridge;I)V
    .locals 11

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p2

    const v0, 0x369da

    const v1, 0x369d9

    const v2, 0x369d8

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v7

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v10

    const-string v4, "onDownloadPaused"

    invoke-virtual/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v3, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v4

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v6

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->d(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dq()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "onIdle"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq()V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 12

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    const v1, 0x369da

    const v2, 0x369d9

    const v3, 0x369d8

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-interface {p1, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v6

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v8

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v11

    const-string v5, "onDownloadFailed"

    invoke-virtual/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v4, :cond_3

    invoke-interface {p1, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v7

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->ox(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;I)V
    .locals 11

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ia:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p2

    const v0, 0x369da

    const v1, 0x369d9

    const v2, 0x369d8

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v7

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v10

    const-string v4, "onDownloadActive"

    invoke-virtual/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v3, p2, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v4

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v6

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->ox()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/dq;->d(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 8

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "onIdle"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq()V

    :cond_3
    :goto_0
    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Bridge;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result v0

    const v1, 0x369da

    const v2, 0x369d8

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    const v0, 0x369d9

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v7

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v10

    const-string v4, "onDownloadFinished"

    invoke-virtual/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->dq(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ig:Lcom/bytedance/sdk/openadsdk/core/o/d/s;

    if-eqz v0, :cond_3

    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v2

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/o/ox/kk;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->p:Lcom/bytedance/sdk/openadsdk/core/r/p;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/p;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/s;->dq(JLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
