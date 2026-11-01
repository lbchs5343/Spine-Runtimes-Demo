.class public final Lcom/google/android/gms/internal/ads/zzbdm;
.super Lg/pf;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/gms/internal/ads/zzdsm;

.field public c:Lg/bpr;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Lg/eab;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Lg/eab;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdm;->e:Lg/eab;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p2, Lg/eab;->a:Lg/byi;

    check-cast p1, Lg/hds;

    invoke-virtual {p1}, Lg/hds;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lg/av;

    invoke-direct {p1, p0}, Lg/av;-><init>(Lcom/google/android/gms/internal/ads/zzbdm;)V

    invoke-virtual {p2, p1}, Lg/eab;->d(Lg/gwy;)Lg/bpr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdm;->c:Lg/bpr;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdm;->e:Lg/eab;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdm;->c:Lg/bpr;

    return-void
.end method

.method public final zza()Lg/bpr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdm;->c:Lg/bpr;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdk;-><init>(Lcom/google/android/gms/internal/ads/zzbdm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdm;->c:Lg/bpr;

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdm;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdm;->b:Lcom/google/android/gms/internal/ads/zzdsm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdm;->e:Lg/eab;

    if-nez p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lg/eab;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lg/pf;->f:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/16 p2, 0x21

    invoke-virtual {p1, v0, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final zze(I)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzeE:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdm;->b:Lcom/google/android/gms/internal/ads/zzdsm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaj;->zza:Lcom/google/android/gms/internal/ads/zzges;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(Lcom/google/android/gms/internal/ads/zzbdm;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
