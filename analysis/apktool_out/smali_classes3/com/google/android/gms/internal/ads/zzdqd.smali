.class public final Lcom/google/android/gms/internal/ads/zzdqd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfgk;

.field public final b:Lcom/google/android/gms/internal/ads/zzdqa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzdqa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqd;->a:Lcom/google/android/gms/internal/ads/zzfgk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqd;->b:Lcom/google/android/gms/internal/ads/zzdqa;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbrf;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqd;->a:Lcom/google/android/gms/internal/ads/zzfgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgk;->zzb()Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbrf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqd;->b:Lcom/google/android/gms/internal/ads/zzdqa;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdqa;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbrf;->zzf()Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbrf;->zzg()Lcom/google/android/gms/internal/ads/zzbru;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdpz;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzdpz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbru;Lcom/google/android/gms/internal/ads/zzbru;Z)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdqa;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    monitor-exit v1

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_1
    const-string p1, "Unexpected call to adapter creator."

    invoke-static {p1}, Lg/agd;->b(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfgm;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzffv;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqd;->b:Lcom/google/android/gms/internal/ads/zzdqa;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfgm;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbqh;

    new-instance v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v1}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzbqh;-><init>(Lg/xm;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    const-string v3, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbqh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbry;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbry;-><init>()V

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzbqh;-><init>(Lg/xm;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqd;->a:Lcom/google/android/gms/internal/ads/zzfgk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfgk;->zzb()Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "com.google.ads.mediation.customevent.CustomEventAdapter"

    if-nez v4, :cond_2

    :try_start_1
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    :cond_2
    :try_start_2
    const-string v4, "class_name"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzbpg;->zze(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzbpg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpj;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_3
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzbpg;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzbpg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpj;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzbpg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpj;

    move-result-object p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    const-string v1, "Invalid custom event."

    invoke-static {v1, p2}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzbpg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpj;

    move-result-object p2

    :goto_1
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzfgm;-><init>(Lcom/google/android/gms/internal/ads/zzbpj;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqa;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgm;)V

    return-object v2

    :cond_6
    :try_start_4
    const-string p2, "Unexpected call to adapter creator."

    invoke-static {p2}, Lg/agd;->b(Ljava/lang/String;)V

    new-instance p2, Landroid/os/RemoteException;

    invoke-direct {p2}, Landroid/os/RemoteException;-><init>()V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zziW:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqa;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgm;)V

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzffv;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzffv;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqd;->a:Lcom/google/android/gms/internal/ads/zzfgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgk;->zzb()Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
