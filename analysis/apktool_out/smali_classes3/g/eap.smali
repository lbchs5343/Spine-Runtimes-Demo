.class public final synthetic Lg/eap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcha;
.implements Lcom/google/android/gms/internal/ads/zzenh;
.implements Lg/bjz;
.implements Lg/alf;
.implements Lcom/google/android/gms/internal/ads/zzfvi;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/eap;->b:I

    iput-object p2, p0, Lg/eap;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzely;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzely;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzely;->g:Lcom/google/android/gms/internal/ads/zzcpd;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final bridge synthetic e(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzely;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcpd;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzely;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzely;->g:Lcom/google/android/gms/internal/ads/zzcpd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzb()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzely;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzely;->g:Lcom/google/android/gms/internal/ads/zzcpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lg/eap;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/bsz;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lg/bsz;->am(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method public zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, "AndroidOpenSSL"

    const-string v1, "Conscrypt"

    const-string v2, "GmsCore_OpenSSL"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwc;->zzb([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider;

    :try_start_0
    iget-object v3, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwk;

    invoke-interface {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzgwk;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public zza()V
    .locals 3

    iget v0, p0, Lg/eap;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfek;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfek;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzfek;->h:Lcom/google/android/gms/internal/ads/zzdor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    invoke-direct {p0}, Lg/eap;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzfvh;)V
    .locals 7

    iget-object v0, p0, Lg/eap;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/axs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzlf:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lg/axs;->f:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvh;->zza()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvh;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lg/eax;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const-string v3, "onLMDOverlayFailedToOpen"

    invoke-direct/range {v1 .. v6}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    const/4 p1, 0x0

    iput-object p1, v2, Lg/axs;->f:Ljava/lang/Object;

    iput-object p1, v2, Lg/axs;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, v2, Lg/axs;->g:Z

    return-void

    :pswitch_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lg/eax;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const-string v3, "onLMDOverlayClose"

    invoke-direct/range {v1 .. v6}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lg/eax;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const-string v3, "onLMDOverlayClicked"

    invoke-direct/range {v1 .. v6}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lg/eax;

    const/16 v5, 0x18

    const/4 v6, 0x0

    const-string v3, "onLMDOverlayOpened"

    invoke-direct/range {v1 .. v6}, Lg/eax;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1fd8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast p1, Lg/cwg;

    iget-object p1, p1, Lg/cwg;->j:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaa()V

    :cond_0
    return-void
.end method

.method public zzb(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/eap;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdor;

    iget-object v0, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfek;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfek;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzfek;->h:Lcom/google/android/gms/internal/ads/zzdor;

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

    iget-object v1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfek;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfek;->e:Lcom/google/android/gms/internal/ads/zzffg;

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzffh;->zza:Lcom/google/android/gms/internal/ads/zzffg;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lg/eap;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfek;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfek;->h:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrq;->zzk()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Lg/eap;->e(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
