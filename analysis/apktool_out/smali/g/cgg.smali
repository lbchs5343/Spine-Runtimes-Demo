.class public Lg/cgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/cgg;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_MODE_NORMAL:I = 0x0

.field public static final TOOL_MODE_TRIAL:I = 0x1


# instance fields
.field private code:I

.field private isMultiProcess:Z

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/cgg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/cgg;->code:I

    iput p2, p0, Lg/cgg;->mode:I

    iput-boolean p3, p0, Lg/cgg;->isMultiProcess:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/cgg;->code:I

    iput v0, p0, Lg/cgg;->mode:I

    iput-boolean v0, p0, Lg/cgg;->isMultiProcess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lg/cgg;->code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lg/cgg;->mode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lg/cgg;->isMultiProcess:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lg/cgg;->code:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lg/cgg;->mode:I

    return v0
.end method

.method public isMultiProcess()Z
    .locals 1

    iget-boolean v0, p0, Lg/cgg;->isMultiProcess:Z

    return v0
.end method

.method public isTrial()Z
    .locals 2

    invoke-virtual {p0}, Lg/cgg;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCode(I)Lg/cgg;
    .locals 0

    iput p1, p0, Lg/cgg;->code:I

    return-object p0
.end method

.method public setMode(I)Lg/cgg;
    .locals 0

    iput p1, p0, Lg/cgg;->mode:I

    return-object p0
.end method

.method public setMultiProcess(Z)Lg/cgg;
    .locals 0

    iput-boolean p1, p0, Lg/cgg;->isMultiProcess:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lg/cgg;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/cgg;->mode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/cgg;->isMultiProcess:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
