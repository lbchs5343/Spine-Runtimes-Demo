.class public final Lg/ckg;
.super Lg/ob;
.source "SourceFile"

# interfaces
.implements Lg/ake;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lg/cmd;Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Lg/afh;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    invoke-virtual {p0, v0, p1}, Lg/ob;->_cf(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg/bou;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0x11

    invoke-virtual {p0, p1, p2}, Lg/ob;->_cf(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg/bou;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final g(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final j(Landroid/os/Bundle;Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final k(Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final l(Lg/afh;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1}, Lg/ob;->_cf(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final m(Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final n(Lg/ctf;Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final o(Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;ZLg/afh;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object p1, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1}, Lg/ob;->_cf(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg/cmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final r(Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final s(Lg/bou;Lg/afh;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object p2, Lg/m;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    invoke-virtual {p0, p1, p2}, Lg/ob;->_cf(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lg/cmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final w(Lg/ctf;Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Lg/ob;->_cf(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
