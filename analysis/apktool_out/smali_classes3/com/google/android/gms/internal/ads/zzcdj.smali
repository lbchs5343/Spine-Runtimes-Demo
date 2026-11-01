.class public final Lcom/google/android/gms/internal/ads/zzcdj;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public final _d:[Ljava/lang/String;

.field public final a:Lcom/google/android/gms/internal/ads/zzccf;

.field public final b:Lcom/google/android/gms/internal/ads/zzcdr;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccf;Lcom/google/android/gms/internal/ads/zzcdr;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lg/bgf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdj;->a:Lcom/google/android/gms/internal/ads/zzccf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdj;->b:Lcom/google/android/gms/internal/ads/zzcdr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdj;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdj;->_d:[Ljava/lang/String;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->x:Lcom/google/android/gms/internal/ads/zzcdk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcdk;->zzb(Lcom/google/android/gms/internal/ads/zzcdj;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->b:Lcom/google/android/gms/internal/ads/zzcdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdj;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdj;->_d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzu(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lg/esy;->a:Lg/gfx;

    new-instance v1, Lg/aku;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lg/esy;->a:Lg/gfx;

    new-instance v2, Lg/aku;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final zzb()Lg/dcy;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzcc:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->b:Lcom/google/android/gms/internal/ads/zzcdr;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzcea;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zze:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Lcom/google/android/gms/internal/ads/zzcdj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzges;->zzb(Ljava/util/concurrent/Callable;)Lg/dcy;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lg/bgf;->zzb()Lg/dcy;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdj;->c:Ljava/lang/String;

    return-object v0
.end method
