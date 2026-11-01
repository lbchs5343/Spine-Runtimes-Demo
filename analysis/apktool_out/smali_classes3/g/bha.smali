.class public final Lg/bha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwg;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzwg;

.field public b:Z

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zztv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztv;Lcom/google/android/gms/internal/ads/zzwg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bha;->c:Lcom/google/android/gms/internal/ads/zztv;

    iput-object p2, p0, Lg/bha;->a:Lcom/google/android/gms/internal/ads/zzwg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I
    .locals 11

    iget-object v0, p0, Lg/bha;->c:Lcom/google/android/gms/internal/ads/zztv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->e()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lg/bha;->b:Z

    const/4 v3, 0x4

    const/4 v4, -0x4

    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzhg;->zzc(I)V

    return v4

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->zzb()J

    move-result-wide v5

    iget-object v1, p0, Lg/bha;->a:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwg;->zza(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I

    move-result p3

    const/4 v1, -0x5

    const-wide/high16 v7, -0x8000000000000000L

    if-ne p3, v1, :cond_5

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzad;->zzF:I

    const/4 v2, 0x0

    if-nez p3, :cond_3

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzad;->zzG:I

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zztv;->b:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzad;->zzG:I

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzab;->zzG(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzH(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    return v1

    :cond_5
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zztv;->b:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_8

    if-ne p3, v4, :cond_6

    iget-wide v9, p2, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    cmp-long p1, v9, v0

    if-gez p1, :cond_7

    :cond_6
    if-ne p3, v2, :cond_8

    cmp-long p1, v5, v7

    if-nez p1, :cond_8

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z

    if-nez p1, :cond_8

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzhg;->zzc(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/bha;->b:Z

    return v4

    :cond_8
    return p3
.end method

.method public final zzb(J)I
    .locals 1

    iget-object v0, p0, Lg/bha;->c:Lcom/google/android/gms/internal/ads/zztv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lg/bha;->a:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(J)I

    move-result p1

    return p1
.end method

.method public final zzd()V
    .locals 1

    iget-object v0, p0, Lg/bha;->a:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzd()V

    return-void
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lg/bha;->c:Lcom/google/android/gms/internal/ads/zztv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztv;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bha;->a:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwg;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
