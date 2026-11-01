.class public final synthetic Lcom/google/android/gms/internal/ads/zzvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/fkd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzadq;


# direct methods
.method public synthetic constructor <init>(Lg/fkd;Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvl;->zza:Lg/fkd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzb:Lcom/google/android/gms/internal/ads/zzadq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zza:Lg/fkd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzb:Lcom/google/android/gms/internal/ads/zzadq;

    iget-object v2, v0, Lg/fkd;->d:Lcom/google/android/gms/internal/ads/zzafv;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzadp;

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    :goto_0
    iput-object v2, v0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zza()J

    move-result-wide v5

    iput-wide v5, v0, Lg/fkd;->h:J

    iget-boolean v2, v0, Lg/fkd;->w:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zza()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-nez v2, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, v0, Lg/fkd;->ab:Z

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x7

    :goto_1
    iput v6, v0, Lg/fkd;->ai:I

    iget-boolean v2, v0, Lg/fkd;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lg/fkd;->am:Lcom/google/android/gms/internal/ads/zzvx;

    iget-wide v3, v0, Lg/fkd;->h:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-result v1

    iget-boolean v0, v0, Lg/fkd;->ab:Z

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzvx;->zza(JZZ)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lg/fkd;->aq()V

    return-void
.end method
