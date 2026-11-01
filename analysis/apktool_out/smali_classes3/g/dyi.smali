.class public final Lg/dyi;
.super Lcom/google/android/gms/internal/ads/zzayd;
.source "SourceFile"

# interfaces
.implements Lg/gag;


# instance fields
.field public final a:Lg/dhb;


# direct methods
.method public constructor <init>(Lg/dhb;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/dyi;->a:Lg/dhb;

    return-void
.end method


# virtual methods
.method public final l(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lg/dyi;->zze()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zze()V
    .locals 1

    iget-object v0, p0, Lg/dyi;->a:Lg/dhb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/dhb;->onAdMetadataChanged()V

    :cond_0
    return-void
.end method
