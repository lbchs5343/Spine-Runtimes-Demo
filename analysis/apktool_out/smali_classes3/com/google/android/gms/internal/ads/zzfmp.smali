.class public final Lcom/google/android/gms/internal/ads/zzfmp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/ClientApi;

.field public b:Lcom/google/android/gms/internal/ads/zzbpg;

.field public final c:Landroid/content/Context;

.field public final d:Lg/cvb;

.field public final e:Lg/akx;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/akx;Ljava/util/concurrent/ScheduledExecutorService;Lg/cvb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfmp;->e:Lg/akx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfmp;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/ClientApi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfmp;->d:Lg/cvb;

    return-void
.end method

.method public static g()Lcom/google/android/gms/internal/ads/zzflx;
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzu:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v3, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzv:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    move-wide v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzflx;-><init>(JDJD)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lg/ghd;Lg/aik;)Lcom/google/android/gms/internal/ads/zzfmo;
    .locals 11

    iget v0, p1, Lg/ghd;->zzb:I

    invoke-static {v0}, Lg/bme;->b(I)Lg/bme;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmp;->e:Lg/akx;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflw;

    iget v3, v2, Lg/akx;->clientJarVersion:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfmp;->b:Lcom/google/android/gms/internal/ads/zzbpg;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfmp;->d:Lg/cvb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmp;->g()Lcom/google/android/gms/internal/ads/zzflx;

    move-result-object v8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmp;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfmp;->f:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzflw;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpg;Lg/ghd;Lg/aik;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzflx;Lg/cvb;)V

    return-object v0

    :cond_2
    move-object v6, p1

    move-object v7, p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfms;

    iget v4, v2, Lg/akx;->clientJarVersion:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfmp;->b:Lcom/google/android/gms/internal/ads/zzbpg;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfmp;->d:Lg/cvb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmp;->g()Lcom/google/android/gms/internal/ads/zzflx;

    move-result-object v9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmp;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfmp;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfmp;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzfms;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpg;Lg/ghd;Lg/aik;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzflx;Lg/cvb;)V

    return-object v1

    :cond_3
    move-object v6, p1

    move-object v7, p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflz;

    iget v4, v2, Lg/akx;->clientJarVersion:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfmp;->b:Lcom/google/android/gms/internal/ads/zzbpg;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfmp;->d:Lg/cvb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmp;->g()Lcom/google/android/gms/internal/ads/zzflx;

    move-result-object v9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmp;->a:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfmp;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfmp;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzflz;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpg;Lg/ghd;Lg/aik;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzflx;Lg/cvb;)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbpg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->b:Lcom/google/android/gms/internal/ads/zzbpg;

    return-void
.end method
