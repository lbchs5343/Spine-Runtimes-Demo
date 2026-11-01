.class public final Lcom/google/android/gms/internal/ads/zzcue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczj;
.implements Lcom/google/android/gms/internal/ads/zzdex;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/ads/zzfko;

.field public final e:Lg/akx;

.field public f:Lcom/google/android/gms/internal/ads/zzbvt;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfko;Lg/akx;Lcom/google/android/gms/internal/ads/zzges;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcue;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcue;->d:Lcom/google/android/gms/internal/ads/zzfko;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcue;->e:Lg/akx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcue;->h:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zzd()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzben;->zzk:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    :goto_0
    const/4 v3, 0x2

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzben;->zzl:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzben;->zzj:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v0

    check-cast v0, Lg/cmo;

    invoke-virtual {v0}, Lg/cmo;->av()Lcom/google/android/gms/internal/ads/zzbzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzt;->zzc()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "local_flag_write"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "client"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const-string v4, "service"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    goto :goto_2

    :catch_0
    nop

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->d:Lcom/google/android/gms/internal/ads/zzfko;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcue;->c:Landroid/content/Context;

    if-eq v3, v1, :cond_7

    if-eq v3, v2, :cond_6

    goto :goto_4

    :cond_6
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->w:Lcom/google/android/gms/internal/ads/zzbnz;

    invoke-static {}, Lg/akx;->forPackage()Lg/akx;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzbnz;->zzb(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzfko;)Lcom/google/android/gms/internal/ads/zzboi;

    move-result-object v0

    goto :goto_3

    :cond_7
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->w:Lcom/google/android/gms/internal/ads/zzbnz;

    invoke-static {}, Lg/akx;->forPackage()Lg/akx;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzbnz;->zza(Landroid/content/Context;Lg/akx;Lcom/google/android/gms/internal/ads/zzfko;)Lcom/google/android/gms/internal/ads/zzboi;

    move-result-object v0

    :goto_3
    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbof;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzboi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbob;Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/internal/ads/zzbny;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbvt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcue;->e:Lg/akx;

    invoke-direct {v2, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbny;Lg/akx;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcue;->f:Lcom/google/android/gms/internal/ads/zzbvt;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcue;->b:Z

    :goto_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->b:Z

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcue;->f:Lcom/google/android/gms/internal/ads/zzbvt;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvt;->zza()Lg/dcy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcue;->a:Z

    if-nez v1, :cond_9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbef;->zzi:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcud;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcud;-><init>(Lcom/google/android/gms/internal/ads/zzcue;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcue;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lg/dcy;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_9
    const-string v1, "persistFlagsClient"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcam;->zza(Lg/dcy;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final zzdn(Lcom/google/android/gms/internal/ads/zzbvx;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcue;->zzd()V

    return-void
.end method

.method public final zzdo(Lcom/google/android/gms/internal/ads/zzfff;)V
    .locals 0

    return-void
.end method

.method public final zze(Lg/ggs;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcue;->zzd()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcue;->zzd()V

    return-void
.end method
