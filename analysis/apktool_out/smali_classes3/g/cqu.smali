.class public final Lg/cqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/cqu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lg/cmd;Landroid/os/Parcel;)V
    .locals 6

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lg/cmd;->zza:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v2, p0, Lg/cmd;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-wide v1, p0, Lg/cmd;->zzc:J

    const/4 v4, 0x3

    const/16 v5, 0x8

    invoke-static {p1, v4, v5}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lg/cmd;->zzd:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v3, v5}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Lg/cmd;->zze:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lg/cmd;->zzf:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object p0, p0, Lg/cmd;->zzg:Ljava/lang/Double;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, v5, v5}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_1
    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/cqu;->a:I

    packed-switch v2, :pswitch_data_0

    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-static {v1, v4}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v4}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/gby;

    invoke-direct {v1, v3}, Lg/gby;-><init>(I)V

    return-object v1

    :pswitch_0
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v3

    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-wide v8, v4

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_1
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_1

    :pswitch_2
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_1

    :pswitch_3
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    :pswitch_4
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    :pswitch_5
    invoke-static {v1, v3}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    :pswitch_6
    sget-object v4, Lg/abz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/abz;

    move-object v10, v3

    goto :goto_1

    :pswitch_7
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v8, v3

    goto :goto_1

    :pswitch_8
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v6, Lg/uf;

    invoke-direct/range {v6 .. v15}, Lg/uf;-><init>(Ljava/lang/String;JLg/abz;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :pswitch_9
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v11, v3

    move-object v10, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_7

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_2

    :cond_4
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_2

    :cond_5
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto :goto_2

    :cond_6
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    goto :goto_2

    :cond_7
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v7, Lg/adq;

    invoke-direct/range {v7 .. v12}, Lg/adq;-><init>(IILjava/lang/String;J)V

    return-object v7

    :pswitch_a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_b
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    move-object v12, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_8

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_2

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_c
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v20

    goto :goto_3

    :pswitch_d
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_3

    :pswitch_e
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v18

    goto :goto_3

    :pswitch_f
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v17

    goto :goto_3

    :pswitch_10
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v16

    goto :goto_3

    :pswitch_11
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_3

    :pswitch_12
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_3

    :pswitch_13
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_3

    :pswitch_14
    sget-object v4, Lg/eno;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->an(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [Lg/eno;

    goto :goto_3

    :pswitch_15
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_3

    :pswitch_16
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_3

    :pswitch_17
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_3

    :pswitch_18
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_3

    :pswitch_19
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_3

    :pswitch_1a
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v5, Lg/eno;

    invoke-direct/range {v5 .. v20}, Lg/eno;-><init>(Ljava/lang/String;IIZII[Lg/eno;ZZZZZZZZ)V

    return-object v5

    :pswitch_1b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzw;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1c
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c

    const/4 v9, 0x2

    if-eq v8, v9, :cond_b

    const/4 v9, 0x3

    if-eq v8, v9, :cond_a

    const/4 v9, 0x4

    if-eq v8, v9, :cond_9

    invoke-static {v1, v7}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_9
    invoke-static {v1, v7}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_4

    :cond_a
    invoke-static {v1, v7}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_4

    :cond_b
    invoke-static {v1, v7}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v6

    goto :goto_4

    :cond_c
    invoke-static {v1, v7}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_d
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/aja;

    invoke-direct {v1, v5, v6, v3, v4}, Lg/aja;-><init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V

    return-object v1

    :pswitch_1d
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_13

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_12

    const/4 v5, 0x3

    if-eq v4, v5, :cond_11

    const/4 v5, 0x4

    if-eq v4, v5, :cond_10

    const/4 v5, 0x5

    if-eq v4, v5, :cond_f

    const/4 v5, 0x6

    if-eq v4, v5, :cond_e

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_e
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_5

    :cond_f
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_5

    :cond_10
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_5

    :cond_11
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_5

    :cond_12
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_13
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v5, Lg/akx;

    invoke-direct/range {v5 .. v10}, Lg/akx;-><init>(Ljava/lang/String;IIZZ)V

    return-object v5

    :pswitch_1e
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_18

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_17

    const/4 v9, 0x2

    if-eq v8, v9, :cond_16

    const/4 v9, 0x3

    if-eq v8, v9, :cond_15

    const/4 v9, 0x4

    if-eq v8, v9, :cond_14

    invoke-static {v1, v7}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_14
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_6

    :cond_15
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_6

    :cond_16
    invoke-static {v1, v7}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_17
    invoke-static {v1, v7}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_6

    :cond_18
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/ekj;

    invoke-direct {v1, v3, v6, v4, v5}, Lg/ekj;-><init>(ZLjava/lang/String;II)V

    return-object v1

    :pswitch_1f
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/32 v9, -0x80000000

    move-object/from16 v39, v3

    move-object/from16 v40, v39

    move-object v12, v4

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v20, v15

    move-object/from16 v25, v20

    move-object/from16 v33, v25

    move-object/from16 v34, v33

    move-object/from16 v37, v34

    move-object/from16 v38, v37

    move-object/from16 v41, v38

    move-wide/from16 v16, v5

    move-wide/from16 v18, v16

    move-wide/from16 v26, v18

    move-wide/from16 v28, v26

    move-wide/from16 v35, v28

    move-wide/from16 v23, v9

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v5, v3

    packed-switch v5, :pswitch_data_3

    :pswitch_20
    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_21
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v41

    goto :goto_7

    :pswitch_22
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    goto :goto_7

    :pswitch_23
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    goto :goto_7

    :pswitch_24
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v38

    goto :goto_7

    :pswitch_25
    invoke-static {v1, v3}, Lg/dyd;->ac(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v37

    goto :goto_7

    :pswitch_26
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide/from16 v35, v5

    goto :goto_7

    :pswitch_27
    invoke-static {v1, v3}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v34, v4

    goto :goto_7

    :cond_19
    const/4 v5, 0x4

    invoke-static {v1, v3, v5}, Lg/dyd;->bc(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_8

    :cond_1a
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v34, v3

    goto :goto_7

    :pswitch_28
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v33

    goto :goto_7

    :pswitch_29
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v32

    goto :goto_7

    :pswitch_2a
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v31

    goto :goto_7

    :pswitch_2b
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v30

    goto :goto_7

    :pswitch_2c
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide/from16 v28, v5

    goto :goto_7

    :pswitch_2d
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide/from16 v26, v5

    goto :goto_7

    :pswitch_2e
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    goto :goto_7

    :pswitch_2f
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide/from16 v23, v5

    goto/16 :goto_7

    :pswitch_30
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v22

    goto/16 :goto_7

    :pswitch_31
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v21

    goto/16 :goto_7

    :pswitch_32
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_7

    :pswitch_33
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide/from16 v18, v5

    goto/16 :goto_7

    :pswitch_34
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide/from16 v16, v5

    goto/16 :goto_7

    :pswitch_35
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_7

    :pswitch_36
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    :pswitch_37
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    :pswitch_38
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_7

    :cond_1b
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v11, Lg/afh;

    invoke-direct/range {v11 .. v41}, Lg/afh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :pswitch_39
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    move-object v9, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_4

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_3a
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_9

    :pswitch_3b
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_9

    :pswitch_3c
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v9

    goto :goto_9

    :pswitch_3d
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_9

    :pswitch_3e
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_9

    :pswitch_3f
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_1c
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v5, Lg/env;

    invoke-direct/range {v5 .. v11}, Lg/env;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V

    return-object v5

    :pswitch_40
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v31, v3

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v19, v16

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v30, 0x0

    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_5

    :pswitch_41
    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_42
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v31, v3

    goto :goto_a

    :pswitch_43
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v30, v3

    goto :goto_a

    :pswitch_44
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_a

    :pswitch_45
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v28, v3

    goto :goto_a

    :pswitch_46
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_a

    :pswitch_47
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_a

    :pswitch_48
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_a

    :pswitch_49
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_a

    :pswitch_4a
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_a

    :pswitch_4b
    sget-object v4, Lg/fbp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/fbp;

    move-object/from16 v22, v3

    goto :goto_a

    :pswitch_4c
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_a

    :pswitch_4d
    sget-object v4, Lg/akx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/akx;

    move-object/from16 v20, v3

    goto :goto_a

    :pswitch_4e
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_a

    :pswitch_4f
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_a

    :pswitch_50
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v17, v3

    goto/16 :goto_a

    :pswitch_51
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_a

    :pswitch_52
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_a

    :pswitch_53
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    move v14, v3

    goto/16 :goto_a

    :pswitch_54
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_a

    :pswitch_55
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object v12, v3

    goto/16 :goto_a

    :pswitch_56
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_a

    :pswitch_57
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object v10, v3

    goto/16 :goto_a

    :pswitch_58
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_a

    :pswitch_59
    sget-object v4, Lg/etg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/etg;

    move-object v8, v3

    goto/16 :goto_a

    :cond_1d
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct/range {v7 .. v32}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lg/etg;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lg/akx;Ljava/lang/String;Lg/fbp;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;ZJ)V

    return-object v7

    :pswitch_5a
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v9, v3

    move-wide/from16 v34, v9

    move-object v11, v6

    move-object v13, v11

    move-object/from16 v17, v13

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v27, v25

    move-object/from16 v29, v27

    move-object/from16 v30, v29

    move-object/from16 v32, v30

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1e

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_6

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_5b
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v34, v3

    goto :goto_b

    :pswitch_5c
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v33, v3

    goto :goto_b

    :pswitch_5d
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_b

    :pswitch_5e
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v31, v3

    goto :goto_b

    :pswitch_5f
    invoke-static {v1, v3}, Lg/dyd;->ac(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v30, v3

    goto :goto_b

    :pswitch_60
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_b

    :pswitch_61
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v28, v3

    goto :goto_b

    :pswitch_62
    sget-object v4, Lg/acl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/acl;

    move-object/from16 v27, v3

    goto :goto_b

    :pswitch_63
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v26, v3

    goto :goto_b

    :pswitch_64
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_b

    :pswitch_65
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_b

    :pswitch_66
    invoke-static {v1, v3}, Lg/dyd;->ac(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_b

    :pswitch_67
    invoke-static {v1, v3}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v22, v3

    goto :goto_b

    :pswitch_68
    invoke-static {v1, v3}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_b

    :pswitch_69
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_b

    :pswitch_6a
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    move-object/from16 v19, v3

    goto/16 :goto_b

    :pswitch_6b
    sget-object v4, Lg/ela;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/ela;

    move-object/from16 v18, v3

    goto/16 :goto_b

    :pswitch_6c
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto/16 :goto_b

    :pswitch_6d
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    move/from16 v16, v3

    goto/16 :goto_b

    :pswitch_6e
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v15, v3

    goto/16 :goto_b

    :pswitch_6f
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    move v14, v3

    goto/16 :goto_b

    :pswitch_70
    invoke-static {v1, v3}, Lg/dyd;->ac(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_b

    :pswitch_71
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v12, v3

    goto/16 :goto_b

    :pswitch_72
    invoke-static {v1, v3}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_b

    :pswitch_73
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v9, v3

    goto/16 :goto_b

    :pswitch_74
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    goto/16 :goto_b

    :cond_1e
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v7, Lg/aeh;

    invoke-direct/range {v7 .. v35}, Lg/aeh;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lg/ela;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLg/acl;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    return-object v7

    :pswitch_75
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v9, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_1f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_7

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_76
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_c

    :pswitch_77
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_c

    :pswitch_78
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_c

    :pswitch_79
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_c

    :pswitch_7a
    const/4 v4, 0x4

    invoke-static {v1, v3, v4}, Lg/dyd;->bm(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    goto :goto_c

    :pswitch_7b
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_c

    :pswitch_7c
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :pswitch_7d
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_c

    :pswitch_7e
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_c

    :cond_1f
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v6, Lg/fbp;

    invoke-direct/range {v6 .. v15}, Lg/fbp;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-object v6

    :pswitch_7f
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v9, v6

    move-object v11, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_22

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    packed-switch v5, :pswitch_data_8

    invoke-static {v1, v4}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_80
    invoke-static {v1, v4}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v4, :cond_20

    move-object v11, v3

    goto :goto_d

    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_d

    :pswitch_81
    invoke-static {v1, v4}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_d

    :pswitch_82
    invoke-static {v1, v4}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v4, :cond_21

    move-object v9, v3

    goto :goto_d

    :cond_21
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_d

    :pswitch_83
    invoke-static {v1, v4}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_d

    :pswitch_84
    invoke-static {v1, v4}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_d

    :pswitch_85
    sget-object v5, Lg/fzo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v5}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lg/fzo;

    goto :goto_d

    :cond_22
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v5, Lg/csf;

    invoke-direct/range {v5 .. v11}, Lg/csf;-><init>(Lg/fzo;ZZ[II[I)V

    return-object v5

    :pswitch_86
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v9, v4

    move-object v12, v9

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-wide v10, v5

    const/4 v8, 0x0

    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_26

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v5, v3

    const/16 v6, 0x8

    packed-switch v5, :pswitch_data_9

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_87
    invoke-static {v1, v3}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_23

    move-object/from16 v16, v4

    goto :goto_e

    :cond_23
    invoke-static {v1, v3, v6}, Lg/dyd;->bc(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_e

    :pswitch_88
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_e

    :pswitch_89
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :pswitch_8a
    invoke-static {v1, v3}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_24

    move-object v13, v4

    goto :goto_e

    :cond_24
    const/4 v5, 0x4

    invoke-static {v1, v3, v5}, Lg/dyd;->bc(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v13, v3

    goto :goto_e

    :pswitch_8b
    invoke-static {v1, v3}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_25

    move-object v12, v4

    goto :goto_e

    :cond_25
    invoke-static {v1, v3, v6}, Lg/dyd;->bc(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v12, v3

    goto :goto_e

    :pswitch_8c
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_e

    :pswitch_8d
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :pswitch_8e
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v8, v3

    goto :goto_e

    :cond_26
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v7, Lg/cmd;

    invoke-direct/range {v7 .. v16}, Lg/cmd;-><init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v7

    :pswitch_8f
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    move-object v5, v4

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_2b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2a

    const/4 v9, 0x2

    if-eq v8, v9, :cond_29

    const/4 v9, 0x3

    if-eq v8, v9, :cond_28

    const/4 v9, 0x4

    if-eq v8, v9, :cond_27

    invoke-static {v1, v7}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_27
    sget-object v5, Lg/csf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v5}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lg/csf;

    goto :goto_f

    :cond_28
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_f

    :cond_29
    sget-object v4, Lg/cqg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v4}, Lg/dyd;->an(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lg/cqg;

    goto :goto_f

    :cond_2a
    invoke-static {v1, v7}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_f

    :cond_2b
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/gus;

    invoke-direct {v1, v3, v4, v6, v5}, Lg/gus;-><init>(Landroid/os/Bundle;[Lg/cqg;ILg/csf;)V

    return-object v1

    :pswitch_90
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2e

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2d

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2c

    invoke-static {v1, v6}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_2c
    invoke-static {v1, v6}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v4

    goto :goto_10

    :cond_2d
    invoke-static {v1, v6}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_10

    :cond_2e
    invoke-static {v1, v6}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_10

    :cond_2f
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/gfp;

    invoke-direct {v1, v5, v3, v4}, Lg/gfp;-><init>(ZLandroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_90
        :pswitch_8f
        :pswitch_86
        :pswitch_7f
        :pswitch_75
        :pswitch_5a
        :pswitch_40
        :pswitch_39
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_20
        :pswitch_29
        :pswitch_28
        :pswitch_20
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_41
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/cqu;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lg/gby;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lg/uf;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lg/adq;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzv;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lg/eno;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzw;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lg/aja;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lg/akx;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lg/ekj;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Lg/afh;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lg/env;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lg/aeh;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Lg/fbp;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Lg/csf;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Lg/cmd;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Lg/gus;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Lg/gfp;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
