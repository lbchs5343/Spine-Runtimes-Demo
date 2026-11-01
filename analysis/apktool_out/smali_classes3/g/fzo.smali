.class public Lg/fzo;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/fzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:I

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/fbe;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/fbe;-><init>(I)V

    sput-object v0, Lg/fzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/fzo;->zza:I

    iput-boolean p2, p0, Lg/fzo;->zzb:Z

    iput-boolean p3, p0, Lg/fzo;->zzc:Z

    iput p4, p0, Lg/fzo;->zzd:I

    iput p5, p0, Lg/fzo;->zze:I

    return-void
.end method


# virtual methods
.method public getBatchPeriodMillis()I
    .locals 1

    iget v0, p0, Lg/fzo;->zzd:I

    return v0
.end method

.method public getMaxMethodInvocationsInBatch()I
    .locals 1

    iget v0, p0, Lg/fzo;->zze:I

    return v0
.end method

.method public getMethodInvocationTelemetryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lg/fzo;->zzb:Z

    return v0
.end method

.method public getMethodTimingTelemetryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lg/fzo;->zzc:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lg/fzo;->zza:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result p2

    invoke-virtual {p0}, Lg/fzo;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/fzo;->getMethodInvocationTelemetryEnabled()Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/fzo;->getMethodTimingTelemetryEnabled()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/fzo;->getBatchPeriodMillis()I

    move-result v0

    invoke-static {p1, v2, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lg/fzo;->getMaxMethodInvocationsInBatch()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
