.class public final Lg/bou;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/bou;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Lg/cmd;

.field public zzd:J

.field public zze:Z

.field public zzf:Ljava/lang/String;

.field public final zzg:Lg/ctf;

.field public zzh:J

.field public zzi:Lg/ctf;

.field public final zzj:J

.field public final zzk:Lg/ctf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/bou;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lg/bou;)V
    .locals 2

    invoke-direct {p0}, Lg/exk;-><init>()V

    invoke-static {p1}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v0, p1, Lg/bou;->zza:Ljava/lang/String;

    iput-object v0, p0, Lg/bou;->zza:Ljava/lang/String;

    iget-object v0, p1, Lg/bou;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lg/bou;->zzb:Ljava/lang/String;

    iget-object v0, p1, Lg/bou;->zzc:Lg/cmd;

    iput-object v0, p0, Lg/bou;->zzc:Lg/cmd;

    iget-wide v0, p1, Lg/bou;->zzd:J

    iput-wide v0, p0, Lg/bou;->zzd:J

    iget-boolean v0, p1, Lg/bou;->zze:Z

    iput-boolean v0, p0, Lg/bou;->zze:Z

    iget-object v0, p1, Lg/bou;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lg/bou;->zzf:Ljava/lang/String;

    iget-object v0, p1, Lg/bou;->zzg:Lg/ctf;

    iput-object v0, p0, Lg/bou;->zzg:Lg/ctf;

    iget-wide v0, p1, Lg/bou;->zzh:J

    iput-wide v0, p0, Lg/bou;->zzh:J

    iget-object v0, p1, Lg/bou;->zzi:Lg/ctf;

    iput-object v0, p0, Lg/bou;->zzi:Lg/ctf;

    iget-wide v0, p1, Lg/bou;->zzj:J

    iput-wide v0, p0, Lg/bou;->zzj:J

    iget-object p1, p1, Lg/bou;->zzk:Lg/ctf;

    iput-object p1, p0, Lg/bou;->zzk:Lg/ctf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lg/cmd;JZLjava/lang/String;Lg/ctf;JLg/ctf;JLg/ctf;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/bou;->zza:Ljava/lang/String;

    iput-object p2, p0, Lg/bou;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lg/bou;->zzc:Lg/cmd;

    iput-wide p4, p0, Lg/bou;->zzd:J

    iput-boolean p6, p0, Lg/bou;->zze:Z

    iput-object p7, p0, Lg/bou;->zzf:Ljava/lang/String;

    iput-object p8, p0, Lg/bou;->zzg:Lg/ctf;

    iput-wide p9, p0, Lg/bou;->zzh:J

    iput-object p11, p0, Lg/bou;->zzi:Lg/ctf;

    iput-wide p12, p0, Lg/bou;->zzj:J

    iput-object p14, p0, Lg/bou;->zzk:Lg/ctf;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lg/bou;->zza:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lg/bou;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lg/bou;->zzc:Lg/cmd;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-wide v3, p0, Lg/bou;->zzd:J

    const/4 v1, 0x5

    const/16 v5, 0x8

    invoke-static {p1, v1, v5}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v1, p0, Lg/bou;->zze:Z

    const/4 v3, 0x6

    invoke-static {p1, v3, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lg/bou;->zzf:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lg/bou;->zzg:Lg/ctf;

    invoke-static {p1, v5, v1, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-wide v1, p0, Lg/bou;->zzh:J

    const/16 v3, 0x9

    invoke-static {p1, v3, v5}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0xa

    iget-object v2, p0, Lg/bou;->zzi:Lg/ctf;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-wide v1, p0, Lg/bou;->zzj:J

    const/16 v3, 0xb

    invoke-static {p1, v3, v5}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0xc

    iget-object v2, p0, Lg/bou;->zzk:Lg/ctf;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
