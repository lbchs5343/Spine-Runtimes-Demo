.class public Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;
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

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;->a:Lcom/google/android/gms/internal/ads/zzbsz;

    return-void
.end method


# virtual methods
.method public final doWork()Lg/dea;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;->a:Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbsz;->zzh()V

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
