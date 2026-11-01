.class public final Lg/cfo;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lg/ch;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final synthetic c:Lg/gwy;


# direct methods
.method public constructor <init>(Lg/gwy;)V
    .locals 1

    iput-object p1, p0, Lg/cfo;->c:Lg/gwy;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object p1, Lg/ch;->a:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lg/cfo;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    sget-object v4, Lg/ch;->a:Ljava/lang/String;

    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const v5, 0xffffff

    if-gt p1, v5, :cond_0

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v5, 0x5f4e5446

    if-ne p1, v5, :cond_1

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :cond_1
    const/4 v4, 0x0

    iget-object v9, p0, Lg/cfo;->b:Landroid/os/Handler;

    iget-object v5, p0, Lg/cfo;->c:Lg/gwy;

    packed-switch p1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v2, Lg/bck;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lg/bck;-><init>(Lg/cfo;Landroid/os/Bundle;I)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    :pswitch_1
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v5, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v2, Lg/bck;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v0, v3}, Lg/bck;-><init>(Lg/cfo;Landroid/os/Bundle;I)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object v6, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v7, v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v10}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v7, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object v7, v2

    move v2, v0

    new-instance v0, Lg/dxd;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lg/dxd;-><init>(Lg/cfo;IIIIILandroid/os/Bundle;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    :pswitch_3
    move-object v7, v5

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v7, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v2, Lg/bck;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lg/bck;-><init>(Lg/cfo;Landroid/os/Bundle;I)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    :pswitch_4
    move-object v7, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v7, :cond_6

    goto/16 :goto_3

    :cond_6
    new-instance v4, Lg/djn;

    invoke-direct {v4, p0, v0, v3, v2}, Lg/djn;-><init>(Lg/cfo;IILandroid/os/Bundle;)V

    invoke-virtual {v9, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    :pswitch_5
    move-object v7, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v7, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v7, v0, v2}, Lg/gwy;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v8

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_6
    move-object v7, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x1

    :cond_9
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    if-nez v7, :cond_a

    goto/16 :goto_3

    :cond_a
    move v2, v0

    new-instance v0, Lg/fil;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lg/fil;-><init>(Lg/cfo;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    :pswitch_7
    move-object v7, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v7, :cond_b

    goto :goto_1

    :cond_b
    new-instance v4, Lg/fht;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v2, v5}, Lg/fht;-><init>(Lg/cfo;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v9, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_8
    move-object v7, v5

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v7, :cond_c

    goto :goto_2

    :cond_c
    new-instance v2, Lg/bck;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v0, v4}, Lg/bck;-><init>(Lg/cfo;Landroid/os/Bundle;I)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_9
    move-object v7, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v7, :cond_d

    goto :goto_3

    :cond_d
    new-instance v3, Lg/fht;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v2, v4}, Lg/fht;-><init>(Lg/cfo;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v9, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    :pswitch_a
    move-object v7, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lg/bff;->r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v7, :cond_e

    :goto_3
    return v8

    :cond_e
    new-instance v3, Lg/hdo;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v0, v2, v4}, Lg/hdo;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v9, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x2
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
