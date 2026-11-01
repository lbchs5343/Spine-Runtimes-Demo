.class public final Lcom/google/android/gms/internal/ads/zzbfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    invoke-static {v0}, Lg/dyd;->bl(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v10, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_0

    invoke-static {v0, v2}, Lg/dyd;->ai(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v2}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v15

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v2}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v2}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_0

    :pswitch_5
    sget-object v3, Lg/cpm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lg/dyd;->ab(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lg/cpm;

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v2}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v2}, Lg/dyd;->ad(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v2}, Lg/dyd;->ay(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lg/dyd;->ba(Landroid/os/Parcel;I)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzbfn;-><init>(IZIZILg/cpm;ZIIZI)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzbfn;

    return-object p1
.end method
