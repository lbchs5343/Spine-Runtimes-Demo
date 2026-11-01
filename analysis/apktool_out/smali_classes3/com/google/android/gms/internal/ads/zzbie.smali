.class public final Lcom/google/android/gms/internal/ads/zzbie;
.super Lcom/google/android/gms/internal/ads/zzbhi;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>(Lg/anb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lg/deq;Lg/bjq;)V
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_6

    :cond_0
    invoke-static {p2}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    new-instance v1, Lg/aph;

    invoke-direct {v1, p2}, Lg/cgp;-><init>(Landroid/content/Context;)V

    const-string v2, "Context cannot be null"

    invoke-static {p2, v2}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p1}, Lg/deq;->zzi()Lg/ejp;

    move-result-object v2

    instance-of v2, v2, Lg/fnu;

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lg/deq;->zzi()Lg/ejp;

    move-result-object v2

    check-cast v2, Lg/fnu;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lg/fnu;->a:Lg/nl;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Lg/cgp;->setAdListener(Lg/nl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0, v2}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {p1}, Lg/deq;->zzj()Lg/fbj;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzaza;

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lg/deq;->zzj()Lg/fbj;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaza;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzb()Lg/eus;

    move-result-object p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {v1, p2}, Lg/aph;->setAppEventListener(Lg/eus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    invoke-static {v0, p2}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    sget-object p2, Lg/mx;->e:Lcom/google/android/gms/internal/ads/zzftd;

    new-instance v0, Lg/efr;

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Lcom/google/android/gms/internal/ads/zzbie;Lg/aph;Lg/deq;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_6
    return-void
.end method
