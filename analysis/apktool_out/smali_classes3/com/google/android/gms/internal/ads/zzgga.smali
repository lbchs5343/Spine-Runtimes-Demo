.class public final Lcom/google/android/gms/internal/ads/zzgga;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/bfy;

.field public b:Lcom/google/android/gms/internal/ads/zzggc;

.field public c:Z

.field public final d:Lcom/google/android/gms/internal/ads/zzgfy;

.field public final e:Lcom/google/android/gms/internal/ads/zzggj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfy;->zza:Lcom/google/android/gms/internal/ads/zzgfy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->d:Lcom/google/android/gms/internal/ads/zzgfy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->a:Lg/bfy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->b:Lcom/google/android/gms/internal/ads/zzggc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgga;->e:Lcom/google/android/gms/internal/ads/zzggj;

    return-void
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzgga;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->b:Lcom/google/android/gms/internal/ads/zzggc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzggc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzgga;->c:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->c:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgga;
    .locals 1

    sget-object v0, Lg/bfy;->h:Lg/bfy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->a:Lg/bfy;

    return-object p0
.end method
