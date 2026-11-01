.class public abstract Lg/bir;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lg/drf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.google.android.gms.ads.internal.client.IClientApi"

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lg/ph;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-nez v3, :cond_0

    const-string v0, "ClientApi class is not an instance of IBinder."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lg/drf;

    if-eqz v4, :cond_2

    check-cast v3, Lg/drf;

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_2
    new-instance v3, Lg/uq;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzayc;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to instantiate ClientApi class."

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    :goto_1
    sput-object v1, Lg/bir;->i:Lg/drf;

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/Object;
.end method

.method public abstract f(Lg/drf;)Ljava/lang/Object;
.end method

.method public abstract g()Ljava/lang/Object;
.end method

.method public final j(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    if-nez p2, :cond_1

    sget-object v1, Lg/cbv;->a:Lg/cbv;

    iget-object v1, v1, Lg/cbv;->d:Lg/mx;

    const v1, 0xbdfcb8

    sget-object v2, Lg/gna;->i:Lg/gna;

    invoke-virtual {v2, p1, v1}, Lg/gna;->l(Landroid/content/Context;I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Google Play Services is not available."

    invoke-static {p2}, Lg/agd;->c(Ljava/lang/String;)V

    const/4 p2, 0x1

    :cond_1
    :goto_0
    const-string v1, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v1}, Lg/dxw;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Lg/dxw;->p(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    if-le v2, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    xor-int/2addr v1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbei;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbei;->zzb:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p2, 0x1

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    or-int/2addr p2, v1

    move v3, p2

    goto :goto_2

    :goto_3
    const-string v1, "ClientApi class cannot be loaded."

    sget-object v2, Lg/bir;->i:Lg/drf;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    :try_start_0
    invoke-virtual {p0, v2}, Lg/bir;->f(Lg/drf;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_4
    move-object p1, v4

    goto :goto_5

    :cond_5
    invoke-static {v1}, Lg/agd;->b(Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    :try_start_1
    invoke-virtual {p0}, Lg/bir;->g()Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_6
    move-object p1, v4

    goto :goto_8

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lg/bir;->g()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    sget-object p2, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    move-object p2, v4

    :goto_7
    if-nez p2, :cond_7

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbew;->zza:Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdx;->zze()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    sget-object v5, Lg/cbv;->a:Lg/cbv;

    iget-object v6, v5, Lg/cbv;->c:Ljava/util/Random;

    invoke-virtual {v6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v6, "action"

    const-string v7, "dynamite_load"

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "is_missing"

    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v5, Lg/cbv;->d:Lg/mx;

    iget-object v5, v5, Lg/cbv;->b:Lg/akx;

    iget-object v5, v5, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lg/bli;

    invoke-direct {v6, v0}, Lg/bli;-><init>(Lg/mx;)V

    invoke-static {p1, v5, v3, v6}, Lg/mx;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lg/ciq;)V

    :cond_7
    if-nez p2, :cond_9

    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {p0, v2}, Lg/bir;->f(Lg/drf;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    sget-object p1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    goto :goto_6

    :cond_8
    invoke-static {v1}, Lg/agd;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move-object p1, p2

    :cond_a
    :goto_8
    if-nez p1, :cond_b

    invoke-virtual {p0}, Lg/bir;->e()Ljava/lang/Object;

    move-result-object p1

    :cond_b
    return-object p1
.end method
