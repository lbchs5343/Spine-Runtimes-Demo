.class public Lg/axe;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/axe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zaa:I

.field private zab:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/axe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput p1, p0, Lg/axe;->zaa:I

    iput-object p2, p0, Lg/axe;->zab:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result p2

    iget v0, p0, Lg/axe;->zaa:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lg/axe;->zab:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lg/egh;->q(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, p2}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zaa()I
    .locals 1

    iget v0, p0, Lg/axe;->zaa:I

    return v0
.end method

.method public final zab()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/axe;->zab:Ljava/util/List;

    return-object v0
.end method

.method public final zac(Lg/brg;)V
    .locals 1

    iget-object v0, p0, Lg/axe;->zab:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/axe;->zab:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lg/axe;->zab:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
