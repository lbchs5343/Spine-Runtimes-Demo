.class public Lg/csf;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/csf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lg/fzo;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:[I

.field private final zze:I

.field private final zzf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqu;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/cqu;-><init>(I)V

    sput-object v0, Lg/csf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lg/fzo;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/csf;->zza:Lg/fzo;

    iput-boolean p2, p0, Lg/csf;->zzb:Z

    iput-boolean p3, p0, Lg/csf;->zzc:Z

    iput-object p4, p0, Lg/csf;->zzd:[I

    iput p5, p0, Lg/csf;->zze:I

    iput-object p6, p0, Lg/csf;->zzf:[I

    return-void
.end method


# virtual methods
.method public getMaxMethodInvocationsLogged()I
    .locals 1

    iget v0, p0, Lg/csf;->zze:I

    return v0
.end method

.method public getMethodInvocationMethodKeyAllowlist()[I
    .locals 1

    iget-object v0, p0, Lg/csf;->zzd:[I

    return-object v0
.end method

.method public getMethodInvocationMethodKeyDisallowlist()[I
    .locals 1

    iget-object v0, p0, Lg/csf;->zzf:[I

    return-object v0
.end method

.method public getMethodInvocationTelemetryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lg/csf;->zzb:Z

    return v0
.end method

.method public getMethodTimingTelemetryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lg/csf;->zzc:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lg/csf;->zza:Lg/fzo;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lg/csf;->getMethodInvocationTelemetryEnabled()Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/csf;->getMethodTimingTelemetryEnabled()Z

    move-result p2

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/csf;->getMethodInvocationMethodKeyAllowlist()[I

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    :goto_0
    invoke-virtual {p0}, Lg/csf;->getMaxMethodInvocationsLogged()I

    move-result p2

    const/4 v1, 0x5

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/csf;->getMethodInvocationMethodKeyDisallowlist()[I

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    invoke-static {p1, v1}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v1}, Lg/egh;->s(Landroid/os/Parcel;I)V

    :goto_1
    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lg/fzo;
    .locals 1

    iget-object v0, p0, Lg/csf;->zza:Lg/fzo;

    return-object v0
.end method
