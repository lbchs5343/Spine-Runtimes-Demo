.class public abstract Lg/bhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgam;


# instance fields
.field public transient a:Lg/geh;

.field public transient b:Lg/dfb;

.field public transient c:Lg/gbq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgam;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgam;

    invoke-virtual {p0}, Lg/bhi;->zzs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgam;->zzs()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lg/bhi;->zzs()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lg/geh;

    iget-object v0, v0, Lg/geh;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/bhi;->zzs()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lg/geh;

    iget-object v0, v0, Lg/geh;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lg/bhi;->c:Lg/gbq;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lg/gpx;

    new-instance v1, Lg/gbq;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lg/gbq;-><init>(ILjava/io/Serializable;)V

    iput-object v1, p0, Lg/bhi;->c:Lg/gbq;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final zzs()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lg/bhi;->a:Lg/geh;

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lg/gpx;

    iget-object v1, v0, Lg/gpx;->d:Ljava/util/Map;

    instance-of v2, v1, Ljava/util/NavigableMap;

    if-eqz v2, :cond_0

    new-instance v2, Lg/beu;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v2, v0, v1}, Lg/beu;-><init>(Lg/gpx;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/SortedMap;

    if-eqz v2, :cond_1

    new-instance v2, Lg/grn;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v2, v0, v1}, Lg/grn;-><init>(Lg/gpx;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lg/geh;

    invoke-direct {v2, v0, v1}, Lg/geh;-><init>(Lg/gpx;Ljava/util/Map;)V

    :goto_0
    iput-object v2, p0, Lg/bhi;->a:Lg/geh;

    return-object v2

    :cond_2
    return-object v0
.end method
