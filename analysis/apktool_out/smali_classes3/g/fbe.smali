.class public final Lg/fbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/fbe;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lg/ctf;Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lg/ctf;->zza:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lg/ctf;->zzb:Lg/cde;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x4

    iget-object v1, p0, Lg/ctf;->zzc:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-wide v1, p0, Lg/ctf;->zzd:J

    const/16 p0, 0x8

    const/4 p2, 0x5

    invoke-static {p1, p2, p0}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/fbe;->a:I

    packed-switch v2, :pswitch_data_0

    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    invoke-static {v1, v6}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v6}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    :cond_1
    invoke-static {v1, v6}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {v1, v6}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/cpm;

    invoke-direct {v1, v3, v4, v5}, Lg/cpm;-><init>(ZZZ)V

    return-object v1

    :pswitch_0
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_5

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/16 v6, 0xf

    if-eq v5, v6, :cond_4

    invoke-static {v1, v4}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/ela;

    invoke-direct {v1, v3}, Lg/ela;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_1
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_8

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_6
    invoke-static {v1, v5}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :cond_7
    invoke-static {v1, v5}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_2

    :cond_8
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/pw;

    invoke-direct {v1, v3, v4}, Lg/pw;-><init>(II)V

    return-object v1

    :pswitch_2
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    const/4 v4, 0x0

    :goto_3
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

    goto :goto_3

    :cond_9
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_3

    :cond_a
    sget-object v6, Lg/aeh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v6}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lg/aeh;

    goto :goto_3

    :cond_b
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_3

    :cond_c
    invoke-static {v1, v7}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_d
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/ghd;

    invoke-direct {v1, v5, v3, v6, v4}, Lg/ghd;-><init>(Ljava/lang/String;ILg/aeh;I)V

    return-object v1

    :pswitch_3
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_11

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_10

    const/4 v8, 0x2

    if-eq v7, v8, :cond_f

    const/4 v8, 0x3

    if-eq v7, v8, :cond_e

    invoke-static {v1, v6}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_e
    invoke-static {v1, v6}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_f
    invoke-static {v1, v6}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_4

    :cond_10
    invoke-static {v1, v6}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_4

    :cond_11
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/gpo;

    invoke-direct {v1, v4, v5, v3}, Lg/gpo;-><init>(IILjava/lang/String;)V

    return-object v1

    :pswitch_4
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_17

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    const/4 v5, 0x2

    if-eq v4, v5, :cond_15

    const/4 v5, 0x3

    if-eq v4, v5, :cond_14

    const/4 v5, 0x4

    if-eq v4, v5, :cond_13

    const/4 v5, 0x5

    if-eq v4, v5, :cond_12

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_12
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v10

    goto :goto_5

    :cond_13
    sget-object v4, Lg/abz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lg/abz;

    goto :goto_5

    :cond_14
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_15
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_16
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_5

    :cond_17
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v5, Lg/abz;

    invoke-direct/range {v5 .. v10}, Lg/abz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/abz;Landroid/os/IBinder;)V

    return-object v5

    :pswitch_5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfb;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/ads/zzfa;)V

    return-object v2

    :pswitch_6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzey;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzey;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/ads/zzex;)V

    return-object v2

    :pswitch_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzer;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/ads/zzeq;)V

    return-object v2

    :pswitch_8
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_19

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_18

    invoke-static {v1, v4}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_18
    invoke-static {v1, v4}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_6

    :cond_19
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/fsf;

    invoke-direct {v1, v3}, Lg/fsf;-><init>(I)V

    return-object v1

    :pswitch_9
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_1c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1a

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_1a
    invoke-static {v1, v5}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_7

    :cond_1b
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_1c
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/bc;

    invoke-direct {v1, v3, v4}, Lg/bc;-><init>(Ljava/lang/String;I)V

    return-object v1

    :pswitch_a
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_1f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1e

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1d

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_1d
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_1e
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_1f
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/acl;

    invoke-direct {v1, v3, v4}, Lg/acl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_b
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v8, v3

    move-wide v10, v8

    move-object v13, v6

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_20

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_c
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_9

    :pswitch_d
    invoke-static {v1, v3}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_9

    :pswitch_e
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_9

    :pswitch_f
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_9

    :pswitch_10
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_9

    :pswitch_11
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    move v12, v3

    goto :goto_9

    :pswitch_12
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v10, v3

    goto :goto_9

    :pswitch_13
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v8, v3

    goto :goto_9

    :cond_20
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v7, Lg/apu;

    invoke-direct/range {v7 .. v17}, Lg/apu;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v7

    :pswitch_14
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_23

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_22

    const/4 v7, 0x2

    if-eq v6, v7, :cond_21

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_21
    invoke-static {v1, v5}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_a

    :cond_22
    invoke-static {v1, v5}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_a

    :cond_23
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/dgw;

    invoke-direct {v1, v4, v3}, Lg/dgw;-><init>(ZLandroid/os/IBinder;)V

    return-object v1

    :pswitch_15
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_27

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_26

    const/4 v9, 0x2

    if-eq v8, v9, :cond_25

    const/4 v9, 0x3

    if-eq v8, v9, :cond_24

    invoke-static {v1, v7}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_24
    invoke-static {v1, v7}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_b

    :cond_25
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_b

    :cond_26
    invoke-static {v1, v7}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_27
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/cqg;

    invoke-direct {v1, v6, v5, v3, v4}, Lg/cqg;-><init>(Ljava/lang/String;IJ)V

    return-object v1

    :pswitch_16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_17
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_2a

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_29

    const/4 v7, 0x2

    if-eq v6, v7, :cond_28

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_28
    invoke-static {v1, v5}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_c

    :cond_29
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_2a
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/gvi;

    invoke-direct {v1, v4, v3}, Lg/gvi;-><init>(Ljava/lang/String;I)V

    return-object v1

    :pswitch_18
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v15, 0x0

    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_2

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_19
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_d

    :pswitch_1a
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v14

    goto :goto_d

    :pswitch_1b
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/content/Intent;

    goto :goto_d

    :pswitch_1c
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :pswitch_1d
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    :pswitch_1e
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    :pswitch_1f
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :pswitch_20
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :pswitch_21
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :pswitch_22
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_2b
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v5, Lg/etg;

    invoke-direct/range {v5 .. v15}, Lg/etg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    return-object v5

    :pswitch_23
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_e
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

    goto :goto_e

    :cond_2c
    invoke-static {v1, v6}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_2d
    invoke-static {v1, v6}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_2e
    invoke-static {v1, v6}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_2f
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/cie;

    invoke-direct {v1, v3, v4, v5}, Lg/cie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_24
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

    if-ge v7, v2, :cond_34

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_33

    const/4 v9, 0x2

    if-eq v8, v9, :cond_32

    const/4 v9, 0x3

    if-eq v8, v9, :cond_31

    const/4 v9, 0x4

    if-eq v8, v9, :cond_30

    invoke-static {v1, v7}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_30
    sget-object v5, Lg/nk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v5}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lg/nk;

    goto :goto_f

    :cond_31
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    goto :goto_f

    :cond_32
    invoke-static {v1, v7}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_33
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_f

    :cond_34
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lg/nk;)V

    return-object v1

    :pswitch_25
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_39

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_38

    const/4 v9, 0x2

    if-eq v8, v9, :cond_37

    const/4 v9, 0x3

    if-eq v8, v9, :cond_36

    const/4 v9, 0x4

    if-eq v8, v9, :cond_35

    invoke-static {v1, v7}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_35
    invoke-static {v1, v7}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_36
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v3}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_10

    :cond_37
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_10

    :cond_38
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_10

    :cond_39
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/nk;

    invoke-direct {v1, v5, v6, v3, v4}, Lg/nk;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v1

    :pswitch_26
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_11
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_3c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3a

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_3a
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_3b
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_3c
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/gyb;

    invoke-direct {v1, v3, v4}, Lg/gyb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_27
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move-wide v10, v4

    :goto_12
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_41

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_40

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3f

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3e

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3d

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_3d
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v10, v3

    goto :goto_12

    :cond_3e
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_12

    :cond_3f
    sget-object v4, Lg/cde;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/cde;

    move-object v8, v3

    goto :goto_12

    :cond_40
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_12

    :cond_41
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v6, Lg/ctf;

    invoke-direct/range {v6 .. v11}, Lg/ctf;-><init>(Ljava/lang/String;Lg/cde;Ljava/lang/String;J)V

    return-object v6

    :pswitch_28
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_43

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_42

    invoke-static {v1, v4}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_42
    invoke-static {v1, v4}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_13

    :cond_43
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/cde;

    invoke-direct {v1, v3}, Lg/cde;-><init>(Landroid/os/Bundle;)V

    return-object v1

    :pswitch_29
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_14
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_49

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v10, 0x1

    if-eq v4, v10, :cond_48

    const/4 v10, 0x2

    if-eq v4, v10, :cond_47

    const/4 v10, 0x3

    if-eq v4, v10, :cond_46

    const/4 v10, 0x4

    if-eq v4, v10, :cond_45

    const/4 v10, 0x5

    if-eq v4, v10, :cond_44

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_44
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_14

    :cond_45
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_14

    :cond_46
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_14

    :cond_47
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_14

    :cond_48
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_14

    :cond_49
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v4, Lg/fzo;

    invoke-direct/range {v4 .. v9}, Lg/fzo;-><init>(IZZII)V

    return-object v4

    :pswitch_2a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzahi;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_2b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzahg;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/ads/zzahf;)V

    return-object v2

    :pswitch_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    new-instance v4, Lcom/google/android/gms/internal/ads/zzahc;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzahc;-><init>(JJI)V

    return-object v4

    :pswitch_2d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v3, Lcom/google/android/gms/internal/ads/zzahc;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahd;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Ljava/util/List;)V

    return-object v1

    :pswitch_2e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagz;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/internal/ads/zzagy;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/fbe;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lg/cpm;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lg/ela;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lg/pw;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lg/ghd;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lg/gpo;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lg/abz;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzfb;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzey;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzer;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Lg/fsf;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lg/bc;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Lg/acl;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lg/apu;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Lg/dgw;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Lg/cqg;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzbd;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Lg/gvi;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Lg/etg;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Lg/cie;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Lg/nk;

    return-object p1

    :pswitch_14
    new-array p1, p1, [Lg/gyb;

    return-object p1

    :pswitch_15
    new-array p1, p1, [Lg/ctf;

    return-object p1

    :pswitch_16
    new-array p1, p1, [Lg/cde;

    return-object p1

    :pswitch_17
    new-array p1, p1, [Lg/fzo;

    return-object p1

    :pswitch_18
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzahi;

    return-object p1

    :pswitch_19
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzahg;

    return-object p1

    :pswitch_1a
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzahc;

    return-object p1

    :pswitch_1b
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzahd;

    return-object p1

    :pswitch_1c
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagz;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
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
