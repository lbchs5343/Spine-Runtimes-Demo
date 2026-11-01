.class public final Lg/cbl;
.super Lcom/google/android/gms/internal/ads/zzayd;
.source "SourceFile"

# interfaces
.implements Lg/aik;


# virtual methods
.method public final a(Lg/ghd;)V
    .locals 2

    invoke-static {p1}, Lg/bza;->m(Lg/ghd;)Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lg/xw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/xw;-><init>(Lg/cbl;I)V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lg/ghd;)V
    .locals 2

    invoke-static {p1}, Lg/bza;->m(Lg/ghd;)Lj$/util/Optional;

    move-result-object p1

    new-instance v0, Lg/xw;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/xw;-><init>(Lg/cbl;I)V

    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final l(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lg/ghd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ghd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/cbl;->b(Lg/ghd;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lg/ghd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lg/ghd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lg/cbl;->a(Lg/ghd;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
