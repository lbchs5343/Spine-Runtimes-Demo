.class public final Lg/crk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lg/fwu;


# direct methods
.method public synthetic constructor <init>(Lg/fwu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/crk;->a:Lg/fwu;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lg/crk;->a:Lg/fwu;

    iget-object v1, v0, Lg/fwu;->i:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "LmdServiceConnectionManager.onServiceConnected(%s)"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfvv;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvq;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfvq;-><init>(Lg/crk;Landroid/os/IBinder;)V

    invoke-virtual {v0, p1}, Lg/fwu;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lg/crk;->a:Lg/fwu;

    iget-object v1, v0, Lg/fwu;->i:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "LmdServiceConnectionManager.onServiceDisconnected(%s)"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfvv;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfvr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfvr;-><init>(Lg/crk;)V

    invoke-virtual {v0, p1}, Lg/fwu;->k(Ljava/lang/Runnable;)V

    return-void
.end method
