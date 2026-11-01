.class public final Lcom/google/android/gms/internal/ads/zzekt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bmo;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzden;

.field public final b:Lcom/google/android/gms/internal/ads/zzdef;

.field public final c:Lcom/google/android/gms/internal/ads/zzcny;

.field public final d:Lcom/google/android/gms/internal/ads/zzcwk;

.field public final e:Lcom/google/android/gms/internal/ads/zzcxe;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwk;Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzden;Lcom/google/android/gms/internal/ads/zzdef;Lcom/google/android/gms/internal/ads/zzcny;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekt;->d:Lcom/google/android/gms/internal/ads/zzcwk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekt;->e:Lcom/google/android/gms/internal/ads/zzcxe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekt;->a:Lcom/google/android/gms/internal/ads/zzden;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekt;->b:Lcom/google/android/gms/internal/ads/zzdef;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzekt;->c:Lcom/google/android/gms/internal/ads/zzcny;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->c:Lcom/google/android/gms/internal/ads/zzcny;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcny;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->b:Lcom/google/android/gms/internal/ads/zzdef;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdef;->zza(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->d:Lcom/google/android/gms/internal/ads/zzcwk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwk;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->e:Lcom/google/android/gms/internal/ads/zzcxe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxe;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->a:Lcom/google/android/gms/internal/ads/zzden;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzden;->zza()V

    :cond_0
    return-void
.end method
