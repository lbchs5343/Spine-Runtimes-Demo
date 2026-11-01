.class public final Lg/gpi;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/gpi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I

.field private final zab:Lg/nk;

.field private final zac:Lg/cnd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/gpi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILg/nk;Lg/cnd;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/gpi;->zaa:I

    iput-object p2, p0, Lg/gpi;->zab:Lg/nk;

    iput-object p3, p0, Lg/gpi;->zac:Lg/cnd;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lg/gpi;->zaa:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v2, p0, Lg/gpi;->zab:Lg/nk;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lg/gpi;->zac:Lg/cnd;

    invoke-static {p1, v1, v2, p2}, Lg/egh;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zaa()Lg/nk;
    .locals 1

    iget-object v0, p0, Lg/gpi;->zab:Lg/nk;

    return-object v0
.end method

.method public final zab()Lg/cnd;
    .locals 1

    iget-object v0, p0, Lg/gpi;->zac:Lg/cnd;

    return-object v0
.end method
