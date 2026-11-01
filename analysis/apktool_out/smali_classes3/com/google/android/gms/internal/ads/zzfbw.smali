.class public final Lcom/google/android/gms/internal/ads/zzfbw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfck;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfhc;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lg/cuf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfhc;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/cuf;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lg/cuf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->c:Lg/cuf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbw;->a:Lcom/google/android/gms/internal/ads/zzfhc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbw;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;
    .locals 5

    new-instance p1, Lg/dpa;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbw;->a:Lcom/google/android/gms/internal/ads/zzfhc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p2, p3, v0}, Lg/dpa;-><init>(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzcvt;Ljava/util/concurrent/Executor;)V

    iget-object v1, p1, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfce;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeu;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfce;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcvt;->zzg()Lcom/google/android/gms/internal/ads/zzffo;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lg/aeh;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzf:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzffo;->zzj:Lg/gby;

    invoke-interface {p2, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzfhc;->zzc(Lg/aeh;Ljava/lang/String;Lg/gby;)Lcom/google/android/gms/internal/ads/zzfhm;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzfce;-><init>(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzfhm;)V

    iput-object v1, p1, Lg/dpa;->c:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcvt;->zzb()Lcom/google/android/gms/internal/ads/zzcsy;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfhc;->zza()Lcom/google/android/gms/internal/ads/zzfhj;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzcsy;->zze(Lcom/google/android/gms/internal/ads/zzfhj;)Lg/dcy;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p2

    new-instance v1, Lg/awi;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lg/awi;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance v1, Lg/awi;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lg/awi;-><init>(ILjava/lang/Object;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-static {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zze(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfcb;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzfcb;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzm(Lg/dcy;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbs;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzfbs;-><init>(Lcom/google/android/gms/internal/ads/zzfbw;Lcom/google/android/gms/internal/ads/zzcvt;)V

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance p2, Lg/eor;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lg/eor;-><init>(I)V

    const-class p3, Ljava/lang/Exception;

    invoke-static {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzgei;->zze(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfwh;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Ljava/lang/Object;)Lg/dcy;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfbw;->zzb(Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcvt;)Lg/dcy;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
