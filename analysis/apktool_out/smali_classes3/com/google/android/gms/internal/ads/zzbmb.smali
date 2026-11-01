.class public final Lcom/google/android/gms/internal/ads/zzbmb;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbmb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:Ljava/lang/String;

.field public final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzc:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzd:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzb:I

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzc:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zzd:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbmb;->zza:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
