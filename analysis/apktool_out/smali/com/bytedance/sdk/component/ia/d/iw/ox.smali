.class public Lcom/bytedance/sdk/component/ia/d/iw/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/d/iw/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ia/d/iw/ox$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ia/d/iw/s;

.field private final dq:Landroid/content/Context;

.field private ox:Lcom/bytedance/sdk/component/ia/dq/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/d/iw/s;Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->dq:Landroid/content/Context;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->d:Lcom/bytedance/sdk/component/ia/d/iw/s;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ia/d/iw/ox;)Lcom/bytedance/sdk/component/ia/dq/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    return-object p0
.end method

.method private static d()Ljava/util/Random;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lg/ahq;->t()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/iw/ox;)Lcom/bytedance/sdk/component/ia/d/iw/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->d:Lcom/bytedance/sdk/component/ia/d/iw/s;

    return-object p0
.end method

.method public static synthetic dq()Ljava/util/Random;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/iw/ox;->d()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/iw/ox;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/iw/ox;->dq(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/d/iw/p;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/bytedance/sdk/component/ia/d/iw/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/iw/ox$dq;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/component/ia/d/iw/ox$dq;-><init>(Lcom/bytedance/sdk/component/ia/d/iw/ox;Lcom/bytedance/sdk/component/ia/d/iw/p;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/ia/d/iw/ox$1;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    move-object v5, p2

    :goto_1
    move-object p2, v5

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->p()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/component/ia/d/iw/ox$1;

    const-string v2, "trackFailedUrls"

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/component/ia/d/iw/ox$1;-><init>(Lcom/bytedance/sdk/component/ia/d/iw/ox;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/ia/d/s/d;->dq(I)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->p()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/bytedance/sdk/component/ia/d/iw/p;

    const/4 v7, 0x5

    const/4 v9, 0x1

    move v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/ia/d/iw/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILorg/json/JSONObject;I)V

    new-instance v6, Lcom/bytedance/sdk/component/ia/d/iw/ox$dq;

    const/4 v11, 0x0

    move-object v7, p0

    move-object v9, p1

    move-object/from16 v10, p4

    move-object v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/bytedance/sdk/component/ia/d/iw/ox$dq;-><init>(Lcom/bytedance/sdk/component/ia/d/iw/ox;Lcom/bytedance/sdk/component/ia/d/iw/p;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/ia/d/iw/ox$1;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->dq:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/iw/ox;->ox:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method
