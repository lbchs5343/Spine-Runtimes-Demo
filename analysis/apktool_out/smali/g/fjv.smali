.class public Lg/fjv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/fjv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attraction:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private diffUrl:Ljava/lang/String;

.field private isDiffUpdate:Z

.field private isForce:Z

.field private isUpdateByDownload:Z

.field private md5:Ljava/lang/String;

.field private oldVersionCode:I

.field private packageName:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/fjv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/fjv;->versionCode:I

    iput-boolean v0, p0, Lg/fjv;->isUpdateByDownload:Z

    iput-boolean v0, p0, Lg/fjv;->isForce:Z

    iput-boolean v0, p0, Lg/fjv;->isDiffUpdate:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/fjv;->versionCode:I

    iput-boolean v0, p0, Lg/fjv;->isUpdateByDownload:Z

    iput-boolean v0, p0, Lg/fjv;->isForce:Z

    iput-boolean v0, p0, Lg/fjv;->isDiffUpdate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fjv;->version:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lg/fjv;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fjv;->attraction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fjv;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fjv;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lg/fjv;->isUpdateByDownload:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fjv;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lg/fjv;->isForce:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lg/fjv;->isDiffUpdate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/fjv;->oldVersionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/fjv;->diffUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/fjv;->md5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttraction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fjv;->attraction:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fjv;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDiffUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fjv;->diffUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fjv;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getOldVersionCode()I
    .locals 1

    iget v0, p0, Lg/fjv;->oldVersionCode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fjv;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fjv;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/fjv;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lg/fjv;->versionCode:I

    return v0
.end method

.method public isDiffUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lg/fjv;->isDiffUpdate:Z

    return v0
.end method

.method public isForce()Z
    .locals 1

    iget-boolean v0, p0, Lg/fjv;->isForce:Z

    return v0
.end method

.method public isUpdateByDownload()Z
    .locals 1

    iget-boolean v0, p0, Lg/fjv;->isUpdateByDownload:Z

    return v0
.end method

.method public setAttraction(Ljava/lang/String;)Lg/fjv;
    .locals 0

    iput-object p1, p0, Lg/fjv;->attraction:Ljava/lang/String;

    return-object p0
.end method

.method public setDesc(Ljava/lang/String;)Lg/fjv;
    .locals 0

    iput-object p1, p0, Lg/fjv;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public setDiffUpdate(Z)Lg/fjv;
    .locals 0

    iput-boolean p1, p0, Lg/fjv;->isDiffUpdate:Z

    return-object p0
.end method

.method public setDiffUrl(Ljava/lang/String;)Lg/fjv;
    .locals 0

    iput-object p1, p0, Lg/fjv;->diffUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setForce(Z)Lg/fjv;
    .locals 0

    iput-boolean p1, p0, Lg/fjv;->isForce:Z

    return-object p0
.end method

.method public setMd5(Ljava/lang/String;)Lg/fjv;
    .locals 0

    iput-object p1, p0, Lg/fjv;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public setOldVersionCode(I)Lg/fjv;
    .locals 0

    iput p1, p0, Lg/fjv;->oldVersionCode:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lg/fjv;
    .locals 0

    iput-object p1, p0, Lg/fjv;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdateByDownload(Z)Lg/fjv;
    .locals 0

    iput-boolean p1, p0, Lg/fjv;->isUpdateByDownload:Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lg/fjv;
    .locals 0

    iput-object p1, p0, Lg/fjv;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lg/fjv;
    .locals 0

    iput-object p1, p0, Lg/fjv;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lg/fjv;
    .locals 0

    iput p1, p0, Lg/fjv;->versionCode:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lg/fjv;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lg/fjv;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lg/fjv;->attraction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fjv;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fjv;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fjv;->isUpdateByDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/fjv;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fjv;->isForce:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/fjv;->isDiffUpdate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lg/fjv;->oldVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lg/fjv;->diffUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fjv;->md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
