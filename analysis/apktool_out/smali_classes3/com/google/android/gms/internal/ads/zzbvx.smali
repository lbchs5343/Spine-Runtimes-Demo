.class public final Lcom/google/android/gms/internal/ads/zzbvx;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbvx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Landroid/os/Bundle;

.field public final zzb:Lg/akx;

.field public final zzc:Landroid/content/pm/ApplicationInfo;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/util/List;

.field public final zzf:Landroid/content/pm/PackageInfo;

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;

.field public zzi:Lcom/google/android/gms/internal/ads/zzfhj;

.field public zzj:Ljava/lang/String;

.field public final zzk:Z

.field public final zzl:Z

.field public final zzm:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbvy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbvx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lg/akx;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfhj;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzb:Lg/akx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzc:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzf:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzi:Lcom/google/android/gms/internal/ads/zzfhj;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzj:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzk:Z

    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzl:Z

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzm:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Lg/egh;->ac(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzb:Lg/akx;

    invoke-static {p1, v0, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzc:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v0, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzd:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zze:Ljava/util/List;

    invoke-static {p1, v0, v3}, Lg/egh;->am(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzf:Landroid/content/pm/PackageInfo;

    invoke-static {p1, v0, v3, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzg:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzh:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzi:Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-static {p1, v0, v3, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 p2, 0xb

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzj:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzk:Z

    const/16 v0, 0xc

    invoke-static {p1, v0, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzl:Z

    const/16 v0, 0xd

    invoke-static {p1, v0, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xe

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzm:Landroid/os/Bundle;

    invoke-static {p1, p2, v0}, Lg/egh;->ac(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
