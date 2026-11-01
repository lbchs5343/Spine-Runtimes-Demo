.class public final Lg/gzd;
.super Lg/aub;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdp;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgdp;->zza(Ljava/lang/Object;)Lg/dcy;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final synthetic e(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lg/dcy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->af(Lg/dcy;)V

    return-void
.end method
