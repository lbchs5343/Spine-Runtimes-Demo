.class public final Lg/fkk;
.super Lcom/google/android/gms/internal/ads/zzftv;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfvi;

.field public final synthetic b:Lg/fia;


# direct methods
.method public constructor <init>(Lg/fia;Lcom/google/android/gms/internal/ads/zzfvi;)V
    .locals 0

    iput-object p1, p0, Lg/fkk;->b:Lg/fia;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftv;-><init>()V

    iput-object p2, p0, Lg/fkk;->a:Lcom/google/android/gms/internal/ads/zzfvi;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x1fd6

    const-string v1, "statusCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "sessionToken"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvh;->zzc()Lcom/google/android/gms/internal/ads/zzfvg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfvg;->zzb(I)Lcom/google/android/gms/internal/ads/zzfvg;

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfvg;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfvg;

    :cond_0
    iget-object p1, p0, Lg/fkk;->a:Lcom/google/android/gms/internal/ads/zzfvi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvg;->zzc()Lcom/google/android/gms/internal/ads/zzfvh;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfvi;->zza(Lcom/google/android/gms/internal/ads/zzfvh;)V

    const/16 p1, 0x1fdd

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lg/fkk;->b:Lg/fia;

    iget-object p1, p1, Lg/fia;->c:Lg/fwu;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lg/fia;->b:Lcom/google/android/gms/internal/ads/zzfvv;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "unbind LMD display overlay service"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfvv;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfvp;-><init>(Lg/fwu;)V

    invoke-virtual {p1, v0}, Lg/fwu;->k(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
