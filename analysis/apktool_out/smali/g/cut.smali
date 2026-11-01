.class public final Lg/cut;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# instance fields
.field public b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashSet;

.field public final d:Lg/dwg;

.field public e:Ljava/util/HashMap;

.field public f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cut;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lg/cut;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lg/dwg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/cut;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lg/cut;->d:Lg/dwg;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/cut;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    return-object p1
.end method

.method public final h()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/aht;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0, v3, v1}, Lg/cut;->k(Lg/aht;Ljava/util/HashSet;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "java.lang.Object"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v4, Lg/cut;->a:Ljava/util/Set;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    goto :goto_1

    :cond_2
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_1
    iget-object v3, v3, Lg/aht;->c:Lg/cwx;

    invoke-virtual {v3}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lg/cut;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lg/cut;->g(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lg/fov;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Lg/fov;-><init>(I)V

    invoke-static {v0, v4, v5}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iput-object v0, p0, Lg/cut;->b:Ljava/util/HashMap;

    return-void
.end method

.method public final i(Ljava/util/ArrayList;)V
    .locals 7

    iget-object v0, p0, Lg/cut;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lg/cut;->e:Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cci;

    iget-object v1, v0, Lg/cci;->ak:Lg/ve;

    iget-object v1, v1, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lg/aht;

    iget-object v4, v0, Lg/cci;->d:Lg/gqc;

    iget v4, v4, Lg/gqc;->ab:I

    invoke-direct {v3, v4, v1}, Lg/aht;-><init>(ILg/cwx;)V

    sget-object v1, Lg/dpm;->a:Lg/dba;

    iget-object v1, v0, Lg/cci;->af:Lg/cwx;

    if-nez v1, :cond_1

    sget-object v0, Lg/dpm;->b:[Lg/cwx;

    goto :goto_2

    :cond_1
    iget-object v4, v0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    sget-object v5, Lg/cwx;->t:Lg/aog;

    if-ne v1, v5, :cond_2

    sget-object v0, Lg/dpm;->c:[Lg/cwx;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lg/cwx;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v0, v0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    aput-object v6, v4, v5

    add-int/2addr v5, v1

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_2
    iput-object v0, v3, Lg/aht;->e:[Lg/cwx;

    iget-object v0, p0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final j()V
    .locals 8

    new-instance v0, Lg/dpm;

    iget-object v1, p0, Lg/cut;->d:Lg/dwg;

    invoke-direct {v0, v1}, Lg/dpm;-><init>(Lg/dwg;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-class v3, Lg/dpm;

    const-string v4, "/clst/core.jcst"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v0, v3}, Lg/dpm;->i(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    sget-object v3, Lg/dpm;->a:Lg/dba;

    invoke-interface {v3}, Lg/dba;->af()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    iget-object v1, v0, Lg/dpm;->f:[Lg/aht;

    invoke-static {v1}, Lj$/util/stream/Stream$a;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg/dbm;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lg/dbm;-><init>(I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/IntStream;->sum()I

    move-result v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v6, v0, Lg/dpm;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lg/dpm;->f:[Lg/aht;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v6, v4, v2

    const/4 v2, 0x2

    aput-object v7, v4, v2

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const-string v1, "Clst file loaded in {}ms, android api: {}, classes: {}, methods: {}"

    invoke-interface {v3, v1, v4}, Lg/dba;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lg/cut;->e:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Lg/dpm;->f:[Lg/aht;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lg/cut;->e:Ljava/util/HashMap;

    iget-object v0, v0, Lg/dpm;->f:[Lg/aht;

    array-length v2, v0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v3, v0, v5

    iget-object v4, v3, Lg/aht;->c:Lg/cwx;

    invoke-virtual {v4}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lg/gck;

    const-string v1, "Classpath already loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v0, Lg/gck;

    const-string v1, "Can\'t load classpath file: /clst/core.jcst"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
.end method

.method public final k(Lg/aht;Ljava/util/HashSet;)V
    .locals 6

    iget-object p1, p1, Lg/aht;->e:[Lg/cwx;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/aht;

    if-nez v3, :cond_1

    iget-object v4, p0, Lg/cut;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_2

    iget-object v2, v3, Lg/aht;->c:Lg/cwx;

    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3, p2}, Lg/cut;->k(Lg/aht;Ljava/util/HashSet;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final l(Lg/cwx;)Lg/aht;
    .locals 1

    iget-object v0, p0, Lg/cut;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/aht;

    return-object p1
.end method
