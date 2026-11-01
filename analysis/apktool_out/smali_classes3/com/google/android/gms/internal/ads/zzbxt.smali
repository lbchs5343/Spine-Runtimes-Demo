.class public final Lcom/google/android/gms/internal/ads/zzbxt;
.super Lcom/google/android/gms/internal/ads/zzbwy;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Lg/coc;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg/coc;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lg/coc;->getAmount()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbxt;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbwy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxt;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbxt;->b:I

    return-void
.end method


# virtual methods
.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbxt;->b:I

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxt;->a:Ljava/lang/String;

    return-object v0
.end method
