.class public Lg/geh;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public final transient f:Ljava/util/Map;

.field public final synthetic g:Lg/gpx;

.field public transient h:Lg/dhe;

.field public transient i:Lg/gbq;


# direct methods
.method public constructor <init>(Lg/gpx;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lg/geh;->g:Lg/gpx;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lg/geh;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    iget-object v0, p0, Lg/geh;->g:Lg/gpx;

    iget-object v1, v0, Lg/gpx;->d:Ljava/util/Map;

    iget-object v2, p0, Lg/geh;->f:Ljava/util/Map;

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lg/gpx;->zzp()V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {p0, v2}, Lg/geh;->j(Ljava/util/Map$Entry;)Lg/ffy;

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "no calls to next() since the last call to remove()"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzfwq;->zzl(ZLjava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget v2, v0, Lg/gpx;->e:I

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Lg/gpx;->e:I

    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/geh;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lg/geh;->h:Lg/dhe;

    if-nez v0, :cond_0

    new-instance v0, Lg/dhe;

    invoke-direct {v0, p0}, Lg/dhe;-><init>(Lg/geh;)V

    iput-object v0, p0, Lg/geh;->h:Lg/dhe;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lg/geh;->f:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/geh;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lg/geh;->g:Lg/gpx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v3, v0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_1

    new-instance v3, Lg/coo;

    invoke-direct {v3, v2, p1, v0, v1}, Lg/dtv;-><init>(Lg/gpx;Ljava/lang/Object;Ljava/util/List;Lg/dtv;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lg/dtv;

    invoke-direct {v3, v2, p1, v0, v1}, Lg/dtv;-><init>(Lg/gpx;Ljava/lang/Object;Ljava/util/List;Lg/dtv;)V

    :goto_1
    return-object v3
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/geh;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j(Ljava/util/Map$Entry;)Lg/ffy;
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object v1, p0, Lg/geh;->g:Lg/gpx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    instance-of v2, p1, Ljava/util/RandomAccess;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lg/coo;

    invoke-direct {v2, v1, v0, p1, v3}, Lg/dtv;-><init>(Lg/gpx;Ljava/lang/Object;Ljava/util/List;Lg/dtv;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lg/dtv;

    invoke-direct {v2, v1, v0, p1, v3}, Lg/dtv;-><init>(Lg/gpx;Ljava/lang/Object;Ljava/util/List;Lg/dtv;)V

    :goto_0
    new-instance p1, Lg/ffy;

    invoke-direct {p1, v0, v2}, Lg/ffy;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lg/geh;->g:Lg/gpx;

    iget-object v1, v0, Lg/bhi;->b:Lg/dfb;

    if-nez v1, :cond_2

    iget-object v1, v0, Lg/gpx;->d:Ljava/util/Map;

    instance-of v2, v1, Ljava/util/NavigableMap;

    if-eqz v2, :cond_0

    new-instance v2, Lg/esg;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v2, v0, v1}, Lg/esg;-><init>(Lg/gpx;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/SortedMap;

    if-eqz v2, :cond_1

    new-instance v2, Lg/chi;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v2, v0, v1}, Lg/chi;-><init>(Lg/gpx;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lg/dfb;

    invoke-direct {v2, v0, v1}, Lg/dfb;-><init>(Lg/gpx;Ljava/util/Map;)V

    :goto_0
    iput-object v2, v0, Lg/bhi;->b:Lg/dfb;

    return-object v2

    :cond_2
    return-object v1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/geh;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/geh;->g:Lg/gpx;

    iget-object v1, v0, Lg/gpx;->f:Lg/dys;

    invoke-virtual {v1}, Lg/dys;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget v2, v0, Lg/gpx;->e:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lg/gpx;->e:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/geh;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/geh;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lg/geh;->i:Lg/gbq;

    if-nez v0, :cond_0

    new-instance v0, Lg/gbq;

    invoke-direct {v0, p0}, Lg/gbq;-><init>(Lg/geh;)V

    iput-object v0, p0, Lg/geh;->i:Lg/gbq;

    :cond_0
    return-object v0
.end method
