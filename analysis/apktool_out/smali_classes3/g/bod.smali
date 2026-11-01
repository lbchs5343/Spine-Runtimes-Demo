.class public final Lg/bod;
.super Lg/eye;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lg/due;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdo;


# direct methods
.method public constructor <init>(Lg/due;Lcom/google/android/gms/internal/ads/zzgdo;)V
    .locals 0

    iput-object p1, p0, Lg/bod;->zza:Lg/due;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lg/bod;->zzb:Lcom/google/android/gms/internal/ads/zzgdo;

    return-void
.end method


# virtual methods
.method public final bridge synthetic _bc()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg/bod;->zzb:Lcom/google/android/gms/internal/ads/zzgdo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgdo;->zza()Lg/dcy;

    move-result-object v1

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfwq;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lg/bod;->zza:Lg/due;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/bod;->zza:Lg/due;

    check-cast p1, Lg/dcy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->af(Lg/dcy;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lg/bod;->zza:Lg/due;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->isDone()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bod;->zzb:Lcom/google/android/gms/internal/ads/zzgdo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
