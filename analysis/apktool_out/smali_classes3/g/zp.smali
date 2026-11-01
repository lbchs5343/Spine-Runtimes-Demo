.class public final Lg/zp;
.super Lcom/google/android/gms/internal/ads/zzflu;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfmo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfmo;Lcom/google/android/gms/internal/ads/zzgfa;)V
    .locals 0

    iput-object p1, p0, Lg/zp;->b:Lcom/google/android/gms/internal/ads/zzfmo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzflu;-><init>(Lcom/google/android/gms/internal/ads/zzgfa;)V

    return-void
.end method


# virtual methods
.method public final c(Lg/abz;)V
    .locals 5

    iget-object v0, p0, Lg/zp;->b:Lcom/google/android/gms/internal/ads/zzfmo;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfmo;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget p1, p1, Lg/abz;->zza:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/16 v3, 0xa

    if-eq p1, v3, :cond_0

    const/16 v3, 0xb

    if-eq p1, v3, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfmo;->o(Lcom/google/android/gms/internal/ads/zzfmo;Z)V

    return-void

    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfmo;->f:Lg/ghd;

    iget v1, p1, Lg/ghd;->zzb:I

    iget-object p1, p1, Lg/ghd;->zza:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preloading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", for adUnitId:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Ad load failed. Stop preloading due to non-retriable error:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->k(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfmo;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
