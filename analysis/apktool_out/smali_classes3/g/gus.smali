.class public final Lg/gus;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/gus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Landroid/os/Bundle;

.field zzb:[Lg/cqg;

.field zzc:I

.field zzd:Lg/csf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/cqu;-><init>(I)V

    sput-object v0, Lg/gus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Lg/cqg;ILg/csf;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/gus;->zza:Landroid/os/Bundle;

    iput-object p2, p0, Lg/gus;->zzb:[Lg/cqg;

    iput p3, p0, Lg/gus;->zzc:I

    iput-object p4, p0, Lg/gus;->zzd:Lg/csf;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lg/gus;->zza:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Lg/egh;->ac(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lg/gus;->zzb:[Lg/cqg;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->ah(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lg/gus;->zzc:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lg/gus;->zzd:Lg/csf;

    invoke-static {p1, v3, v1, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
