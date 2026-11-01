.class final Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;
.super Lcom/bykv/vk/openvk/preload/dq/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "dq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/dq/r<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/bykv/vk/openvk/preload/dq/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic dq:Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;

.field private final ox:Lcom/bykv/vk/openvk/preload/dq/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final p:Lcom/bykv/vk/openvk/preload/dq/d/kk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;Lcom/bykv/vk/openvk/preload/dq/iw;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/dq/r;Lcom/bykv/vk/openvk/preload/dq/d/kk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/dq/iw;",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/dq/r<",
            "TV;>;",
            "Lcom/bykv/vk/openvk/preload/dq/d/kk<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/r;-><init>()V

    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;

    invoke-direct {p1, p2, p4, p3}, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;

    invoke-direct {p1, p2, p6, p5}, Lcom/bykv/vk/openvk/preload/dq/d/dq/mp;-><init>(Lcom/bykv/vk/openvk/preload/dq/iw;Lcom/bykv/vk/openvk/preload/dq/r;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    iput-object p7, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->p:Lcom/bykv/vk/openvk/preload/dq/d/kk;

    return-void
.end method


# virtual methods
.method public final synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->kk:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->no()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->p:Lcom/bykv/vk/openvk/preload/dq/d/kk;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/preload/dq/d/kk;->dq()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/p/d;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq()V

    :goto_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v2, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->d()V

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->ox()V

    :goto_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/d/iw;->dq:Lcom/bykv/vk/openvk/preload/dq/d/iw;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/d/iw;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v2, p1}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/dq;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/bykv/vk/openvk/preload/dq/cd;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bykv/vk/openvk/preload/dq/cd;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/dq;->p()V

    return-object v1
.end method

.method public final synthetic dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->s()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->dq:Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;

    iget-boolean v0, v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn;->dq:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->d:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Ljava/lang/Object;)Lcom/bykv/vk/openvk/preload/dq/no;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v4, v5, Lcom/bykv/vk/openvk/preload/dq/kk;

    if-nez v4, :cond_4

    instance-of v4, v5, Lcom/bykv/vk/openvk/preload/dq/q;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/preload/dq/no;

    invoke-static {v3, p1}, Lcom/bykv/vk/openvk/preload/dq/d/no;->dq(Lcom/bykv/vk/openvk/preload/dq/no;Lcom/bykv/vk/openvk/preload/dq/p/ox;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->d()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->d()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->ox()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/preload/dq/no;

    instance-of v4, v3, Lcom/bykv/vk/openvk/preload/dq/f;

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/dq/no;->mn()Lcom/bykv/vk/openvk/preload/dq/f;

    move-result-object v3

    iget-object v4, v3, Lcom/bykv/vk/openvk/preload/dq/f;->dq:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/dq/f;->dq()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_8
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/dq/f;->iw()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/preload/dq/f;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    instance-of v3, v3, Lcom/bykv/vk/openvk/preload/dq/mp;

    if-eqz v3, :cond_c

    const-string v3, "null"

    :goto_6
    invoke-virtual {p1, v3}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->dq(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/dq/p/ox;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/mn$dq;->ox:Lcom/bykv/vk/openvk/preload/dq/r;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/bykv/vk/openvk/preload/dq/r;->dq(Lcom/bykv/vk/openvk/preload/dq/p/ox;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/dq/p/ox;->p()Lcom/bykv/vk/openvk/preload/dq/p/ox;

    return-void
.end method
