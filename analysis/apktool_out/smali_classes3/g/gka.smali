.class public final Lg/gka;
.super Lg/bke;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lg/ri;

.field public final synthetic c:Lg/ehe;

.field public volatile d:Lg/bke;

.field public final synthetic e:Z

.field public final synthetic f:Lg/eem;


# direct methods
.method public constructor <init>(Lg/ehe;ZLg/eem;Lg/ri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gka;->c:Lg/ehe;

    iput-boolean p2, p0, Lg/gka;->e:Z

    iput-object p3, p0, Lg/gka;->f:Lg/eem;

    iput-object p4, p0, Lg/gka;->b:Lg/ri;

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 9

    iget-boolean v0, p0, Lg/gka;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    return-void

    :cond_0
    iget-object v0, p0, Lg/gka;->d:Lg/bke;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lg/gka;->f:Lg/eem;

    iget-object v1, p0, Lg/gka;->c:Lg/ehe;

    iget-object v2, p0, Lg/gka;->b:Lg/ri;

    iget-object v3, v0, Lg/eem;->e:Lg/qd;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lg/qd;->c:Lj$/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lg/qd;->a:Lg/eiw;

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v2, Lg/ri;->a:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dsb;

    if-eqz v6, :cond_3

    if-ne v6, v1, :cond_7

    goto :goto_0

    :cond_3
    const-class v6, Lg/esz;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lg/esz;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Lg/esz;->value()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lg/dsb;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    iget-object v7, v3, Lg/qd;->b:Lg/ja;

    new-instance v8, Lg/ri;

    invoke-direct {v8, v6}, Lg/ri;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v7, v8}, Lg/ja;->j(Lg/ri;)Lg/gtx;

    move-result-object v6

    invoke-interface {v6}, Lg/gtx;->ao()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dsb;

    invoke-virtual {v4, v5, v6}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/dsb;

    if-eqz v4, :cond_6

    move-object v6, v4

    :cond_6
    if-ne v6, v1, :cond_7

    :goto_0
    move-object v1, v3

    :cond_7
    :goto_1
    iget-object v3, v0, Lg/eem;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/dsb;

    if-nez v4, :cond_9

    if-ne v5, v1, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v5, v0, v2}, Lg/dsb;->j(Lg/eem;Lg/ri;)Lg/bke;

    move-result-object v5

    if-eqz v5, :cond_8

    move-object v0, v5

    goto :goto_3

    :cond_a
    if-nez v4, :cond_b

    invoke-virtual {v0, v2}, Lg/eem;->n(Lg/ri;)Lg/bke;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lg/gka;->d:Lg/bke;

    :goto_4
    invoke-virtual {v0, p1, p2}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GSON cannot serialize or deserialize "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
