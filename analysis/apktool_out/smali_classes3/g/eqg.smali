.class public final Lg/eqg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/cis;

.field public final b:Lg/duw;

.field public c:Lg/dpa;

.field public final d:Lg/dzh;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lg/duw;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/duw;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/eqg;->b:Lg/duw;

    iget-object v1, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Lg/dpa;

    invoke-virtual {v1}, Lg/dpa;->u()Lg/dpa;

    move-result-object v1

    iput-object v1, p0, Lg/eqg;->c:Lg/dpa;

    new-instance v1, Lg/dzh;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lg/dzh;-><init>(I)V

    iput-object v1, p0, Lg/eqg;->d:Lg/dzh;

    new-instance v1, Lg/cis;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lg/cis;->a:Ljava/lang/Object;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lg/cis;->b:Ljava/lang/Object;

    iput-object v1, p0, Lg/eqg;->a:Lg/cis;

    new-instance v1, Lg/ece;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/ece;-><init>(Lg/eqg;I)V

    iget-object v0, v0, Lg/duw;->f:Ljava/lang/Object;

    check-cast v0, Lg/gyf;

    iget-object v2, v0, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "internal.registerCallback"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg/ece;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/ece;-><init>(Lg/eqg;I)V

    iget-object v0, v0, Lg/gyf;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "internal.eventLogger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(Lg/kh;)V
    .locals 7

    iget-object v0, p0, Lg/eqg;->b:Lg/duw;

    :try_start_0
    iget-object v1, v0, Lg/duw;->d:Ljava/lang/Object;

    check-cast v1, Lg/dpa;

    invoke-virtual {v1}, Lg/dpa;->u()Lg/dpa;

    move-result-object v1

    iput-object v1, p0, Lg/eqg;->c:Lg/dpa;

    invoke-virtual {p1}, Lg/kh;->c()Lg/cwe;

    move-result-object v1

    iget-object v2, p0, Lg/eqg;->c:Lg/dpa;

    const/4 v3, 0x0

    new-array v4, v3, [Lg/aqu;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/aqu;

    invoke-virtual {v0, v2, v1}, Lg/duw;->l(Lg/dpa;[Lg/aqu;)Lg/gey;

    move-result-object v1

    instance-of v1, v1, Lg/enl;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lg/kh;->b()Lg/gjt;

    move-result-object p1

    invoke-virtual {p1}, Lg/gjt;->c()Lg/cwe;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/evv;

    invoke-virtual {v1}, Lg/evv;->c()Lg/cwe;

    move-result-object v2

    invoke-virtual {v1}, Lg/evv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/aqu;

    iget-object v5, p0, Lg/eqg;->c:Lg/dpa;

    const/4 v6, 0x1

    new-array v6, v6, [Lg/aqu;

    aput-object v4, v6, v3

    invoke-virtual {v0, v5, v6}, Lg/duw;->l(Lg/dpa;[Lg/aqu;)Lg/gey;

    move-result-object v4

    instance-of v5, v4, Lg/byt;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lg/eqg;->c:Lg/dpa;

    invoke-virtual {v5, v1}, Lg/dpa;->l(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Lg/dpa;->k(Ljava/lang/String;)Lg/gey;

    move-result-object v5

    instance-of v6, v5, Lg/fdk;

    if-eqz v6, :cond_3

    check-cast v5, Lg/fdk;

    :goto_1
    if-eqz v5, :cond_2

    iget-object v6, p0, Lg/eqg;->c:Lg/dpa;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lg/fdk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Rule function is undefined: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid function name: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rule definition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Program loading failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    new-instance v0, Lg/egg;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final f(Lg/guq;)Z
    .locals 4

    iget-object v0, p0, Lg/eqg;->d:Lg/dzh;

    :try_start_0
    iput-object p1, v0, Lg/dzh;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Lg/guq;->d()Lg/guq;

    move-result-object p1

    iput-object p1, v0, Lg/dzh;->f:Ljava/lang/Object;

    iget-object p1, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lg/eqg;->b:Lg/duw;

    iget-object p1, p1, Lg/duw;->e:Ljava/lang/Object;

    check-cast p1, Lg/dpa;

    new-instance v1, Lg/hbz;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    const-string v2, "runtime.counter"

    invoke-virtual {p1, v2, v1}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    iget-object p1, p0, Lg/eqg;->a:Lg/cis;

    iget-object v1, p0, Lg/eqg;->c:Lg/dpa;

    invoke-virtual {v1}, Lg/dpa;->u()Lg/dpa;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lg/cis;->c(Lg/dpa;Lg/dzh;)V

    iget-object p1, v0, Lg/dzh;->f:Ljava/lang/Object;

    check-cast p1, Lg/guq;

    iget-object v1, v0, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v1, Lg/guq;

    invoke-virtual {p1, v1}, Lg/guq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    new-instance v0, Lg/egg;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
