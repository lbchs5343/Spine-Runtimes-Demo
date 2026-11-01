.class public final Lg/rj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/rj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/rj;->a:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagu;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :pswitch_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzags;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzags;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzago;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzago;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagf;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzagf;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagd;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagb;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzagb;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafv;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaft;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafr;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzafr;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzafo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzafo;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_e
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v14, v10

    move-object v15, v14

    move-object/from16 v18, v15

    move-object/from16 v21, v18

    move-wide v11, v4

    move-wide/from16 v16, v11

    move-wide/from16 v19, v16

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_f
    sget-object v4, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/ctf;

    move-object/from16 v21, v3

    goto :goto_0

    :pswitch_10
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v19, v3

    goto :goto_0

    :pswitch_11
    sget-object v4, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/ctf;

    move-object/from16 v18, v3

    goto :goto_0

    :pswitch_12
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_0

    :pswitch_13
    sget-object v4, Lg/ctf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/ctf;

    move-object v15, v3

    goto :goto_0

    :pswitch_14
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_0

    :pswitch_15
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v3

    move v13, v3

    goto :goto_0

    :pswitch_16
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v11, v3

    goto :goto_0

    :pswitch_17
    sget-object v4, Lg/cmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/cmd;

    move-object v10, v3

    goto :goto_0

    :pswitch_18
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    :pswitch_19
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v7, Lg/bou;

    invoke-direct/range {v7 .. v21}, Lg/bou;-><init>(Ljava/lang/String;Ljava/lang/String;Lg/cmd;JZLjava/lang/String;Lg/ctf;JLg/ctf;JLg/ctf;)V

    return-object v7

    :pswitch_1a
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v1, v5}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v1

    :pswitch_1b
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v4

    move-object v8, v7

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_9

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_4
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_2

    :cond_5
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_2

    :cond_6
    sget-object v4, Lg/nk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lg/nk;

    goto :goto_2

    :cond_7
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v7

    goto :goto_2

    :cond_8
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_2

    :cond_9
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v5, Lg/cnd;

    invoke-direct/range {v5 .. v10}, Lg/cnd;-><init>(ILandroid/os/IBinder;Lg/nk;ZZ)V

    return-object v5

    :pswitch_1c
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_e

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    const/4 v9, 0x2

    if-eq v8, v9, :cond_c

    const/4 v9, 0x3

    if-eq v8, v9, :cond_b

    const/4 v9, 0x4

    if-eq v8, v9, :cond_a

    invoke-static {v1, v7}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_a
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_3

    :cond_b
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_3

    :cond_c
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v3}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    goto :goto_3

    :cond_d
    invoke-static {v1, v7}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_3

    :cond_e
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/fty;

    invoke-direct {v1, v5, v3, v6, v4}, Lg/fty;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v1

    :pswitch_1d
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v16

    move-wide v12, v6

    move-wide v14, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_2

    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_1e
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v19, v3

    goto :goto_4

    :pswitch_1f
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_4

    :pswitch_20
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_4

    :pswitch_21
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_4

    :pswitch_22
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v14, v3

    goto :goto_4

    :pswitch_23
    invoke-static {v1, v3}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v3

    move-wide v12, v3

    goto :goto_4

    :pswitch_24
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v11, v3

    goto :goto_4

    :pswitch_25
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v10, v3

    goto :goto_4

    :pswitch_26
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v3

    move v9, v3

    goto :goto_4

    :cond_f
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v8, Lg/brg;

    invoke-direct/range {v8 .. v19}, Lg/brg;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v8

    :pswitch_27
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_13

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_12

    const/4 v8, 0x2

    if-eq v7, v8, :cond_11

    const/4 v8, 0x3

    if-eq v7, v8, :cond_10

    invoke-static {v1, v6}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_10
    sget-object v4, Lg/cnd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lg/cnd;

    goto :goto_5

    :cond_11
    sget-object v3, Lg/nk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/nk;

    goto :goto_5

    :cond_12
    invoke-static {v1, v6}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_5

    :cond_13
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/gpi;

    invoke-direct {v1, v5, v3, v4}, Lg/gpi;-><init>(ILg/nk;Lg/cnd;)V

    return-object v1

    :pswitch_28
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_16

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_15

    const/4 v7, 0x2

    if-eq v6, v7, :cond_14

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_14
    sget-object v3, Lg/fty;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lg/fty;

    goto :goto_6

    :cond_15
    invoke-static {v1, v5}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_6

    :cond_16
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/eto;

    invoke-direct {v1, v4, v3}, Lg/eto;-><init>(ILg/fty;)V

    return-object v1

    :pswitch_29
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_19

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_18

    const/4 v7, 0x2

    if-eq v6, v7, :cond_17

    invoke-static {v1, v5}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_17
    invoke-static {v1, v5}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_18
    invoke-static {v1, v5}, Lg/dyd;->ac(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_7

    :cond_19
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/eoj;

    invoke-direct {v1, v3, v4}, Lg/eoj;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :pswitch_2a
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-wide v15, v4

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_1b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    packed-switch v5, :pswitch_data_3

    invoke-static {v1, v4}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_8

    :pswitch_2b
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    goto :goto_8

    :pswitch_2c
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_8

    :pswitch_2d
    sget-object v5, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-nez v4, :cond_1a

    move-object/from16 v18, v3

    goto :goto_8

    :cond_1a
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v18, v5

    goto :goto_8

    :pswitch_2e
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    :pswitch_2f
    invoke-static {v1, v4}, Lg/dyd;->au(Landroid/os/Parcel;I)J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_8

    :pswitch_30
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :pswitch_31
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v5}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/net/Uri;

    goto :goto_8

    :pswitch_32
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :pswitch_33
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :pswitch_34
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :pswitch_35
    invoke-static {v1, v4}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :pswitch_36
    invoke-static {v1, v4}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    move v8, v4

    goto :goto_8

    :cond_1b
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-direct/range {v7 .. v20}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :pswitch_37
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_1f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1e

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1d

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1c

    invoke-static {v1, v6}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_1c
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_9

    :cond_1d
    invoke-static {v1, v6}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_9

    :cond_1e
    invoke-static {v1, v6}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_9

    :cond_1f
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/uh;

    invoke-direct {v1, v4, v5, v3}, Lg/uh;-><init>(IILandroid/content/Intent;)V

    return-object v1

    :pswitch_38
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    move-object v5, v3

    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_23

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_22

    const/4 v8, 0x2

    if-eq v7, v8, :cond_20

    invoke-static {v1, v6}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_20
    sget-object v5, Lg/brg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6}, Lg/dyd;->ae(Landroid/os/Parcel;I)I

    move-result v6

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v6, :cond_21

    goto :goto_a

    :cond_21
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_b

    :cond_22
    invoke-static {v1, v6}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_b

    :cond_23
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v1, Lg/axe;

    invoke-direct {v1, v4, v5}, Lg/axe;-><init>(ILjava/util/List;)V

    return-object v1

    :pswitch_39
    new-instance v2, Lg/gbt;

    invoke-direct {v2, v1}, Lg/gbt;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_3a
    new-instance v2, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    invoke-direct {v2, v1}, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_3b
    new-instance v2, Lg/fjv;

    invoke-direct {v2, v1}, Lg/fjv;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_3c
    new-instance v2, Lg/he;

    invoke-direct {v2, v1}, Lg/he;-><init>(Landroid/os/Parcel;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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

    :pswitch_data_1
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/rj;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagw;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagu;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzags;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagq;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzago;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagh;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagf;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagd;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzagb;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafz;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafx;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafv;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaft;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafr;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafo;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Lg/bou;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Lg/cnd;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Lg/fty;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Lg/brg;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Lg/gpi;

    return-object p1

    :pswitch_14
    new-array p1, p1, [Lg/eto;

    return-object p1

    :pswitch_15
    new-array p1, p1, [Lg/eoj;

    return-object p1

    :pswitch_16
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1

    :pswitch_17
    new-array p1, p1, [Lg/uh;

    return-object p1

    :pswitch_18
    new-array p1, p1, [Lg/axe;

    return-object p1

    :pswitch_19
    new-array p1, p1, [Lg/gbt;

    return-object p1

    :pswitch_1a
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    return-object p1

    :pswitch_1b
    new-array p1, p1, [Lg/fjv;

    return-object p1

    :pswitch_1c
    new-array p1, p1, [Lg/he;

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
