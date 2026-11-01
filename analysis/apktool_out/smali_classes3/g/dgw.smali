.class public final Lg/dgw;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/dgw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Z

.field private final zzb:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fbe;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lg/fbe;-><init>(I)V

    sput-object v0, Lg/dgw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Lg/cre;Lg/hag;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(ZLandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-boolean p1, p0, Lg/dgw;->zza:Z

    iput-object p2, p0, Lg/dgw;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getManualImpressionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lg/dgw;->zza:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result p2

    invoke-virtual {p0}, Lg/dgw;->getManualImpressionsEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lg/dgw;->zzb:Landroid/os/IBinder;

    invoke-static {p1, v0, v1}, Lg/egh;->az(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, p2}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzbhp;
    .locals 1

    iget-object v0, p0, Lg/dgw;->zzb:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbho;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbhp;

    move-result-object v0

    return-object v0
.end method
