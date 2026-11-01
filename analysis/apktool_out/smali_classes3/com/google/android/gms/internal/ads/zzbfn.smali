.class public final Lcom/google/android/gms/internal/ads/zzbfn;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbfn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:I

.field public final zzd:Z

.field public final zze:I

.field public final zzf:Lg/cpm;

.field public final zzg:Z

.field public final zzh:I

.field public final zzi:I

.field public final zzj:Z

.field public final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILg/cpm;ZIIZI)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zza:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzb:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzc:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzd:Z

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzg:Z

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzh:I

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzj:Z

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzi:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzk:I

    return-void
.end method

.method public constructor <init>(Lg/gyv;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v2, p1, Lg/gyv;->c:Z

    iget v3, p1, Lg/gyv;->e:I

    iget-boolean v4, p1, Lg/gyv;->a:Z

    iget v5, p1, Lg/gyv;->b:I

    iget-object v0, p1, Lg/gyv;->d:Lg/cxt;

    if-eqz v0, :cond_0

    new-instance v1, Lg/cpm;

    invoke-direct {v1, v0}, Lg/cpm;-><init>(Lg/cxt;)V

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-boolean v7, p1, Lg/gyv;->g:Z

    iget v8, p1, Lg/gyv;->f:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzbfn;-><init>(IZIZILg/cpm;ZIIZI)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbfn;)Lg/ov;
    .locals 6

    new-instance v0, Lg/bkx;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/bkx;->d:Z

    iput v1, v0, Lg/bkx;->g:I

    iput-boolean v1, v0, Lg/bkx;->h:Z

    const/4 v2, 0x1

    iput v2, v0, Lg/bkx;->c:I

    iput-boolean v1, v0, Lg/bkx;->e:Z

    iput-boolean v1, v0, Lg/bkx;->i:Z

    iput v1, v0, Lg/bkx;->a:I

    iput v2, v0, Lg/bkx;->f:I

    if-nez p0, :cond_0

    new-instance p0, Lg/ov;

    invoke-direct {p0, v0}, Lg/ov;-><init>(Lg/bkx;)V

    return-object p0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zza:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzg:Z

    iput-boolean v1, v0, Lg/bkx;->e:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzh:I

    iput v1, v0, Lg/bkx;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzi:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzj:Z

    iput-boolean v5, v0, Lg/bkx;->i:Z

    iput v1, v0, Lg/bkx;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzk:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_0
    iput v2, v0, Lg/bkx;->f:I

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    if-eqz v1, :cond_6

    new-instance v2, Lg/cxt;

    invoke-direct {v2, v1}, Lg/cxt;-><init>(Lg/cpm;)V

    iput-object v2, v0, Lg/bkx;->b:Lg/cxt;

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zze:I

    iput v1, v0, Lg/bkx;->c:I

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzb:Z

    iput-boolean v1, v0, Lg/bkx;->d:Z

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzd:Z

    iput-boolean p0, v0, Lg/bkx;->h:Z

    new-instance p0, Lg/ov;

    invoke-direct {p0, v0}, Lg/ov;-><init>(Lg/bkx;)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zza:I

    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzb:Z

    const/4 v2, 0x2

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzc:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzd:Z

    invoke-static {p1, v3, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zze:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzf:Lg/cpm;

    invoke-static {p1, v0, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzg:Z

    const/4 v0, 0x7

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzh:I

    const/16 v0, 0x8

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzi:I

    const/16 v0, 0x9

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzj:Z

    const/16 v0, 0xa

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzk:I

    const/16 v0, 0xb

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
