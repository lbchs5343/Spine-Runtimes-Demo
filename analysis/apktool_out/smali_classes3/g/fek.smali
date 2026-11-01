.class public final Lg/fek;
.super Lg/bwr;
.source "SourceFile"


# instance fields
.field public final a:Lg/ky;

.field public b:Lcom/google/android/gms/internal/ads/zzgxk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/ky;

    invoke-direct {v0, p1}, Lg/ky;-><init>(Lcom/google/android/gms/internal/ads/zzgxp;)V

    iput-object v0, p0, Lg/fek;->a:Lg/ky;

    invoke-virtual {p0}, Lg/fek;->c()Lcom/google/android/gms/internal/ads/zzgxk;

    move-result-object p1

    iput-object p1, p0, Lg/fek;->b:Lcom/google/android/gms/internal/ads/zzgxk;

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/zzgxk;
    .locals 2

    iget-object v0, p0, Lg/fek;->a:Lg/ky;

    invoke-virtual {v0}, Lg/ky;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lg/ky;->d()Lcom/google/android/gms/internal/ads/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzs()Lcom/google/android/gms/internal/ads/zzgxk;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lg/fek;->b:Lcom/google/android/gms/internal/ads/zzgxk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lg/fek;->b:Lcom/google/android/gms/internal/ads/zzgxk;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxk;->zza()B

    move-result v0

    iget-object v1, p0, Lg/fek;->b:Lcom/google/android/gms/internal/ads/zzgxk;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lg/fek;->c()Lcom/google/android/gms/internal/ads/zzgxk;

    move-result-object v1

    iput-object v1, p0, Lg/fek;->b:Lcom/google/android/gms/internal/ads/zzgxk;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
