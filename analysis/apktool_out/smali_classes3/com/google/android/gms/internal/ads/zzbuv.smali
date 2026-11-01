.class public final Lcom/google/android/gms/internal/ads/zzbuv;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbuv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Landroid/content/pm/ApplicationInfo;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Landroid/content/pm/PackageInfo;

.field public final zzd:Ljava/lang/String;

.field public final zze:I

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/util/List;

.field public final zzh:Z

.field public final zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbuw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbuv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zza:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzc:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzg:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzh:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzi:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zza:Landroid/content/pm/ApplicationInfo;

    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzc:Landroid/content/pm/PackageInfo;

    invoke-static {p1, v0, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzd:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0, p2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zze:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzf:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzg:Ljava/util/List;

    invoke-static {p1, p2, v2}, Lg/egh;->am(Landroid/os/Parcel;ILjava/util/List;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzh:Z

    const/16 v2, 0x8

    invoke-static {p1, v2, v0}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbuv;->zzi:Z

    const/16 v2, 0x9

    invoke-static {p1, v2, v0}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
