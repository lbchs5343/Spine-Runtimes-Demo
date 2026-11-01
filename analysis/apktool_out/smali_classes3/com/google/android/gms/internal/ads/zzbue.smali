.class public final Lcom/google/android/gms/internal/ads/zzbue;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Landroid/view/View;

.field public final zzb:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbuf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    invoke-static {p1}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbue;->zza:Landroid/view/View;

    invoke-static {p2}, Lg/bpp;->d(Landroid/os/IBinder;)Lg/bjq;

    move-result-object p1

    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbue;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbue;->zza:Landroid/view/View;

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    new-instance v1, Lg/bpp;

    invoke-direct {v1, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-static {p1, p2, v1}, Lg/egh;->az(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbue;->zzb:Ljava/util/Map;

    new-instance v1, Lg/bpp;

    invoke-direct {v1, p2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x2

    invoke-static {p1, p2, v1}, Lg/egh;->az(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
