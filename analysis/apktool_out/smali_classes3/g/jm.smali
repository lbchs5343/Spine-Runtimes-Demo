.class public final Lg/jm;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/OutOfContextTestingActivity;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbpc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OutOfContextTestingActivity;Lcom/google/android/gms/internal/ads/zzbpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/jm;->a:Lcom/google/android/gms/ads/OutOfContextTestingActivity;

    iput-object p2, p0, Lg/jm;->b:Lcom/google/android/gms/internal/ads/zzbpc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/jm;->a:Lcom/google/android/gms/ads/OutOfContextTestingActivity;

    const-string v1, "out_of_context_tester"

    invoke-static {v0, v1}, Lg/ph;->h(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/jm;->a:Lcom/google/android/gms/ads/OutOfContextTestingActivity;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zziY:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/jm;->b:Lcom/google/android/gms/internal/ads/zzbpc;

    const v2, 0xe8813d8

    invoke-interface {p1, v0, v1, v2}, Lg/drf;->c(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/bhk;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/jm;->a:Lcom/google/android/gms/ads/OutOfContextTestingActivity;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->zza(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zziY:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v4

    invoke-virtual {v4, v2}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v4, "com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator"

    check-cast v2, Landroid/os/IBinder;

    if-nez v2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v6, v5, Lg/bvg;

    if-eqz v6, :cond_1

    check-cast v5, Lg/bvg;

    goto :goto_0

    :cond_1
    new-instance v5, Lg/bvg;

    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzayc;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    iget-object v2, p0, Lg/jm;->b:Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-virtual {v5, v0, v2}, Lg/bvg;->a(Lg/bpp;Lcom/google/android/gms/internal/ads/zzbpc;)Lg/bhk;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v2, Lg/eof;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lg/eof; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbul;

    move-result-object v1

    const-string v2, "ClientApiBroker.getOutOfContextTester"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbul;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    return-object v3
.end method
