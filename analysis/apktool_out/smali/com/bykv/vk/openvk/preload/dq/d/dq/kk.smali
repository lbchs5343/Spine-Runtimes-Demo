.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/dq/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;,
        Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;
    }
.end annotation


# instance fields
.field private final d:Lcom/bykv/vk/openvk/preload/dq/s;

.field private final dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

.field private final ox:Lcom/bykv/vk/openvk/preload/dq/d/p;

.field private final p:Lcom/bykv/vk/openvk/preload/dq/d/dq/p;

.field private final s:Lcom/bykv/vk/openvk/preload/dq/d/d/d;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/s;Lcom/bykv/vk/openvk/preload/dq/d/p;Lcom/bykv/vk/openvk/preload/dq/d/dq/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/preload/dq/d/d/d;->dq()Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->s:Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->d:Lcom/bykv/vk/openvk/preload/dq/s;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->ox:Lcom/bykv/vk/openvk/preload/dq/d/p;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->p:Lcom/bykv/vk/openvk/preload/dq/d/dq/p;

    return-void
.end method

.method private dq(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/openvk/preload/dq/dq/ox;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/dq/ox;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->d:Lcom/bykv/vk/openvk/preload/dq/s;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/s;->dq(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/dq/dq/ox;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/dq/dq/ox;->d()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;Ljava/lang/Class;)Ljava/util/Map;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    move-object/from16 v14, p3

    move-object v13, v0

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v14, v0, :cond_c

    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    array-length v0, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_b

    aget-object v5, v15, v3

    const/4 v4, 0x1

    invoke-direct {v1, v5, v4}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->dq(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    const/4 v7, 0x1

    invoke-direct {v1, v5, v2}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->dq(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    if-nez v6, :cond_2

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v22, v0

    move/from16 v18, v3

    move-object/from16 p3, v14

    move-object/from16 p2, v15

    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_2
    :goto_2
    iget-object v9, v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->s:Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    invoke-virtual {v9, v5}, Lcom/bykv/vk/openvk/preload/dq/d/d/d;->dq(Ljava/lang/reflect/AccessibleObject;)V

    iget-object v9, v13, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v14, v10}, Lcom/bykv/vk/openvk/preload/dq/d/d;->dq(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v16

    invoke-direct {v1, v5}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->dq(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/16 v17, 0x0

    move-object/from16 p3, v14

    move-object/from16 p2, v15

    move-object/from16 v14, v17

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_9

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v15, :cond_3

    const/4 v6, 0x0

    :cond_3
    move-object/from16 v19, v9

    invoke-static/range {v16 .. v16}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v9

    iget-object v2, v9, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v10

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    move v2, v10

    const/4 v10, 0x0

    :goto_4
    const-class v7, Lcom/bykv/vk/openvk/preload/dq/dq/d;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/bykv/vk/openvk/preload/dq/dq/d;

    move/from16 v22, v0

    if-eqz v7, :cond_5

    iget-object v0, v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    invoke-static {v0, v8, v9, v7}, Lcom/bykv/vk/openvk/preload/dq/d/dq/p;->dq(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;Lcom/bykv/vk/openvk/preload/dq/dq/d;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object/from16 v0, v17

    :goto_5
    move v7, v3

    move v3, v6

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    if-nez v0, :cond_7

    invoke-virtual {v8, v9}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;

    move-result-object v0

    :cond_7
    new-instance v23, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;

    move/from16 v20, v2

    move-object/from16 v2, v18

    const/16 v21, 0x1

    move/from16 v18, v7

    move-object v7, v0

    move-object/from16 v0, v23

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$1;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/bykv/vk/openvk/preload/dq/r;Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;Z)V

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;

    if-nez v14, :cond_8

    move-object v14, v0

    :cond_8
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move v6, v3

    move/from16 v3, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    move/from16 v0, v22

    goto :goto_3

    :cond_9
    move/from16 v22, v0

    move/from16 v18, v3

    const/16 v23, 0x0

    if-nez v14, :cond_a

    :goto_7
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v0, v22

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$d;->ia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 p3, v14

    iget-object v0, v13, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-static {v0, v2, v1}, Lcom/bykv/vk/openvk/preload/dq/d/d;->dq(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v13

    iget-object v14, v13, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    goto/16 :goto_0

    :cond_c
    :goto_8
    return-object v11
.end method

.method private dq(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->ox:Lcom/bykv/vk/openvk/preload/dq/d/p;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0, p2}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->ox:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-wide v1, v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->d:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    const-class v1, Lcom/bykv/vk/openvk/preload/dq/dq/p;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/dq/p;

    const-class v2, Lcom/bykv/vk/openvk/preload/dq/dq/s;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/dq/dq/s;

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/preload/dq/d/p;->dq(Lcom/bykv/vk/openvk/preload/dq/dq/p;Lcom/bykv/vk/openvk/preload/dq/dq/s;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->s:Z

    if-eqz v1, :cond_5

    const-class v1, Lcom/bykv/vk/openvk/preload/dq/dq/dq;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/dq/dq;

    if-eqz v1, :cond_b

    if-eqz p2, :cond_4

    invoke-interface {v1}, Lcom/bykv/vk/openvk/preload/dq/dq/dq;->dq()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lcom/bykv/vk/openvk/preload/dq/dq/dq;->d()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->p:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->ox(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/dq/d/p;->d(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    iget-object p2, v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->iw:Ljava/util/List;

    goto :goto_0

    :cond_8
    iget-object p2, v0, Lcom/bykv/vk/openvk/preload/dq/d/p;->mn:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/ox;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/ox;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/preload/dq/d;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/preload/dq/d;->dq()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ox;

    invoke-virtual {v1, p2}, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/d/kk;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;

    invoke-direct {p0, p1, p2, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk;->dq(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/ox/dq;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/bykv/vk/openvk/preload/dq/d/dq/kk$dq;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/kk;Ljava/util/Map;)V

    return-object v2
.end method
