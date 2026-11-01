.class public Lcom/google/android/gms/internal/ads/zzcao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dcy;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzgfa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfa;->zze()Lcom/google/android/gms/internal/ads/zzgfa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgcy;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->isDone()Z

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcao;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzc(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public final zzd(Ljava/lang/Throwable;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return p1
.end method
