.class public Lg/ctg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/ctg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allianceArray:[Lg/fwx;

.field private header:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/ctg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/ctg;->header:Ljava/lang/String;

    sget-object v0, Lg/fwx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/fwx;

    iput-object p1, p0, Lg/ctg;->allianceArray:[Lg/fwx;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllianceArray()[Lg/fwx;
    .locals 1

    iget-object v0, p0, Lg/ctg;->allianceArray:[Lg/fwx;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ctg;->header:Ljava/lang/String;

    return-object v0
.end method

.method public setAllianceArray([Lg/fwx;)Lg/ctg;
    .locals 0

    iput-object p1, p0, Lg/ctg;->allianceArray:[Lg/fwx;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lg/ctg;
    .locals 0

    iput-object p1, p0, Lg/ctg;->header:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lg/ctg;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/ctg;->allianceArray:[Lg/fwx;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
