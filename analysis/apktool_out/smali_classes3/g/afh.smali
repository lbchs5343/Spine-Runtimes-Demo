.class public final Lg/afh;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/afh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:J

.field public final zzf:J

.field public final zzg:Ljava/lang/String;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:J

.field public final zzk:Ljava/lang/String;

.field public final zzl:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzm:J

.field public final zzn:I

.field public final zzo:Z

.field public final zzp:Z

.field public final zzq:Ljava/lang/String;

.field public final zzr:Ljava/lang/Boolean;

.field public final zzs:J

.field public final zzt:Ljava/util/List;

.field public final zzu:Ljava/lang/String;

.field public final zzv:Ljava/lang/String;

.field public final zzw:Ljava/lang/String;

.field public final zzx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqu;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lg/cqu;-><init>(I)V

    sput-object v0, Lg/afh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lg/exk;-><init>()V

    invoke-static {p1}, Lg/ckd;->bf(Ljava/lang/String;)V

    iput-object p1, p0, Lg/afh;->zza:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lg/afh;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lg/afh;->zzc:Ljava/lang/String;

    iput-wide p4, p0, Lg/afh;->zzj:J

    iput-object p6, p0, Lg/afh;->zzd:Ljava/lang/String;

    iput-wide p7, p0, Lg/afh;->zze:J

    iput-wide p9, p0, Lg/afh;->zzf:J

    iput-object p11, p0, Lg/afh;->zzg:Ljava/lang/String;

    iput-boolean p12, p0, Lg/afh;->zzh:Z

    iput-boolean p13, p0, Lg/afh;->zzi:Z

    move-object/from16 p1, p14

    iput-object p1, p0, Lg/afh;->zzk:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lg/afh;->zzl:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lg/afh;->zzm:J

    move/from16 p1, p19

    iput p1, p0, Lg/afh;->zzn:I

    move/from16 p1, p20

    iput-boolean p1, p0, Lg/afh;->zzo:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Lg/afh;->zzp:Z

    move-object/from16 p1, p22

    iput-object p1, p0, Lg/afh;->zzq:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lg/afh;->zzr:Ljava/lang/Boolean;

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lg/afh;->zzs:J

    move-object/from16 p1, p26

    iput-object p1, p0, Lg/afh;->zzt:Ljava/util/List;

    iput-object v1, p0, Lg/afh;->zzu:Ljava/lang/String;

    move-object/from16 p1, p28

    iput-object p1, p0, Lg/afh;->zzv:Ljava/lang/String;

    move-object/from16 p1, p29

    iput-object p1, p0, Lg/afh;->zzw:Ljava/lang/String;

    move-object/from16 p1, p30

    iput-object p1, p0, Lg/afh;->zzx:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/afh;->zza:Ljava/lang/String;

    iput-object p2, p0, Lg/afh;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lg/afh;->zzc:Ljava/lang/String;

    iput-wide p12, p0, Lg/afh;->zzj:J

    iput-object p4, p0, Lg/afh;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lg/afh;->zze:J

    iput-wide p7, p0, Lg/afh;->zzf:J

    iput-object p9, p0, Lg/afh;->zzg:Ljava/lang/String;

    iput-boolean p10, p0, Lg/afh;->zzh:Z

    iput-boolean p11, p0, Lg/afh;->zzi:Z

    iput-object p14, p0, Lg/afh;->zzk:Ljava/lang/String;

    move-wide p1, p15

    iput-wide p1, p0, Lg/afh;->zzl:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lg/afh;->zzm:J

    move/from16 p1, p19

    iput p1, p0, Lg/afh;->zzn:I

    move/from16 p1, p20

    iput-boolean p1, p0, Lg/afh;->zzo:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Lg/afh;->zzp:Z

    move-object/from16 p1, p22

    iput-object p1, p0, Lg/afh;->zzq:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lg/afh;->zzr:Ljava/lang/Boolean;

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lg/afh;->zzs:J

    move-object/from16 p1, p26

    iput-object p1, p0, Lg/afh;->zzt:Ljava/util/List;

    move-object/from16 p1, p27

    iput-object p1, p0, Lg/afh;->zzu:Ljava/lang/String;

    move-object/from16 p1, p28

    iput-object p1, p0, Lg/afh;->zzv:Ljava/lang/String;

    move-object/from16 p1, p29

    iput-object p1, p0, Lg/afh;->zzw:Ljava/lang/String;

    move-object/from16 p1, p30

    iput-object p1, p0, Lg/afh;->zzx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    iget-object v1, p0, Lg/afh;->zza:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lg/afh;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lg/afh;->zzc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v2, p0, Lg/afh;->zzd:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-wide v2, p0, Lg/afh;->zze:J

    const/4 v0, 0x6

    const/16 v4, 0x8

    invoke-static {p1, v0, v4}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Lg/afh;->zzf:J

    const/4 v0, 0x7

    invoke-static {p1, v0, v4}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lg/afh;->zzg:Ljava/lang/String;

    invoke-static {p1, v4, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v0, p0, Lg/afh;->zzh:Z

    const/16 v2, 0x9

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/afh;->zzi:Z

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lg/afh;->zzj:J

    const/16 v0, 0xb

    invoke-static {p1, v0, v4}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0xc

    iget-object v2, p0, Lg/afh;->zzk:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-wide v2, p0, Lg/afh;->zzl:J

    const/16 v0, 0xd

    invoke-static {p1, v0, v4}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Lg/afh;->zzm:J

    const/16 v0, 0xe

    invoke-static {p1, v0, v4}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lg/afh;->zzn:I

    const/16 v2, 0xf

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/afh;->zzo:Z

    const/16 v2, 0x10

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/afh;->zzp:Z

    const/16 v2, 0x12

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x13

    iget-object v2, p0, Lg/afh;->zzq:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lg/afh;->zzr:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-wide v0, p0, Lg/afh;->zzs:J

    const/16 v2, 0x16

    invoke-static {p1, v2, v4}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0x17

    iget-object v1, p0, Lg/afh;->zzt:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lg/egh;->am(Landroid/os/Parcel;ILjava/util/List;)V

    const/16 v0, 0x18

    iget-object v1, p0, Lg/afh;->zzu:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x19

    iget-object v1, p0, Lg/afh;->zzv:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x1a

    iget-object v1, p0, Lg/afh;->zzw:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x1b

    iget-object v1, p0, Lg/afh;->zzx:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
