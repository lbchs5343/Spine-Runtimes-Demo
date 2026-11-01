.class public final Lg/fhn;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic a:Lg/eeo;


# direct methods
.method public constructor <init>(Lg/eeo;)V
    .locals 0

    iput-object p1, p0, Lg/fhn;->a:Lg/eeo;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.gms.appset.internal.IAppSetIdCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const v0, 0xffffff

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_1
    if-ne p1, v1, :cond_7

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    sget p3, Lg/dfo;->a:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_2

    move-object p1, p4

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    :goto_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Lg/bc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move-object p2, p4

    goto :goto_1

    :cond_3
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    :goto_1
    check-cast p2, Lg/bc;

    if-eqz p2, :cond_4

    new-instance p4, Lg/fro;

    invoke-virtual {p2}, Lg/bc;->zzb()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lg/bc;->zza()I

    move-result p2

    invoke-direct {p4, p3, p2}, Lg/fro;-><init>(Ljava/lang/String;I)V

    :cond_4
    iget-object p2, p0, Lg/fhn;->a:Lg/eeo;

    iget-object p2, p2, Lg/eeo;->a:Lg/chw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2, p4}, Lg/chw;->m(Ljava/lang/Object;)V

    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Lg/dsh;

    invoke-direct {p3, p1}, Lg/dmw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_6
    new-instance p3, Lg/dmw;

    invoke-direct {p3, p1}, Lg/dmw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_2
    invoke-virtual {p2, p3}, Lg/chw;->l(Ljava/lang/Exception;)V

    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
