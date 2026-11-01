.class public Lcom/bytedance/msdk/core/s/dq/dq;
.super Lcom/bytedance/msdk/core/s/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/s/dq/dq$dq;
    }
.end annotation


# static fields
.field private static volatile ia:Lcom/bytedance/msdk/core/s/dq/dq;


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final dq:[Ljava/lang/String;

.field private final iw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final kk:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/core/s/d/ig;",
            ">;"
        }
    .end annotation
.end field

.field private final mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/msdk/core/s/d/ig;",
            ">;>;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/msdk/core/s/dq;-><init>()V

    const-string v0, "unity"

    const-string v1, "ks"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->dq:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->ox:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->s:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->iw:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->mn:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/msdk/core/s/dq/dq$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/s/dq/dq$4;-><init>(Lcom/bytedance/msdk/core/s/dq/dq;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->kk:Ljava/util/Comparator;

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    const-string v5, "TTMediationSDK"

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v13, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v13}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v13

    sget-object v14, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-ne v13, v14, :cond_1

    iget-object v13, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0, v6, v13}, Lcom/bytedance/msdk/core/s/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)Z

    move-result v13

    goto :goto_2

    :cond_1
    sget-object v14, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-eq v13, v14, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const-string v14, ", adSlotId: "

    if-nez v13, :cond_4

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/s/d/ig;->ox()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v13

    iget-object v15, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v13, v2, v15}, Lcom/bytedance/msdk/core/s/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "--==-- \u5e7f\u544a\u590d\u7528:\u590d\u7528\u6210\u529f\uff1a--------"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v12}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "--==-- \u5e7f\u544a\u590d\u7528:AdSlot\u4e0d\u7b26\u5408 -------: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v15}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x6

    goto :goto_3

    :cond_4
    invoke-interface {v3, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "--==-- \u5e7f\u544a\u590d\u7528:\u5e7f\u544a\u8fc7\u671f\u4e86 -------: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v15}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x5

    :goto_3
    if-nez v10, :cond_5

    move-object v10, v12

    :cond_5
    new-instance v14, Lcom/bytedance/msdk/core/s/d/dq;

    invoke-direct {v14}, Lcom/bytedance/msdk/core/s/d/dq;-><init>()V

    iget-object v15, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v15}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/bytedance/msdk/core/s/d/dq;->p(I)V

    iget-object v15, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v15}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/bytedance/msdk/core/s/d/dq;->s(I)V

    iget-object v15, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v15}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/bytedance/msdk/core/s/d/dq;->d(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Lcom/bytedance/msdk/core/s/d/dq;->d(I)V

    iget-object v12, v12, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v12}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v12

    invoke-virtual {v14, v12}, Lcom/bytedance/msdk/core/s/d/dq;->dq(I)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    if-eqz v11, :cond_7

    const/4 v1, 0x3

    return v1

    :cond_7
    if-eqz p3, :cond_8

    if-eqz v10, :cond_8

    iget-object v1, v10, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-direct {v0, v7}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x2

    return v1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:\u5f53\u524d\u6ca1\u6709\u5e7f\u544a\u7f13\u5b58 -------adnSlotId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private d(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "I",
            "Lcom/bytedance/msdk/d/s;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/s/d/ig;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_0

    if-eq v1, p5, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, p4}, Lcom/bytedance/msdk/core/s/dq/dq;->s(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-direct {v5, v1, v3, v4, p3}, Lcom/bytedance/msdk/core/s/d/ig;-><init>(Lcom/bytedance/msdk/d/s;JLcom/bytedance/msdk/api/dq/d;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-direct {v5, v1, v3, v4, p3}, Lcom/bytedance/msdk/core/s/d/ig;-><init>(Lcom/bytedance/msdk/d/s;JLcom/bytedance/msdk/api/dq/d;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static dq()Lcom/bytedance/msdk/core/s/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/core/s/dq/dq;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/core/s/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/core/s/dq/dq;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/core/s/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/msdk/core/s/dq/dq;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/core/s/dq/dq;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/msdk/core/s/dq/dq;->ia:Lcom/bytedance/msdk/core/s/dq/dq;

    return-object v0
.end method

.method private dq(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/s/d/dq;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/s/d/dq;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/s/d/dq;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==-- \u5e7f\u544a\u590d\u7528\uff1aadCannotUseInfo json err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "json error"

    return-object p1

    :cond_3
    const-string p1, "[]"

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/dq/dq;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/dq/dq;Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)Ljava/util/Map;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/msdk/core/s/dq/dq;->d(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/s/dq/dq;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/api/p/no;",
            "Lcom/bytedance/msdk/core/no/o;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v12, "TTMediationSDK"

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0cadSlot\u4e3a\u7a7a -------: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0ccontext\u4e3anull -------: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/no;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result v5

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/mn;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object v4, v3

    goto/16 :goto_3

    :cond_4
    iget-object v0, v1, Lcom/bytedance/msdk/core/s/dq/dq;->dq:[Ljava/lang/String;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v0, v5

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0c"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u4e3a\u5355\u4f8b\u6a21\u5f0f -------: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/bytedance/msdk/core/s/dq/dq;->mn:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/bytedance/msdk/core/s/dq/dq;->mn:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v9, v0

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    const/4 v9, -0x1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u5f00\u59cb -------: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bytedance/msdk/core/mn/mn;->d(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/msdk/core/kk/no;->ox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v0, "TMe"

    const-string v2, "adn \u4ee3\u7801\u4f4d\u9884\u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/bytedance/msdk/core/kk/no;->dq(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v10, Lcom/bytedance/msdk/api/d/d;

    const v2, 0xa051

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v10, v2, v4, v5, v0}, Lcom/bytedance/msdk/api/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x4

    move v7, v9

    const/4 v9, 0x1

    const-wide/16 v11, -0x1

    move-object v2, v3

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v14}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v6, 0x4

    move v9, v7

    const/4 v7, 0x1

    move-object v3, v2

    move v5, v9

    move-object v2, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v3

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v15}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_8
    return-void

    :cond_9
    move-object v4, v3

    move v13, v9

    move-object/from16 v3, p2

    new-instance v5, Lcom/bytedance/msdk/core/s/dq/dq$dq;

    invoke-direct {v5, v1, v3}, Lcom/bytedance/msdk/core/s/dq/dq$dq;-><init>(Lcom/bytedance/msdk/core/s/dq/dq;Lcom/bytedance/msdk/api/dq/d;)V

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq$dq;)V

    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-static/range {v3 .. v11}, Lcom/bytedance/msdk/core/mn/mn;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;Lcom/bytedance/msdk/api/p/no;IIZJ)Ljava/util/Map;

    move-result-object v6

    move-object/from16 v8, p6

    move-object v5, v3

    move-object v7, v4

    move v9, v13

    move-object/from16 v4, p4

    move-object v3, v0

    invoke-virtual/range {v3 .. v9}, Lcom/bytedance/msdk/dq/dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/o;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u5df2\u53d1\u5b8c -------: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    move-object v4, v3

    move-object/from16 v3, p2

    const/4 v0, 0x4

    const/4 v2, 0x1

    invoke-static {v4, v3, v0, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V

    return-void

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u53d6\u6d88\uff0cclassName\u6216wfcBean\u4e3a\u7a7a, className: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wfcBean: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adnSlotId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2, v12}, Lg/dub;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/util/List;Lcom/bytedance/msdk/core/s/d/ig;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/s/d/ig;",
            ">;",
            "Lcom/bytedance/msdk/core/s/d/ig;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/s/d/ig;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    iget-object v1, p2, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public d()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/s/dq/dq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/s/dq/dq$1;-><init>(Lcom/bytedance/msdk/core/s/dq/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I
    .locals 9

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/msdk/core/s/dq;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/s/dq/dq;->d(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/s/d/ig;->ox()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v6

    const-string v7, "\u5e7f\u544a\u590d\u7528"

    invoke-virtual {p0, v5, v6, p2, v7}, Lcom/bytedance/msdk/core/s/dq;->dq(Lcom/bytedance/msdk/core/s/d/ig;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x6

    if-eq v6, v7, :cond_5

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p3, :cond_3

    if-nez p1, :cond_6

    move-object p1, v5

    :cond_6
    new-instance v7, Lcom/bytedance/msdk/core/s/d/dq;

    invoke-direct {v7}, Lcom/bytedance/msdk/core/s/d/dq;-><init>()V

    iget-object v8, v5, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v8}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/msdk/core/s/d/dq;->p(I)V

    iget-object v8, v5, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v8}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/msdk/core/s/d/dq;->s(I)V

    iget-object v8, v5, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v8}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/msdk/core/s/d/dq;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/bytedance/msdk/core/s/d/dq;->d(I)V

    iget-object v5, v5, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v5}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/msdk/core/s/d/dq;->dq(I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    monitor-exit p0

    const/4 p1, 0x3

    return p1

    :cond_8
    if-eqz p3, :cond_9

    if-eqz p1, :cond_9

    :try_start_2
    iget-object p1, p1, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit p0

    const/4 p1, 0x2

    return p1

    :cond_a
    :try_start_3
    const-string p2, "TTMediationSDK"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "--==-- \u5e7f\u544a\u590d\u7528:\u5f53\u524d\u6ca1\u6709\u5e7f\u544a\u7f13\u5b58 -------adnSlotId: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->iw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public declared-synchronized dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/s/d/ig;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x1

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {p0, v4, p1, p3}, Lcom/bytedance/msdk/core/s/dq/dq;->s(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v1, :cond_8

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/s/d/ig;->d()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/s/d/ig;->ox()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v6, v6, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v5, p2, v6}, Lcom/bytedance/msdk/core/s/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_6

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/s/d/ig;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/s/d/ig;->ox()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v5, v5, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v4, p2, v5}, Lcom/bytedance/msdk/core/s/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {p3, v1}, Lcom/bytedance/msdk/core/s/d/ig;->dq(Z)V

    goto :goto_3

    :cond_7
    const-string p2, "TTMediationSDK"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "--==-- \u590d\u7528\u6a21\u5f0f1\uff0c\u4e0d\u4ece\u590d\u7528\u6c60\u79fb\u9664\uff0c\u83b7\u53d6\u7f13\u5b58: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const/4 v1, 0x2

    if-ne p3, v1, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v2, :cond_a

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/s/d/ig;->ox()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    iget-object v5, v1, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v4, p2, v5}, Lcom/bytedance/msdk/core/s/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const-string p2, "TTMediationSDK"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "--==-- \u590d\u7528\u6a21\u5f0f2\uff0c\u4ece\u590d\u7528\u6c60\u79fb\u9664\uff0c\u83b7\u53d6\u7f13\u5b58: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_5
    monitor-exit p0

    return-object v3

    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;ZLcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/bytedance/msdk/api/p/no;",
            "Lcom/bytedance/msdk/core/no/o;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/core/s/dq/dq$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v4, p4

    move-object v7, p5

    move-object v8, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/msdk/core/s/dq/dq$2;-><init>(Lcom/bytedance/msdk/core/s/dq/dq;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ZLjava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/p/no;Lcom/bytedance/msdk/core/no/o;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;I)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->s:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/s/dq/dq;->mn:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/s/d/ig;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/s/d/ig;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/s/d/ig;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p3, :cond_4

    iget-object p2, p0, Lcom/bytedance/msdk/core/s/dq/dq;->p:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/bytedance/msdk/core/s/dq/dq;->kk:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/bytedance/msdk/ia/ir;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "I",
            "Lcom/bytedance/msdk/d/s;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/msdk/core/s/dq/dq$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/msdk/core/s/dq/dq$3;-><init>(Lcom/bytedance/msdk/core/s/dq/dq;Ljava/util/List;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;ILcom/bytedance/msdk/d/s;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public iw(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->ox:Ljava/util/Map;

    const-string v1, "_"

    invoke-static {p1, v1, p2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ox(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->d:Ljava/util/Map;

    const-string v1, "_"

    invoke-static {p1, v1, p2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ox(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->ox:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->iw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lcom/bytedance/msdk/core/s/dq/dq;->d:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    :cond_1
    return p3

    :cond_2
    return v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    return v1

    :cond_0
    iget-object p3, p0, Lcom/bytedance/msdk/core/s/dq/dq;->d:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/no;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/s/dq/dq;->s:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/no/no;

    return-object p1
.end method
