.class public final Lcom/google/android/gms/internal/ads/zzdzj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfko;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/internal/ads/zzges;

.field public final d:Lg/akx;

.field public final e:Lcom/google/android/gms/internal/ads/zzdyn;

.field public final f:Lcom/google/android/gms/internal/ads/zzhfr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzges;Lcom/google/android/gms/internal/ads/zzdyn;Lcom/google/android/gms/internal/ads/zzhfr;Lcom/google/android/gms/internal/ads/zzfko;Landroid/content/Context;Lg/akx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzj;->c:Lcom/google/android/gms/internal/ads/zzges;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzj;->e:Lcom/google/android/gms/internal/ads/zzdyn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzj;->f:Lcom/google/android/gms/internal/ads/zzhfr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzj;->a:Lcom/google/android/gms/internal/ads/zzfko;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdzj;->b:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdzj;->d:Lg/akx;

    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/internal/ads/zzbvx;Lg/doh;Lg/doh;Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzgdz;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbvx;->zzd:Ljava/lang/String;

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    invoke-static {v0}, Lg/esy;->am(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzj;->c:Lcom/google/android/gms/internal/ads/zzges;

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdyw;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdyw;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgei;->zzg(Ljava/lang/Throwable;)Lg/dcy;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lg/doh;->zza(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdzh;-><init>()V

    const-class v2, Ljava/util/concurrent/ExecutionException;

    invoke-static {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzf(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdzf;-><init>()V

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-static {p2, p4, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgdz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzg;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzdzg;-><init>(Lcom/google/android/gms/internal/ads/zzdzj;Lg/doh;Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzgdp;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-static {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzf(Lg/dcy;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;-><init>(Lcom/google/android/gms/internal/ads/zzbvx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzj;->e:Lcom/google/android/gms/internal/ads/zzdyn;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzd;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdzd;-><init>(Lcom/google/android/gms/internal/ads/zzdyn;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdze;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdze;-><init>(Lcom/google/android/gms/internal/ads/zzdzj;)V

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzdzj;->g(Lcom/google/android/gms/internal/ads/zzbvx;Lg/doh;Lg/doh;Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lorg/json/JSONObject;)Lg/dcy;
    .locals 4

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->w:Lcom/google/android/gms/internal/ads/zzbnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzj;->d:Lg/akx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdzj;->a:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzj;->b:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbnz;->zza(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzfko;)Lcom/google/android/gms/internal/ads/zzboi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbof;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>()V

    const-string v3, "AFMA_getAdDictionary"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzboi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgei;->zzh(Ljava/lang/Object;)Lg/dcy;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdz;->zzu(Lg/dcy;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzj;->c:Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgei;->zzn(Lg/dcy;Lcom/google/android/gms/internal/ads/zzgdp;Ljava/util/concurrent/Executor;)Lg/dcy;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbvx;)Lg/dcy;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdyz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdza;-><init>(Lcom/google/android/gms/internal/ads/zzdzj;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdzb;-><init>(Lcom/google/android/gms/internal/ads/zzdzj;)V

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdzj;->g(Lcom/google/android/gms/internal/ads/zzbvx;Lg/doh;Lg/doh;Lcom/google/android/gms/internal/ads/zzgdp;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p1

    return-object p1
.end method
