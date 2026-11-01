.class public final Lg/eto;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/eto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I

.field final zab:Lg/fty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/eto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILg/fty;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/eto;->zaa:I

    iput-object p2, p0, Lg/eto;->zab:Lg/fty;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lg/eto;->zaa:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v2, p0, Lg/eto;->zab:Lg/fty;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
