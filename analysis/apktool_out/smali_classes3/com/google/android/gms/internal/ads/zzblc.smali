.class public final Lcom/google/android/gms/internal/ads/zzblc;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzblc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:[Ljava/lang/String;

.field public final zzc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbld;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbld;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblc;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->zzb:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblc;->zzc:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->zza:Ljava/lang/String;

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblc;->zzb:[Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lg/egh;->bd(Landroid/os/Parcel;I[Ljava/lang/String;)V

    const/4 p2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblc;->zzc:[Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lg/egh;->bd(Landroid/os/Parcel;I[Ljava/lang/String;)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
