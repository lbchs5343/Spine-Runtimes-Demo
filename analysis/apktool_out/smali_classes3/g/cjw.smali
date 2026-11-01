.class public final Lg/cjw;
.super Lg/ob;
.source "SourceFile"

# interfaces
.implements Lg/brv;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lg/ob;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final zzd(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lg/ob;->_cd()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lg/m;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lg/ob;->i(Landroid/os/Parcel;I)V

    return-void
.end method
