.class public abstract Lg/ejv;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lg/anf;


# static fields
.field public static final synthetic o:I


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "b.e.f"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_9

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const v0, 0xffff9b

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_2
    move-object p1, p0

    check-cast p1, Lb/c/e;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iget p1, p1, Lb/c/e;->e:I

    if-eq p2, p1, :cond_4

    if-eqz p2, :cond_4

    const/16 p1, 0x7d0

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Unexpected caller"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_5
    move-object p1, p0

    check-cast p1, Lb/c/e;

    invoke-virtual {p1}, Lb/c/e;->m()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lg/erl;->ah(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :cond_6
    move-object p1, p0

    check-cast p1, Lb/c/e;

    invoke-virtual {p1}, Lb/c/e;->k()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lg/erl;->ah(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    const/4 v2, 0x1

    :cond_8
    move-object p2, p0

    check-cast p2, Lb/c/e;

    invoke-virtual {p2, p4, p1, v2}, Lb/c/e;->h(ILjava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lg/erl;->ah(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lb/c/e;

    invoke-virtual {p2, p1}, Lb/c/e;->l(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lg/erl;->ah(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    return v1
.end method
