.class public Lcom/google/android/gms/ads/AdService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AdService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->e:Lg/ph;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/yp;

    invoke-direct {v0, p0, v1}, Lg/yp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbsz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbsz;->zze(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "RemoteException calling handleNotificationIntent: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/agd;->d(Ljava/lang/String;)V

    return-void
.end method
