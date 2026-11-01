.class public Lg/fxe$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/fxe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/fxe$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adDesc:Ljava/lang/String;

.field public adPosition:I

.field public adTitle:Ljava/lang/String;

.field public adUrl:Ljava/lang/String;

.field public fullAdInterval:I

.field public googleAdTips:Ljava/lang/String;

.field public isCooking:Z

.field public isOnlyZHCN:Z

.field public isShowAd:Z

.field public isShowBrothers:Z

.field public isShowGoogleAd:Z

.field public isShowJobs:Z

.field public isShowNativeAdForWeb:Z

.field public isShowNewSecond:Z

.field public isShowWeChat:Z

.field public jobsTitle:Ljava/lang/String;

.field public jobsUrl:Ljava/lang/String;

.field public resources:[Lg/dgk;

.field public weChatDesc:Ljava/lang/String;

.field public weChatId:Ljava/lang/String;

.field public weChatImageUrl:Ljava/lang/String;

.field public weChatTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cts;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fxe$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fxe$e;->isShowGoogleAd:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/fxe$e;->isShowNativeAdForWeb:Z

    iput-boolean v1, p0, Lg/fxe$e;->isCooking:Z

    iput-boolean v0, p0, Lg/fxe$e;->isShowBrothers:Z

    iput-boolean v0, p0, Lg/fxe$e;->isShowNewSecond:Z

    const/4 v2, 0x3

    iput v2, p0, Lg/fxe$e;->fullAdInterval:I

    iput-boolean v1, p0, Lg/fxe$e;->isShowJobs:Z

    iput-boolean v0, p0, Lg/fxe$e;->isShowAd:Z

    iput-boolean v0, p0, Lg/fxe$e;->isOnlyZHCN:Z

    const/16 v0, 0x100

    iput v0, p0, Lg/fxe$e;->adPosition:I

    iput-boolean v1, p0, Lg/fxe$e;->isShowWeChat:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fxe$e;->isShowGoogleAd:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/fxe$e;->isShowNativeAdForWeb:Z

    iput-boolean v1, p0, Lg/fxe$e;->isCooking:Z

    iput-boolean v0, p0, Lg/fxe$e;->isShowBrothers:Z

    iput-boolean v0, p0, Lg/fxe$e;->isShowNewSecond:Z

    const/4 v2, 0x3

    iput v2, p0, Lg/fxe$e;->fullAdInterval:I

    iput-boolean v1, p0, Lg/fxe$e;->isShowJobs:Z

    iput-boolean v0, p0, Lg/fxe$e;->isShowAd:Z

    iput-boolean v0, p0, Lg/fxe$e;->isOnlyZHCN:Z

    const/16 v2, 0x100

    iput v2, p0, Lg/fxe$e;->adPosition:I

    iput-boolean v1, p0, Lg/fxe$e;->isShowWeChat:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lg/fxe$e;->isShowGoogleAd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lg/fxe$e;->isShowNativeAdForWeb:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/fxe$e;->googleAdTips:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lg/fxe$e;->isCooking:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lg/fxe$e;->isShowBrothers:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lg/fxe$e;->isShowNewSecond:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/fxe$e;->fullAdInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lg/fxe$e;->isShowJobs:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/fxe$e;->jobsTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/fxe$e;->jobsUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lg/fxe$e;->isShowAd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, p0, Lg/fxe$e;->isOnlyZHCN:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/fxe$e;->adTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/fxe$e;->adDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg/fxe$e;->adUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lg/fxe$e;->adPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lg/fxe$e;->isShowWeChat:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/fxe$e;->weChatTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/fxe$e;->weChatDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/fxe$e;->weChatId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/fxe$e;->weChatImageUrl:Ljava/lang/String;

    sget-object v0, Lg/dgk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/dgk;

    iput-object p1, p0, Lg/fxe$e;->resources:[Lg/dgk;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/fxe$e;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lg/fxe$e;

    iget-boolean v0, p0, Lg/fxe$e;->isShowGoogleAd:Z

    iget-boolean v2, p1, Lg/fxe$e;->isShowGoogleAd:Z

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lg/fxe$e;->isShowNativeAdForWeb:Z

    iget-boolean v2, p1, Lg/fxe$e;->isShowNativeAdForWeb:Z

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lg/fxe$e;->isCooking:Z

    iget-boolean v2, p1, Lg/fxe$e;->isCooking:Z

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lg/fxe$e;->isShowBrothers:Z

    iget-boolean v2, p1, Lg/fxe$e;->isShowBrothers:Z

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    iget-boolean v0, p0, Lg/fxe$e;->isShowNewSecond:Z

    iget-boolean v2, p1, Lg/fxe$e;->isShowNewSecond:Z

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lg/fxe$e;->fullAdInterval:I

    iget v2, p1, Lg/fxe$e;->fullAdInterval:I

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget-boolean v0, p0, Lg/fxe$e;->isShowJobs:Z

    iget-boolean v2, p1, Lg/fxe$e;->isShowJobs:Z

    if-eq v0, v2, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Lg/fxe$e;->isShowAd:Z

    iget-boolean v2, p1, Lg/fxe$e;->isShowAd:Z

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    iget-boolean v0, p0, Lg/fxe$e;->isOnlyZHCN:Z

    iget-boolean v2, p1, Lg/fxe$e;->isOnlyZHCN:Z

    if-eq v0, v2, :cond_a

    return v1

    :cond_a
    iget v0, p0, Lg/fxe$e;->adPosition:I

    iget v2, p1, Lg/fxe$e;->adPosition:I

    if-eq v0, v2, :cond_b

    return v1

    :cond_b
    iget-boolean v0, p0, Lg/fxe$e;->isShowWeChat:Z

    iget-boolean v2, p1, Lg/fxe$e;->isShowWeChat:Z

    if-eq v0, v2, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lg/fxe$e;->googleAdTips:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->googleAdTips:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lg/fxe$e;->jobsTitle:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->jobsTitle:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lg/fxe$e;->jobsUrl:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->jobsUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lg/fxe$e;->adTitle:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->adTitle:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    :cond_10
    iget-object v0, p0, Lg/fxe$e;->adDesc:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->adDesc:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Lg/fxe$e;->adUrl:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->adUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget-object v0, p0, Lg/fxe$e;->weChatTitle:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->weChatTitle:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lg/fxe$e;->weChatDesc:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->weChatDesc:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lg/fxe$e;->weChatId:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->weChatId:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Lg/fxe$e;->weChatImageUrl:Ljava/lang/String;

    iget-object v2, p1, Lg/fxe$e;->weChatImageUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Lg/fxe$e;->resources:[Lg/dgk;

    iget-object p1, p1, Lg/fxe$e;->resources:[Lg/dgk;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lg/fxe$e;->isShowGoogleAd:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isShowNativeAdForWeb:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->googleAdTips:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isCooking:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isShowBrothers:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isShowNewSecond:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/fxe$e;->fullAdInterval:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isShowJobs:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->jobsTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->jobsUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isShowAd:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isOnlyZHCN:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->adTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->adDesc:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->adUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/fxe$e;->adPosition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lg/fxe$e;->isShowWeChat:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->weChatTitle:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->weChatDesc:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->weChatId:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->weChatImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/fxe$e;->resources:[Lg/dgk;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Lg/fxe$e;->isShowGoogleAd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lg/fxe$e;->isShowNativeAdForWeb:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lg/fxe$e;->googleAdTips:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/fxe$e;->isCooking:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lg/fxe$e;->isShowBrothers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lg/fxe$e;->isShowNewSecond:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lg/fxe$e;->fullAdInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/fxe$e;->isShowJobs:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lg/fxe$e;->jobsTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxe$e;->jobsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lg/fxe$e;->isShowAd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lg/fxe$e;->isOnlyZHCN:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lg/fxe$e;->adTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxe$e;->adDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxe$e;->adUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lg/fxe$e;->adPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lg/fxe$e;->isShowWeChat:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lg/fxe$e;->weChatTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxe$e;->weChatDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxe$e;->weChatId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxe$e;->weChatImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lg/fxe$e;->resources:[Lg/dgk;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
