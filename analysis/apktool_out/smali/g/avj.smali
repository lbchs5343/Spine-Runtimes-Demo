.class public Lg/avj;
.super Landroid/view/ViewGroup$MarginLayoutParams;

# interfaces
.implements Lg/gth;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/avj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:F

.field private dq:I

.field private ia:I

.field private iw:I

.field private kk:I

.field private mn:I

.field private o:Z

.field private ox:F

.field private p:I

.field private s:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/avj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lg/avj;->dq:I

    const/4 p1, 0x0

    iput p1, p0, Lg/avj;->d:F

    iput p1, p0, Lg/avj;->ox:F

    const/4 p1, -0x1

    iput p1, p0, Lg/avj;->p:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lg/avj;->s:F

    iput p1, p0, Lg/avj;->iw:I

    iput p1, p0, Lg/avj;->mn:I

    const p1, 0xffffff

    iput p1, p0, Lg/avj;->ia:I

    iput p1, p0, Lg/avj;->kk:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, p0, Lg/avj;->dq:I

    const/4 v2, 0x0

    iput v2, p0, Lg/avj;->d:F

    iput v2, p0, Lg/avj;->ox:F

    const/4 v2, -0x1

    iput v2, p0, Lg/avj;->p:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lg/avj;->s:F

    iput v2, p0, Lg/avj;->iw:I

    iput v2, p0, Lg/avj;->mn:I

    const v2, 0xffffff

    iput v2, p0, Lg/avj;->ia:I

    iput v2, p0, Lg/avj;->kk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/avj;->dq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lg/avj;->d:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lg/avj;->ox:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/avj;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lg/avj;->s:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/avj;->iw:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/avj;->mn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/avj;->ia:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/avj;->kk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lg/avj;->o:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lg/avj;->dq:I

    const/4 p1, 0x0

    iput p1, p0, Lg/avj;->d:F

    iput p1, p0, Lg/avj;->ox:F

    const/4 p1, -0x1

    iput p1, p0, Lg/avj;->p:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lg/avj;->s:F

    iput p1, p0, Lg/avj;->iw:I

    iput p1, p0, Lg/avj;->mn:I

    const p1, 0xffffff

    iput p1, p0, Lg/avj;->ia:I

    iput p1, p0, Lg/avj;->kk:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lg/avj;->dq:I

    const/4 p1, 0x0

    iput p1, p0, Lg/avj;->d:F

    iput p1, p0, Lg/avj;->ox:F

    const/4 p1, -0x1

    iput p1, p0, Lg/avj;->p:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lg/avj;->s:F

    iput p1, p0, Lg/avj;->iw:I

    iput p1, p0, Lg/avj;->mn:I

    const p1, 0xffffff

    iput p1, p0, Lg/avj;->ia:I

    iput p1, p0, Lg/avj;->kk:I

    return-void
.end method

.method public constructor <init>(Lg/avj;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lg/avj;->dq:I

    const/4 v0, 0x0

    iput v0, p0, Lg/avj;->d:F

    iput v0, p0, Lg/avj;->ox:F

    const/4 v0, -0x1

    iput v0, p0, Lg/avj;->p:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lg/avj;->s:F

    iput v0, p0, Lg/avj;->iw:I

    iput v0, p0, Lg/avj;->mn:I

    const v0, 0xffffff

    iput v0, p0, Lg/avj;->ia:I

    iput v0, p0, Lg/avj;->kk:I

    iget v0, p1, Lg/avj;->dq:I

    iput v0, p0, Lg/avj;->dq:I

    iget v0, p1, Lg/avj;->d:F

    iput v0, p0, Lg/avj;->d:F

    iget v0, p1, Lg/avj;->ox:F

    iput v0, p0, Lg/avj;->ox:F

    iget v0, p1, Lg/avj;->p:I

    iput v0, p0, Lg/avj;->p:I

    iget v0, p1, Lg/avj;->s:F

    iput v0, p0, Lg/avj;->s:F

    iget v0, p1, Lg/avj;->iw:I

    iput v0, p0, Lg/avj;->iw:I

    iget v0, p1, Lg/avj;->mn:I

    iput v0, p0, Lg/avj;->mn:I

    iget v0, p1, Lg/avj;->ia:I

    iput v0, p0, Lg/avj;->ia:I

    iget v0, p1, Lg/avj;->kk:I

    iput v0, p0, Lg/avj;->kk:I

    iget-boolean p1, p1, Lg/avj;->o:Z

    iput-boolean p1, p0, Lg/avj;->o:Z

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lg/avj;->ox:F

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lg/avj;->mn:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return v0
.end method

.method public dq(F)V
    .locals 0

    iput p1, p0, Lg/avj;->d:F

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lg/avj;->iw:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return v0
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lg/avj;->mn:I

    return v0
.end method

.method public ig()F
    .locals 1

    iget v0, p0, Lg/avj;->s:F

    return v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lg/avj;->p:I

    return v0
.end method

.method public jy()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lg/avj;->ia:I

    return v0
.end method

.method public mn()I
    .locals 1

    iget v0, p0, Lg/avj;->iw:I

    return v0
.end method

.method public mp()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public no()Z
    .locals 1

    iget-boolean v0, p0, Lg/avj;->o:Z

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lg/avj;->kk:I

    return v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lg/avj;->dq:I

    return v0
.end method

.method public ox(F)V
    .locals 0

    iput p1, p0, Lg/avj;->s:F

    return-void
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lg/avj;->dq:I

    return-void
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lg/avj;->d:F

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lg/avj;->p:I

    return-void
.end method

.method public q()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method public s()F
    .locals 1

    iget v0, p0, Lg/avj;->ox:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lg/avj;->dq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/avj;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lg/avj;->ox:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lg/avj;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/avj;->s:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lg/avj;->iw:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/avj;->mn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/avj;->ia:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/avj;->kk:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/avj;->o:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
