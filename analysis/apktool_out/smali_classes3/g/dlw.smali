.class public final Lg/dlw;
.super Lg/ob;
.source "SourceFile"

# interfaces
.implements Lg/ddw;


# virtual methods
.method public final zzc()I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final zzd()Lg/bjq;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lg/dub;->e(Landroid/os/Parcel;)Lg/bjq;

    move-result-object v0

    return-object v0
.end method
