.class public final Lg/dud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/dud;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lg/dhw;Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lg/dhw;->zzc:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lg/dhw;->zzd:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lg/dhw;->zze:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lg/dhw;->zzf:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lg/dhw;->zzg:Landroid/os/IBinder;

    invoke-static {p1, v1, v2}, Lg/egh;->az(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lg/dhw;->zzh:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->ah(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lg/dhw;->zzi:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Lg/egh;->ac(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lg/dhw;->zzj:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lg/dhw;->zzk:[Lg/cqg;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->ah(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lg/dhw;->zzl:[Lg/cqg;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->ah(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lg/dhw;->zzm:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/dhw;->zzn:I

    const/16 v1, 0xd

    invoke-static {p1, v1, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/dhw;->zzo:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    invoke-virtual {p0}, Lg/dhw;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lg/dud;->a:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lg/cgg;

    invoke-direct {v2, v1}, Lg/cgg;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_0
    new-instance v2, Lg/jp;

    invoke-direct {v2, v1}, Lg/jp;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1
    new-instance v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {v2, v1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_2
    new-instance v2, Lg/blc;

    invoke-direct {v2, v1}, Lg/blc;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_3
    new-instance v2, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    invoke-direct {v2, v1}, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_4
    new-instance v2, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v2, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_5
    new-instance v2, Lg/bn;

    invoke-direct {v2, v1}, Lg/bn;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_6
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v2, v1}, Lg/edj;->create(II)Lg/edj;

    move-result-object v1

    return-object v1

    :pswitch_7
    new-instance v2, Lg/ekt;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lg/ekt;-><init>(Landroid/os/Parcel;Lg/age;)V

    return-object v2

    :pswitch_8
    new-instance v2, Lg/bhj;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lg/bhj;-><init>(Landroid/os/Parcel;Lg/fmf;)V

    return-object v2

    :pswitch_9
    const-string v2, "inParcel"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lg/czn;

    invoke-direct {v2, v1}, Lg/czn;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_a
    new-instance v2, Lg/dgk;

    invoke-direct {v2, v1}, Lg/dgk;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_b
    new-instance v2, Landroidx/fragment/app/m;

    invoke-direct {v2, v1}, Landroidx/fragment/app/m;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_c
    new-instance v2, Landroidx/fragment/app/k;

    invoke-direct {v2, v1}, Landroidx/fragment/app/k;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_d
    new-instance v2, Lg/fob;

    invoke-direct {v2, v1}, Lg/fob;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_e
    new-instance v2, Lg/avj;

    invoke-direct {v2, v1}, Lg/avj;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_f
    new-instance v2, Lg/gll;

    invoke-direct {v2, v1}, Lg/gll;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_10
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v2, v1}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_11
    new-instance v2, Lg/fxe;

    invoke-direct {v2, v1}, Lg/fxe;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_12
    new-instance v2, Lg/avv;

    invoke-direct {v2, v1}, Lg/avv;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_13
    new-instance v2, Lmoe/shizuku/api/BinderContainer;

    invoke-direct {v2, v1}, Lmoe/shizuku/api/BinderContainer;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_14
    new-instance v2, Lg/cbf;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lg/cbf;-><init>(Landroid/os/Parcel;I)V

    return-object v2

    :pswitch_15
    new-instance v2, Landroidx/fragment/app/w;

    invoke-direct {v2, v1}, Landroidx/fragment/app/w;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_16
    new-instance v2, Landroidx/fragment/app/s;

    invoke-direct {v2, v1}, Landroidx/fragment/app/s;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_17
    new-instance v2, Lg/ddq;

    invoke-direct {v2, v1}, Lg/ddq;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_18
    new-instance v2, Lg/ctg;

    invoke-direct {v2, v1}, Lg/ctg;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_19
    new-instance v2, Lg/fwx;

    invoke-direct {v2, v1}, Lg/fwx;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1a
    new-instance v2, Lg/etm;

    invoke-direct {v2, v1}, Lg/etm;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1b
    new-instance v2, Lg/ejn;

    invoke-direct {v2, v1}, Lg/ejn;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_1c
    invoke-static {v1}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v2

    sget-object v3, Lg/dhw;->zza:[Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lg/dhw;->zzb:[Lg/cqg;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v17

    move-object v12, v6

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v22, v16

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    :pswitch_1d
    invoke-static {v1, v3}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1e
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    goto :goto_0

    :pswitch_1f
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v21

    goto :goto_0

    :pswitch_20
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v20

    goto :goto_0

    :pswitch_21
    invoke-static {v1, v3}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_0

    :pswitch_22
    sget-object v4, Lg/cqg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->an(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [Lg/cqg;

    goto :goto_0

    :pswitch_23
    sget-object v4, Lg/cqg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->an(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, [Lg/cqg;

    goto :goto_0

    :pswitch_24
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/accounts/Account;

    goto :goto_0

    :pswitch_25
    invoke-static {v1, v3}, Lg/dyd;->ax(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v15

    goto :goto_0

    :pswitch_26
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lg/dyd;->an(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_0

    :pswitch_27
    invoke-static {v1, v3}, Lg/dyd;->bo(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    goto :goto_0

    :pswitch_28
    invoke-static {v1, v3}, Lg/dyd;->bd(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :pswitch_29
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_0

    :pswitch_2a
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_0

    :pswitch_2b
    invoke-static {v1, v3}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v8, Lg/dhw;

    invoke-direct/range {v8 .. v22}, Lg/dhw;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lg/cqg;[Lg/cqg;ZIZLjava/lang/String;)V

    return-object v8

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_1d
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/dud;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lg/cgg;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lg/jp;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lg/blc;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lg/bn;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lg/edj;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Lg/ekt;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Lg/bhj;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Lg/czn;

    return-object p1

    :pswitch_a
    new-array p1, p1, [Lg/dgk;

    return-object p1

    :pswitch_b
    new-array p1, p1, [Landroidx/fragment/app/m;

    return-object p1

    :pswitch_c
    new-array p1, p1, [Landroidx/fragment/app/k;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Lg/fob;

    return-object p1

    :pswitch_e
    new-array p1, p1, [Lg/avj;

    return-object p1

    :pswitch_f
    new-array p1, p1, [Lg/gll;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Lg/fxe;

    return-object p1

    :pswitch_12
    new-array p1, p1, [Lg/avv;

    return-object p1

    :pswitch_13
    new-array p1, p1, [Lmoe/shizuku/api/BinderContainer;

    return-object p1

    :pswitch_14
    new-array p1, p1, [Lg/cbf;

    return-object p1

    :pswitch_15
    new-array p1, p1, [Landroidx/fragment/app/w;

    return-object p1

    :pswitch_16
    new-array p1, p1, [Landroidx/fragment/app/s;

    return-object p1

    :pswitch_17
    new-array p1, p1, [Lg/ddq;

    return-object p1

    :pswitch_18
    new-array p1, p1, [Lg/ctg;

    return-object p1

    :pswitch_19
    new-array p1, p1, [Lg/fwx;

    return-object p1

    :pswitch_1a
    new-array p1, p1, [Lg/etm;

    return-object p1

    :pswitch_1b
    new-array p1, p1, [Lg/ejn;

    return-object p1

    :pswitch_1c
    new-array p1, p1, [Lg/dhw;

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
