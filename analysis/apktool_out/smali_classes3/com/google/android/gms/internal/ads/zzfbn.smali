.class public final synthetic Lcom/google/android/gms/internal/ads/zzfbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfcl;

.field public final synthetic zzc:Lg/vv;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfcj;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzcvt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfbq;Lcom/google/android/gms/internal/ads/zzfcl;Lg/vv;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zza:Lcom/google/android/gms/internal/ads/zzfbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzb:Lcom/google/android/gms/internal/ads/zzfcl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzc:Lg/vv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zze:Lcom/google/android/gms/internal/ads/zzcvt;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lg/dcy;
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zza:Lcom/google/android/gms/internal/ads/zzfbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzb:Lcom/google/android/gms/internal/ads/zzfcl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzc:Lg/vv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfbn;->zze:Lcom/google/android/gms/internal/ads/zzcvt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbv;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfbq;->f:Lcom/google/android/gms/internal/ads/zzfhy;

    if-eqz p1, :cond_2

    iget-object v7, v2, Lg/vv;->c:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v8, v2, Lg/vv;->e:Lcom/google/android/gms/internal/ads/zzfcl;

    iget-object v9, v2, Lg/vv;->f:Lg/aeh;

    iget-object v10, v2, Lg/vv;->a:Ljava/lang/String;

    iget-object v11, v2, Lg/vv;->b:Ljava/util/concurrent/Executor;

    iget-object v12, v2, Lg/vv;->d:Lg/gby;

    iget-object v13, p1, Lcom/google/android/gms/internal/ads/zzfbv;->zza:Lcom/google/android/gms/internal/ads/zzfhm;

    new-instance v6, Lg/vv;

    invoke-direct/range {v6 .. v13}, Lg/vv;-><init>(Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfcl;Lg/aeh;Ljava/lang/String;Ljava/util/concurrent/Executor;Lg/gby;Lcom/google/android/gms/internal/ads/zzfhm;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfbv;->zzc:Lcom/google/android/gms/internal/ads/zzfhl;

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzfbq;->b:Lcom/google/android/gms/internal/ads/zzcvt;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfhy;->zze(Lcom/google/android/gms/internal/ads/zzfhx;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbv;->zzc:Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfbq;->g(Lcom/google/android/gms/internal/ads/zzfhl;Lcom/google/android/gms/internal/ads/zzfcl;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfhy;->zza(Lcom/google/android/gms/internal/ads/zzfhx;)Lg/dcy;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzfbq;->b:Lcom/google/android/gms/internal/ads/zzcvt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbm;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfbm;-><init>(Lcom/google/android/gms/internal/ads/zzfbq;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbq;->d:Ljava/util/concurrent/Executor;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfhy;->zze(Lcom/google/android/gms/internal/ads/zzfhx;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfcl;->zzb:Lcom/google/android/gms/internal/ads/zzfci;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbv;->zzb:Lcom/google/android/gms/internal/ads/zzbvx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfcl;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzfcl;-><init>(Lcom/google/android/gms/internal/ads/zzfci;Lcom/google/android/gms/internal/ads/zzbvx;)V

    move-object v1, v2

    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfbq;->c:Lcom/google/android/gms/internal/ads/zzfck;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfca;

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfca;->zzb(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;

    move-result-object p1

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfbq;->b:Lcom/google/android/gms/internal/ads/zzcvt;

    return-object p1
.end method
