.class public final Lcom/google/android/gms/internal/ads/zzftq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lg/ci;Lg/fdr;)Lg/dcy;
    .locals 3

    new-instance p1, Lg/duy;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lg/duy;->a:Lg/ci;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgey;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfto;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzfto;-><init>(Lg/duy;)V

    check-cast p0, Lg/chw;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/err;

    invoke-direct {v2, v0, v1}, Lg/err;-><init>(Ljava/util/concurrent/Executor;Lg/dyt;)V

    iget-object v0, p0, Lg/chw;->i:Lg/ja;

    invoke-virtual {v0, v2}, Lg/ja;->f(Lg/err;)V

    invoke-virtual {p0}, Lg/chw;->n()V

    return-object p1
.end method
