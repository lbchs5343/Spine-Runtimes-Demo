.class public final Lg/exy;
.super Lg/ob;
.source "SourceFile"

# interfaces
.implements Lg/gkq;


# virtual methods
.method public final zzi()Z
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lg/ob;->_ce(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lg/bon;->a:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
