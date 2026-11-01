.class public Lg/gll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/gll;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadId:J

.field private isDiff:Z

.field private packageName:Ljava/lang/String;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/gll;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/gll;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lg/gll;->isDiff:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lg/gll;->downloadId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lg/gll;->time:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gll;->packageName:Ljava/lang/String;

    iput-boolean p2, p0, Lg/gll;->isDiff:Z

    iput-wide p3, p0, Lg/gll;->downloadId:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lg/gll;->time:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadId()J
    .locals 2

    iget-wide v0, p0, Lg/gll;->downloadId:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gll;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lg/gll;->time:J

    return-wide v0
.end method

.method public isDiff()Z
    .locals 1

    iget-boolean v0, p0, Lg/gll;->isDiff:Z

    return v0
.end method

.method public setDiff(Z)Lg/gll;
    .locals 0

    iput-boolean p1, p0, Lg/gll;->isDiff:Z

    return-object p0
.end method

.method public setDownloadId(J)Lg/gll;
    .locals 0

    iput-wide p1, p0, Lg/gll;->downloadId:J

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lg/gll;
    .locals 0

    iput-object p1, p0, Lg/gll;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setTime(J)Lg/gll;
    .locals 0

    iput-wide p1, p0, Lg/gll;->time:J

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lg/gll;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/gll;->isDiff:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lg/gll;->downloadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lg/gll;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
