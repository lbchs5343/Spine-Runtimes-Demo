.class public final Lcom/google/android/gms/internal/ads/zzfqw;
.super Lg/etz;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;I)V
    .locals 6

    const/16 v5, 0x74

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lg/adw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;I)V

    iput p5, v0, Lcom/google/android/gms/internal/ads/zzfqw;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.gass.START"

    return-object v0
.end method

.method public final c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzfrb;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfrb;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrb;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzayc;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v1
.end method

.method public final getMinApkVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfqw;->d:I

    return v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzfrb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lg/adw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfrb;

    return-object v0
.end method
