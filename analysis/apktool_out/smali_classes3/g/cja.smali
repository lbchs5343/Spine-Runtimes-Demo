.class public final Lg/cja;
.super Lg/bir;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/fnd;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbpc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;Lg/fnd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cja;->b:Landroid/content/Context;

    iput-object p2, p0, Lg/cja;->c:Lcom/google/android/gms/internal/ads/zzbpc;

    iput-object p3, p0, Lg/cja;->a:Lg/fnd;

    return-void
.end method


# virtual methods
.method public final synthetic e()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbla;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbla;-><init>()V

    return-object v0
.end method

.method public final f(Lg/drf;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/cja;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkn;

    iget-object v2, p0, Lg/cja;->a:Lg/fnd;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbkn;-><init>(Lg/fnd;)V

    iget-object v2, p0, Lg/cja;->c:Lcom/google/android/gms/internal/ads/zzbpc;

    const v3, 0xe8813d8

    invoke-interface {p1, v0, v2, v3, v1}, Lg/drf;->f(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;ILcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzbkt;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lg/bpp;

    iget-object v1, p0, Lg/cja;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl"
    :try_end_0
    .catch Lg/eof; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lg/kj;->p(Landroid/content/Context;)Lg/dxw;

    move-result-object v1

    invoke-virtual {v1, v2}, Lg/dxw;->v(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbkv;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbkw;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, p0, Lg/cja;->c:Lcom/google/android/gms/internal/ads/zzbpc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbkn;

    iget-object v4, p0, Lg/cja;->a:Lg/fnd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbkn;-><init>(Lg/fnd;)V

    const v4, 0xe8813d8

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzbkw;->zze(Lg/bjq;Lcom/google/android/gms/internal/ads/zzbpg;ILcom/google/android/gms/internal/ads/zzbkq;)Lcom/google/android/gms/internal/ads/zzbkt;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lg/eof;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lg/eof; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method
