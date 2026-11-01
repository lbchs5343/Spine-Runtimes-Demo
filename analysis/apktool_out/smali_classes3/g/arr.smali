.class public final Lg/arr;
.super Lg/ctw;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/dqu;


# direct methods
.method public constructor <init>(Lg/dqu;)V
    .locals 0

    iput-object p1, p0, Lg/arr;->a:Lg/dqu;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lg/ctw;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    iget-object v0, p0, Lg/arr;->a:Lg/dqu;

    invoke-virtual {v0}, Lg/aiq;->n()V

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v1, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/clv;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Lg/clv;->j()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v1, p1}, Lg/bcp;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v1, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/dqu;->q:Lg/tl;

    invoke-virtual {v1, p1}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/clv;

    invoke-virtual {v0, p1, v1}, Lg/dqu;->as(Ljava/lang/String;Lg/clv;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lg/dqu;->ao(Ljava/lang/String;)V

    :goto_0
    iget-object v0, v0, Lg/dqu;->o:Lg/arr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, v0, Lg/ctw;->i:Ljava/lang/Object;

    check-cast v2, Lg/cuf;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v0, Lg/aoy;

    iget-object v0, v0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v3, "map.entries"

    invoke-static {v0, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    monitor-exit v2

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/eqg;

    return-object p1

    :goto_2
    monitor-exit v2

    throw p1

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method
