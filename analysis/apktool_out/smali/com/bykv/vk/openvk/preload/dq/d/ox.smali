.class public final Lcom/bykv/vk/openvk/preload/dq/d/ox;
.super Ljava/lang/Object;


# instance fields
.field private final d:Lcom/bykv/vk/openvk/preload/dq/d/d/d;

.field private final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/ia<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/ia<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/preload/dq/d/d/d;->dq()Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox;->d:Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq:Ljava/util/Map;

    return-void
.end method

.method private dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/d/kk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox;->d:Lcom/bykv/vk/openvk/preload/dq/d/d/d;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/preload/dq/d/d/d;->dq(Ljava/lang/reflect/AccessibleObject;)V

    :cond_0
    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$13;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/ox$13;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final dq(Lcom/bykv/vk/openvk/preload/dq/ox/dq;)Lcom/bykv/vk/openvk/preload/dq/d/kk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/dq/ox/dq<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->d:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/ia;

    if-eqz v1, :cond_0

    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/d/ox$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$1;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/ia;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/dq/ia;

    if-eqz v1, :cond_1

    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/d/ox$12;

    invoke-direct {p1, p0, v1, v0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$12;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Lcom/bykv/vk/openvk/preload/dq/ia;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/dq/d/kk;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$14;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$14;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto/16 :goto_0

    :cond_3
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$2;

    invoke-direct {v1, p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$2;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_4
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$3;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$3;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto/16 :goto_0

    :cond_5
    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$4;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$4;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$5;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$5;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto :goto_0

    :cond_7
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$6;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$6;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto :goto_0

    :cond_8
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$7;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$7;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto :goto_0

    :cond_9
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$8;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$8;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto :goto_0

    :cond_a
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/dq/ox/dq;

    move-result-object v1

    iget-object v1, v1, Lcom/bykv/vk/openvk/preload/dq/ox/dq;->dq:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$9;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$9;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto :goto_0

    :cond_b
    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$10;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$10;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;)V

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    new-instance v1, Lcom/bykv/vk/openvk/preload/dq/d/ox$11;

    invoke-direct {v1, p0, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/d/ox$11;-><init>(Lcom/bykv/vk/openvk/preload/dq/d/ox;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/ox;->dq:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
