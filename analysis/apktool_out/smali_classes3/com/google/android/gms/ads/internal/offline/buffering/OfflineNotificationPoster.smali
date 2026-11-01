.class public Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbsz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    sget-object p2, Lg/cbv;->a:Lg/cbv;

    iget-object p2, p2, Lg/cbv;->e:Lg/ph;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lg/yp;

    invoke-direct {p2, p1, v0}, Lg/yp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsz;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->a:Lcom/google/android/gms/internal/ads/zzbsz;

    return-void
.end method


# virtual methods
.method public final doWork()Lg/dea;
    .locals 6

    invoke-virtual {p0}, Lg/cg;->getInputData()Lg/dwa;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Lg/dwa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lg/cg;->getInputData()Lg/dwa;

    move-result-object v1

    const-string v2, "gws_query_id"

    invoke-virtual {v1, v2}, Lg/dwa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lg/cg;->getInputData()Lg/dwa;

    move-result-object v2

    const-string v3, "image_url"

    invoke-virtual {v2, v3}, Lg/dwa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->a:Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-virtual {p0}, Lg/cg;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lg/bpp;

    invoke-direct {v5, v4}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lg/cie;

    invoke-direct {v4, v0, v1, v2}, Lg/cie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzbsz;->zzj(Lg/bjq;Lg/cie;)V

    new-instance v0, Lg/aif;

    invoke-direct {v0}, Lg/aif;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lg/bhr;

    invoke-direct {v0}, Lg/bhr;-><init>()V

    return-object v0
.end method
