.class public final Lcom/google/android/gms/internal/ads/zzbsu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbgs;

.field public b:Lcom/google/android/gms/internal/ads/zzbsn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgs;->zzl()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgs;->zzk()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCustomFormatId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgs;->zzi()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayOpenMeasurement()Lg/dgy;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsu;->b:Lcom/google/android/gms/internal/ads/zzbsn;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgs;->zzq()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbsn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsn;-><init>(Lcom/google/android/gms/internal/ads/zzbgs;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsu;->b:Lcom/google/android/gms/internal/ads/zzbsn;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->b:Lcom/google/android/gms/internal/ads/zzbsn;

    return-object v0
.end method

.method public final getImage(Ljava/lang/String;)Lg/eox;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgs;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfy;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbso;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbso;-><init>(Lcom/google/android/gms/internal/ads/zzbfy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getMediaContent()Lg/fxr;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgs;->zzf()Lcom/google/android/gms/internal/ads/zzbfv;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lg/clr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgs;->zzf()Lcom/google/android/gms/internal/ads/zzbfv;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lg/clr;-><init>(Lcom/google/android/gms/internal/ads/zzbfv;Lcom/google/android/gms/internal/ads/zzbgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgs;->zzj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final performClick(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgs;->zzn(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->a:Lcom/google/android/gms/internal/ads/zzbgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgs;->zzo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
