.class public final Lcom/google/android/gms/internal/ads/zzble;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzble;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Z

.field public final zzb:Ljava/lang/String;

.field public final zzc:I

.field public final zzd:[B

.field public final zze:[Ljava/lang/String;

.field public final zzf:[Ljava/lang/String;

.field public final zzg:Z

.field public final zzh:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzblf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzblf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzble;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzble;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzble;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzble;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzble;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzble;->zze:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzble;->zzf:[Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzble;->zzg:Z

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzble;->zzh:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzble;->zza:Z

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzble;->zzb:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzble;->zzc:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzble;->zzd:[B

    invoke-static {p1, v2, p2}, Lg/egh;->be(Landroid/os/Parcel;I[B)V

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzble;->zze:[Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lg/egh;->bd(Landroid/os/Parcel;I[Ljava/lang/String;)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzble;->zzf:[Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lg/egh;->bd(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzble;->zzg:Z

    const/4 v1, 0x7

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzble;->zzh:J

    const/16 p2, 0x8

    invoke-static {p1, p2, p2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
