.class public final Lg/afi;
.super Lg/ob;
.source "SourceFile"


# virtual methods
.method public final a(Lg/bpp;Ljava/lang/String;I)Lg/bjq;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/bon;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lg/dub;->e(Landroid/os/Parcel;)Lg/bjq;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lg/bpp;Ljava/lang/String;ILg/bpp;)Lg/bjq;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/bon;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Lg/bon;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lg/dub;->e(Landroid/os/Parcel;)Lg/bjq;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lg/bpp;Ljava/lang/String;I)Lg/bjq;
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/bon;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lg/dub;->e(Landroid/os/Parcel;)Lg/bjq;

    move-result-object p1

    return-object p1
.end method
