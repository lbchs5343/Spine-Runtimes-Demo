.class public Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p/ox/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;
    }
.end annotation


# static fields
.field private static final dq:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "open_ad_sdk_meta_cache_kv"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Ljava/util/concurrent/CopyOnWriteArraySet;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->iw:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    sget-object v6, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$1;->dq:[I

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->p()Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq$d;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    iget-object v9, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->p:Ljava/lang/String;

    iget-wide v10, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq:J

    iget-wide v12, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->d:J

    iget-object v14, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->iw:Ljava/lang/String;

    invoke-direct/range {v8 .. v14}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object v8

    :cond_2
    if-eqz v3, :cond_4

    iget-wide v6, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->mn:J

    iget-wide v8, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->mn:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iget-wide v6, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq:J

    iget-wide v8, v4, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    :cond_4
    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    iget-object v12, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->p:Ljava/lang/String;

    iget-wide v13, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq:J

    iget-wide v0, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->d:J

    iget-object v2, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->iw:Ljava/lang/String;

    move-wide v15, v0

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object v11

    :cond_6
    return-object v2
.end method

.method private ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    :cond_0
    const-string v0, "sp_reward_video_cache_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->ox:Z

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)V
    .locals 4

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->d(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq(Ljava/util/concurrent/CopyOnWriteArraySet;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq(Ljava/util/concurrent/CopyOnWriteArraySet;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)V
    .locals 0

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/mn/dq;->d()V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;ZJLcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)V
    .locals 16

    move-object/from16 v0, p2

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->ox()I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->ox()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v2

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;->ox()I

    move-result v3

    if-lt v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    move-result-object v7

    if-eqz v3, :cond_2

    iget-wide v8, v7, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq:J

    cmp-long v10, v4, v8

    if-gez v10, :cond_1

    :cond_2
    iget-wide v3, v7, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq:J

    move-wide v4, v3

    move-object v3, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_4
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->ox:Ljava/lang/String;

    iget-wide v8, v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->dq:J

    iget-wide v10, v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->d:J

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/s$d;->s:Ljava/lang/String;

    move/from16 v12, p3

    move-wide/from16 v14, p4

    invoke-direct/range {v6 .. v15}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;-><init>(Ljava/lang/String;JJZLjava/lang/String;J)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->iw:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    move-result-object v3

    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->iw:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean p3, v3, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->ox:Z

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public ox(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Z
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/p/ox/ox$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/p/ox/s$dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
