.class public final Lg/aeh;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/aeh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzc:Landroid/os/Bundle;

.field public final zzd:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zze:Ljava/util/List;

.field public final zzf:Z

.field public final zzg:I

.field public final zzh:Z

.field public final zzi:Ljava/lang/String;

.field public final zzj:Lg/ela;

.field public final zzk:Landroid/location/Location;

.field public final zzl:Ljava/lang/String;

.field public final zzm:Landroid/os/Bundle;

.field public final zzn:Landroid/os/Bundle;

.field public final zzo:Ljava/util/List;

.field public final zzp:Ljava/lang/String;

.field public final zzq:Ljava/lang/String;

.field public final zzr:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final zzs:Lg/acl;

.field public final zzt:I

.field public final zzu:Ljava/lang/String;

.field public final zzv:Ljava/util/List;

.field public final zzw:I

.field public final zzx:Ljava/lang/String;

.field public final zzy:I

.field public final zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqu;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/cqu;-><init>(I)V

    sput-object v0, Lg/aeh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/aeh;->zza:I

    iput-wide p2, p0, Lg/aeh;->zzb:J

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p4, p0, Lg/aeh;->zzc:Landroid/os/Bundle;

    iput p5, p0, Lg/aeh;->zzd:I

    iput-object p6, p0, Lg/aeh;->zze:Ljava/util/List;

    iput-boolean p7, p0, Lg/aeh;->zzf:Z

    iput p8, p0, Lg/aeh;->zzg:I

    iput-boolean p9, p0, Lg/aeh;->zzh:Z

    iput-object p10, p0, Lg/aeh;->zzi:Ljava/lang/String;

    iput-object p11, p0, Lg/aeh;->zzj:Lg/ela;

    iput-object p12, p0, Lg/aeh;->zzk:Landroid/location/Location;

    iput-object p13, p0, Lg/aeh;->zzl:Ljava/lang/String;

    if-nez p14, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object p1, p14

    :goto_0
    iput-object p1, p0, Lg/aeh;->zzm:Landroid/os/Bundle;

    iput-object p15, p0, Lg/aeh;->zzn:Landroid/os/Bundle;

    move-object/from16 p1, p16

    iput-object p1, p0, Lg/aeh;->zzo:Ljava/util/List;

    move-object/from16 p1, p17

    iput-object p1, p0, Lg/aeh;->zzp:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lg/aeh;->zzq:Ljava/lang/String;

    move/from16 p1, p19

    iput-boolean p1, p0, Lg/aeh;->zzr:Z

    move-object/from16 p1, p20

    iput-object p1, p0, Lg/aeh;->zzs:Lg/acl;

    move/from16 p1, p21

    iput p1, p0, Lg/aeh;->zzt:I

    move-object/from16 p1, p22

    iput-object p1, p0, Lg/aeh;->zzu:Ljava/lang/String;

    if-nez p23, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object/from16 p1, p23

    :goto_1
    iput-object p1, p0, Lg/aeh;->zzv:Ljava/util/List;

    move/from16 p1, p24

    iput p1, p0, Lg/aeh;->zzw:I

    move-object/from16 p1, p25

    iput-object p1, p0, Lg/aeh;->zzx:Ljava/lang/String;

    move/from16 p1, p26

    iput p1, p0, Lg/aeh;->zzy:I

    move-wide/from16 p1, p27

    iput-wide p1, p0, Lg/aeh;->zzz:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lg/aeh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lg/aeh;

    invoke-virtual {p0, p1}, Lg/aeh;->zza(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lg/aeh;->zzz:J

    iget-wide v4, v0, Lg/aeh;->zzz:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Lg/aeh;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, v0, Lg/aeh;->zzb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lg/aeh;->zzc:Landroid/os/Bundle;

    iget v4, v0, Lg/aeh;->zzd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lg/aeh;->zze:Ljava/util/List;

    iget-boolean v6, v0, Lg/aeh;->zzf:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, v0, Lg/aeh;->zzg:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, v0, Lg/aeh;->zzh:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, v0, Lg/aeh;->zzi:Ljava/lang/String;

    iget-object v10, v0, Lg/aeh;->zzj:Lg/ela;

    iget-object v11, v0, Lg/aeh;->zzk:Landroid/location/Location;

    iget-object v12, v0, Lg/aeh;->zzl:Ljava/lang/String;

    iget-object v13, v0, Lg/aeh;->zzm:Landroid/os/Bundle;

    iget-object v14, v0, Lg/aeh;->zzn:Landroid/os/Bundle;

    iget-object v15, v0, Lg/aeh;->zzo:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lg/aeh;->zzp:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lg/aeh;->zzq:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lg/aeh;->zzr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v19, v1

    iget v1, v0, Lg/aeh;->zzt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    iget-object v1, v0, Lg/aeh;->zzu:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lg/aeh;->zzv:Ljava/util/List;

    move-object/from16 v22, v1

    iget v1, v0, Lg/aeh;->zzw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v23, v1

    iget-object v1, v0, Lg/aeh;->zzx:Ljava/lang/String;

    move-object/from16 v24, v1

    iget v1, v0, Lg/aeh;->zzy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v26, v1

    move-object/from16 v25, v2

    iget-wide v1, v0, Lg/aeh;->zzz:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v27, 0x0

    aput-object v16, v2, v27

    const/16 v16, 0x1

    aput-object v25, v2, v16

    const/16 v16, 0x2

    aput-object v3, v2, v16

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v6, v2, v3

    const/4 v3, 0x6

    aput-object v7, v2, v3

    const/4 v3, 0x7

    aput-object v8, v2, v3

    const/16 v3, 0x8

    aput-object v9, v2, v3

    const/16 v3, 0x9

    aput-object v10, v2, v3

    const/16 v3, 0xa

    aput-object v11, v2, v3

    const/16 v3, 0xb

    aput-object v12, v2, v3

    const/16 v3, 0xc

    aput-object v13, v2, v3

    const/16 v3, 0xd

    aput-object v14, v2, v3

    const/16 v3, 0xe

    aput-object v15, v2, v3

    const/16 v3, 0xf

    aput-object v17, v2, v3

    const/16 v3, 0x10

    aput-object v18, v2, v3

    const/16 v3, 0x11

    aput-object v19, v2, v3

    const/16 v3, 0x12

    aput-object v20, v2, v3

    const/16 v3, 0x13

    aput-object v21, v2, v3

    const/16 v3, 0x14

    aput-object v22, v2, v3

    const/16 v3, 0x15

    aput-object v23, v2, v3

    const/16 v3, 0x16

    aput-object v24, v2, v3

    const/16 v3, 0x17

    aput-object v26, v2, v3

    const/16 v3, 0x18

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget v0, p0, Lg/aeh;->zza:I

    const/16 v1, 0x4f45

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lg/aeh;->zzb:J

    const/4 v0, 0x2

    const/16 v2, 0x8

    invoke-static {p1, v0, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x3

    iget-object v4, p0, Lg/aeh;->zzc:Landroid/os/Bundle;

    invoke-static {p1, v0, v4}, Lg/egh;->ac(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget v0, p0, Lg/aeh;->zzd:I

    invoke-static {p1, v3, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    iget-object v4, p0, Lg/aeh;->zze:Ljava/util/List;

    invoke-static {p1, v0, v4}, Lg/egh;->am(Landroid/os/Parcel;ILjava/util/List;)V

    iget-boolean v0, p0, Lg/aeh;->zzf:Z

    const/4 v4, 0x6

    invoke-static {p1, v4, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lg/aeh;->zzg:I

    const/4 v4, 0x7

    invoke-static {p1, v4, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/aeh;->zzh:Z

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x9

    iget-object v4, p0, Lg/aeh;->zzi:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xa

    iget-object v4, p0, Lg/aeh;->zzj:Lg/ela;

    invoke-static {p1, v0, v4, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v0, 0xb

    iget-object v4, p0, Lg/aeh;->zzk:Landroid/location/Location;

    invoke-static {p1, v0, v4, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v0, 0xc

    iget-object v4, p0, Lg/aeh;->zzl:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xd

    iget-object v4, p0, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-static {p1, v0, v4}, Lg/egh;->ac(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v0, 0xe

    iget-object v4, p0, Lg/aeh;->zzn:Landroid/os/Bundle;

    invoke-static {p1, v0, v4}, Lg/egh;->ac(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v0, 0xf

    iget-object v4, p0, Lg/aeh;->zzo:Ljava/util/List;

    invoke-static {p1, v0, v4}, Lg/egh;->am(Landroid/os/Parcel;ILjava/util/List;)V

    const/16 v0, 0x10

    iget-object v4, p0, Lg/aeh;->zzp:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x11

    iget-object v4, p0, Lg/aeh;->zzq:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v0, p0, Lg/aeh;->zzr:Z

    const/16 v4, 0x12

    invoke-static {p1, v4, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x13

    iget-object v4, p0, Lg/aeh;->zzs:Lg/acl;

    invoke-static {p1, v0, v4, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget p2, p0, Lg/aeh;->zzt:I

    const/16 v0, 0x14

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x15

    iget-object v0, p0, Lg/aeh;->zzu:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 p2, 0x16

    iget-object v0, p0, Lg/aeh;->zzv:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lg/egh;->am(Landroid/os/Parcel;ILjava/util/List;)V

    iget p2, p0, Lg/aeh;->zzw:I

    const/16 v0, 0x17

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x18

    iget-object v0, p0, Lg/aeh;->zzx:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget p2, p0, Lg/aeh;->zzy:I

    const/16 v0, 0x19

    invoke-static {p1, v0, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lg/aeh;->zzz:J

    const/16 p2, 0x1a

    invoke-static {p1, p2, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lg/aeh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lg/aeh;

    iget v0, p0, Lg/aeh;->zza:I

    iget v2, p1, Lg/aeh;->zza:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lg/aeh;->zzb:J

    iget-wide v4, p1, Lg/aeh;->zzb:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzc:Landroid/os/Bundle;

    iget-object v2, p1, Lg/aeh;->zzc:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lg/gs;->ay(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lg/aeh;->zzd:I

    iget v2, p1, Lg/aeh;->zzd:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lg/aeh;->zze:Ljava/util/List;

    iget-object v2, p1, Lg/aeh;->zze:Ljava/util/List;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/aeh;->zzf:Z

    iget-boolean v2, p1, Lg/aeh;->zzf:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lg/aeh;->zzg:I

    iget v2, p1, Lg/aeh;->zzg:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lg/aeh;->zzh:Z

    iget-boolean v2, p1, Lg/aeh;->zzh:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lg/aeh;->zzi:Ljava/lang/String;

    iget-object v2, p1, Lg/aeh;->zzi:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzj:Lg/ela;

    iget-object v2, p1, Lg/aeh;->zzj:Lg/ela;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzk:Landroid/location/Location;

    iget-object v2, p1, Lg/aeh;->zzk:Landroid/location/Location;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzl:Ljava/lang/String;

    iget-object v2, p1, Lg/aeh;->zzl:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzm:Landroid/os/Bundle;

    iget-object v2, p1, Lg/aeh;->zzm:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lg/gs;->ay(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzn:Landroid/os/Bundle;

    iget-object v2, p1, Lg/aeh;->zzn:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lg/gs;->ay(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzo:Ljava/util/List;

    iget-object v2, p1, Lg/aeh;->zzo:Ljava/util/List;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzp:Ljava/lang/String;

    iget-object v2, p1, Lg/aeh;->zzp:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzq:Ljava/lang/String;

    iget-object v2, p1, Lg/aeh;->zzq:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/aeh;->zzr:Z

    iget-boolean v2, p1, Lg/aeh;->zzr:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lg/aeh;->zzt:I

    iget v2, p1, Lg/aeh;->zzt:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lg/aeh;->zzu:Ljava/lang/String;

    iget-object v2, p1, Lg/aeh;->zzu:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/aeh;->zzv:Ljava/util/List;

    iget-object v2, p1, Lg/aeh;->zzv:Ljava/util/List;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lg/aeh;->zzw:I

    iget v2, p1, Lg/aeh;->zzw:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lg/aeh;->zzx:Ljava/lang/String;

    iget-object v2, p1, Lg/aeh;->zzx:Ljava/lang/String;

    invoke-static {v0, v2}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lg/aeh;->zzy:I

    iget p1, p1, Lg/aeh;->zzy:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final zzb()Z
    .locals 3

    iget-object v0, p0, Lg/aeh;->zzc:Landroid/os/Bundle;

    const-string v1, "is_sdk_preload"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
