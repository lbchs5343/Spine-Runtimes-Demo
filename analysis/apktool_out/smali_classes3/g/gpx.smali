.class public final Lg/gpx;
.super Lg/bhi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfzz;
.implements Ljava/io/Serializable;


# instance fields
.field public final transient d:Ljava/util/Map;

.field public transient e:I

.field public final transient f:Lg/dys;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lg/dys;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwq;->zze(Z)V

    iput-object p1, p0, Lg/gpx;->d:Ljava/util/Map;

    iput-object p2, p0, Lg/gpx;->f:Lg/dys;

    return-void
.end method


# virtual methods
.method public final zze()I
    .locals 1

    iget v0, p0, Lg/gpx;->e:I

    return v0
.end method

.method public final zzp()V
    .locals 3

    iget-object v0, p0, Lg/gpx;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lg/gpx;->e:I

    return-void
.end method

.method public final zzq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lg/gpx;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/gpx;->f:Lg/dys;

    invoke-virtual {v1}, Lg/dys;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lg/gpx;->e:I

    add-int/2addr p2, v2

    iput p2, p0, Lg/gpx;->e:I

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lg/gpx;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lg/gpx;->e:I

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
