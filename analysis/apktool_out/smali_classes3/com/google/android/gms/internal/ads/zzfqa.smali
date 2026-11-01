.class public final Lcom/google/android/gms/internal/ads/zzfqa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqa;->b:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqq;->zza()Lcom/google/android/gms/internal/ads/zzfqn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfqn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqn;->zzc(I)Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqm;->zza()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfqk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfqk;->zzb(I)Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfqn;->zzb(Lcom/google/android/gms/internal/ads/zzfqk;)Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfqq;

    new-instance v0, Lg/aga;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqa;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqa;->b:Landroid/os/Looper;

    invoke-direct {v0, v1, v2, p1}, Lg/aga;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzfqq;)V

    iget-object p1, v0, Lg/aga;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v1, v0, Lg/aga;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/aga;->d:Z

    iget-object v0, v0, Lg/aga;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v0}, Lg/adw;->checkAvailabilityAndConnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
