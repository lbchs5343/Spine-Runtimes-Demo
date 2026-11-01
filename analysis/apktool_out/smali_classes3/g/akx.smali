.class public final Lg/akx;
.super Lg/exk;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/akx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public afmaVersion:Ljava/lang/String;

.field public buddyApkVersion:I

.field public clientJarVersion:I

.field public isClientJar:Z

.field public isLiteSdk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqu;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lg/cqu;-><init>(I)V

    sput-object v0, Lg/akx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lg/akx;-><init>(IIZZZ)V

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lg/akx;-><init>(IIZZZ)V

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .locals 7

    if-eqz p3, :cond_0

    const-string p4, "0"

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-string p4, "2"

    goto :goto_0

    :cond_1
    const-string p4, "1"

    :goto_0
    const-string v0, "afma-sdk-a-v"

    const-string v1, "."

    invoke-static {p1, p2, v0, v1, v1}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lg/akx;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Lg/exk;-><init>()V

    iput-object p1, p0, Lg/akx;->afmaVersion:Ljava/lang/String;

    iput p2, p0, Lg/akx;->buddyApkVersion:I

    iput p3, p0, Lg/akx;->clientJarVersion:I

    iput-boolean p4, p0, Lg/akx;->isClientJar:Z

    iput-boolean p5, p0, Lg/akx;->isLiteSdk:Z

    return-void
.end method

.method public static forPackage()Lg/akx;
    .locals 3

    new-instance v0, Lg/akx;

    const v1, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lg/akx;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lg/egh;->af(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    iget-object v1, p0, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lg/egh;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lg/akx;->buddyApkVersion:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lg/akx;->clientJarVersion:I

    invoke-static {p1, v2, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/akx;->isClientJar:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/akx;->isLiteSdk:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, v2}, Lg/egh;->aq(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lg/egh;->s(Landroid/os/Parcel;I)V

    return-void
.end method
