.class public final Lg/ecv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzenh;
.implements Lcom/google/android/gms/internal/ads/zzful;
.implements Lg/anu;
.implements Lg/btm;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg/ecv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v2, [Lg/anu;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lg/anu;->c(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e(Ljava/lang/Class;)Lg/cyk;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v1, [Lg/anu;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lg/anu;->c(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lg/anu;->e(Ljava/lang/Class;)Lg/cyk;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza()V
    .locals 3

    iget-object v0, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfeq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfeq;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzfeq;->b:Lcom/google/android/gms/internal/ads/zzdor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzfvk;Lcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 2

    iget-object v0, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lg/fia;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lg/fia;->g(Lcom/google/android/gms/internal/ads/zzfvk;Lcom/google/android/gms/internal/ads/zzfvi;I)V

    return-void
.end method

.method public zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lg/bsz;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Lg/bsz;->m:Lg/cyg;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/cyg;->z:Lg/bgm;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object p1, p1, Lg/bgm;->b:Lg/dvb;

    const-string p2, "AppId not known when logging event"

    const-string v0, "_err"

    invoke-virtual {p1, v0, p2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lg/bsz;->zzaz()Lg/fth;

    move-result-object v0

    new-instance v1, Lg/eax;

    const/16 v2, 0x16

    invoke-direct {v1, p0, p1, p2, v2}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzfuk;Lcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 4

    iget-object v0, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lg/fia;

    iget-object v1, v0, Lg/fia;->c:Lg/fwu;

    if-nez v1, :cond_0

    sget-object p1, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Play Store not found."

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "error: %s"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfvv;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfuk;->zza()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken."

    invoke-static {p2, v3, v2}, Lg/fia;->f(Lcom/google/android/gms/internal/ads/zzfvi;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfut;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfut;-><init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfuk;Lcom/google/android/gms/internal/ads/zzfvi;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvo;-><init>(Lg/fwu;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Lg/fwu;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdor;

    iget-object v0, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfeq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfeq;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzfeq;->b:Lcom/google/android/gms/internal/ads/zzdor;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzdE:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdor;->zzd()Lcom/google/android/gms/internal/ads/zzffh;

    move-result-object p1

    iget-object v1, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfeq;->a:Lcom/google/android/gms/internal/ads/zzffg;

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzffh;->zza:Lcom/google/android/gms/internal/ads/zzffg;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->b:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzfvk;Lcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 2

    iget-object v0, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lg/fia;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lg/fia;->g(Lcom/google/android/gms/internal/ads/zzfvk;Lcom/google/android/gms/internal/ads/zzfvi;I)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/ads/zzfvf;Lcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 4

    iget-object v0, p0, Lg/ecv;->a:Ljava/lang/Object;

    check-cast v0, Lg/fia;

    iget-object v1, v0, Lg/fia;->c:Lg/fwu;

    if-nez v1, :cond_0

    sget-object p1, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Play Store not found."

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "error: %s"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfvv;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvf;->zzh()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken."

    invoke-static {p2, v3, v2}, Lg/fia;->f(Lcom/google/android/gms/internal/ads/zzfvi;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfuy;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfuy;-><init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvf;Lcom/google/android/gms/internal/ads/zzfvi;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfvo;-><init>(Lg/fwu;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Lg/fwu;->k(Ljava/lang/Runnable;)V

    return-void
.end method
