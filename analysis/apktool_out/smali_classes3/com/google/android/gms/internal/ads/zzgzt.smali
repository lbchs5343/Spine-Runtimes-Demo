.class public Lcom/google/android/gms/internal/ads/zzgzt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/google/android/gms/internal/ads/zzhai;

.field public volatile b:Lcom/google/android/gms/internal/ads/zzgxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzhai;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgzm; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgzt;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzt;->zzb()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzt;->zzb()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhaj;->zzbt()Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgzt;->c(Lcom/google/android/gms/internal/ads/zzhai;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhaj;->zzbt()Lcom/google/android/gms/internal/ads/zzhai;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzt;->c(Lcom/google/android/gms/internal/ads/zzhai;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    check-cast v0, Lcom/google/android/gms/internal/ads/ah;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ah;->zza:[B

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhai;->zzaY()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhai;->zzaN()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhai;)Lcom/google/android/gms/internal/ads/zzhai;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzt;->b:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzt;->a:Lcom/google/android/gms/internal/ads/zzhai;

    return-object v0
.end method
