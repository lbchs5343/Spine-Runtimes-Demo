.class public final Lcom/google/android/gms/internal/ads/zzftm;
.super Lg/avb;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/zzftm;


# direct methods
.method public static final zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzftm;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzftm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzftm;->a:Lcom/google/android/gms/internal/ads/zzftm;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftm;

    const-string v2, "paidv2_id"

    const-string v3, "paidv2_creation_time"

    const-string v4, "PaidV2LifecycleImpl"

    invoke-direct {v1, p0, v2, v3, v4}, Lg/avb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzftm;->a:Lcom/google/android/gms/internal/ads/zzftm;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzftm;->a:Lcom/google/android/gms/internal/ads/zzftm;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzh(JZ)Lcom/google/android/gms/internal/ads/zzfth;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v1, Lcom/google/android/gms/internal/ads/zzftm;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lg/avb;->i:Lcom/google/android/gms/internal/ads/zzfti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfti;->zzd()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfth;-><init>()V

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lg/avb;->l(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzj()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/ads/zzftm;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/avb;->f:Lg/g;

    iget-object v2, p0, Lg/avb;->e:Ljava/lang/String;

    iget-object v1, v1, Lg/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/avb;->j(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
