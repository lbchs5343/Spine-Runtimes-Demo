.class public Lg/gbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/gbt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private initSubTitle:Ljava/lang/String;

.field private initTitle:Ljava/lang/String;

.field private initUrl:Ljava/lang/String;

.field private isAutoSetSubTitle:Z

.field private isAutoSetTitle:Z

.field private isCopyLinkable:Z

.field private isFindAble:Z

.field private isFindShowed:Z

.field private isLineNumberChecked:Z

.field private isLineNumberable:Z

.field private isOpenWithOtherApp:Z

.field private isShareable:Z

.field private isShortcutable:Z

.field private isShowOverrideFailTips:Z

.field private isSubtitleShowFullUrl:Z

.field private isWrapChecked:Z

.field private isWrapable:Z

.field private isZoomChecked:Z

.field private isZoomable:Z

.field private shareAttachmentText:Ljava/lang/String;

.field private uaAppName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/rj;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/rj;-><init>(I)V

    sput-object v0, Lg/gbt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/gbt;->isAutoSetSubTitle:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lg/gbt;->shareAttachmentText:Ljava/lang/String;

    iput-object v1, p0, Lg/gbt;->uaAppName:Ljava/lang/String;

    iput-boolean v0, p0, Lg/gbt;->isShareable:Z

    iput-boolean v0, p0, Lg/gbt;->isShortcutable:Z

    iput-boolean v0, p0, Lg/gbt;->isCopyLinkable:Z

    iput-boolean v0, p0, Lg/gbt;->isZoomable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/gbt;->isZoomChecked:Z

    iput-boolean v0, p0, Lg/gbt;->isOpenWithOtherApp:Z

    iput-boolean v1, p0, Lg/gbt;->isSubtitleShowFullUrl:Z

    iput-boolean v0, p0, Lg/gbt;->isShowOverrideFailTips:Z

    iput-boolean v0, p0, Lg/gbt;->isFindAble:Z

    iput-boolean v1, p0, Lg/gbt;->isFindShowed:Z

    iput-boolean v1, p0, Lg/gbt;->isWrapable:Z

    iput-boolean v1, p0, Lg/gbt;->isWrapChecked:Z

    iput-boolean v1, p0, Lg/gbt;->isLineNumberable:Z

    iput-boolean v0, p0, Lg/gbt;->isLineNumberChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lg/gbt;->isAutoSetTitle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lg/gbt;->isAutoSetSubTitle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/gbt;->shareAttachmentText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/gbt;->initTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/gbt;->initSubTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/gbt;->initUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/gbt;->uaAppName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lg/gbt;->isShareable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lg/gbt;->isShortcutable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lg/gbt;->isCopyLinkable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lg/gbt;->isZoomable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lg/gbt;->isZoomChecked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lg/gbt;->isOpenWithOtherApp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lg/gbt;->isSubtitleShowFullUrl:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lg/gbt;->isShowOverrideFailTips:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, p0, Lg/gbt;->isFindAble:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Lg/gbt;->isFindShowed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lg/gbt;->isWrapable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lg/gbt;->isWrapChecked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lg/gbt;->isLineNumberable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    iput-boolean v1, p0, Lg/gbt;->isLineNumberChecked:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInitSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gbt;->initSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getInitTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gbt;->initTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getInitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gbt;->initUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareAttachmentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gbt;->shareAttachmentText:Ljava/lang/String;

    return-object v0
.end method

.method public getUAAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gbt;->uaAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getUaAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gbt;->uaAppName:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoSetSubTitle()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isAutoSetSubTitle:Z

    return v0
.end method

.method public isAutoSetTitle()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isAutoSetTitle:Z

    return v0
.end method

.method public isCopyLinkable()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isCopyLinkable:Z

    return v0
.end method

.method public isFindAble()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isFindAble:Z

    return v0
.end method

.method public isFindShowed()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isFindShowed:Z

    return v0
.end method

.method public isLineNumberChecked()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isLineNumberChecked:Z

    return v0
.end method

.method public isLineNumberable()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isLineNumberable:Z

    return v0
.end method

.method public isOpenWithOtherApp()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isOpenWithOtherApp:Z

    return v0
.end method

.method public isShareable()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isShareable:Z

    return v0
.end method

.method public isShortcutable()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isShortcutable:Z

    return v0
.end method

.method public isShowOverrideFailTips()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isShowOverrideFailTips:Z

    return v0
.end method

.method public isSubtitleShowFullUrl()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isSubtitleShowFullUrl:Z

    return v0
.end method

.method public isWrapChecked()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isWrapChecked:Z

    return v0
.end method

.method public isWrapable()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isWrapable:Z

    return v0
.end method

.method public isZoomChecked()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isZoomChecked:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    iget-boolean v0, p0, Lg/gbt;->isZoomable:Z

    return v0
.end method

.method public setAutoSetSubTitle(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isAutoSetSubTitle:Z

    return-object p0
.end method

.method public setAutoSetTitle(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isAutoSetTitle:Z

    return-object p0
.end method

.method public setCopyLinkable(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isCopyLinkable:Z

    return-object p0
.end method

.method public setFindAble(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isFindAble:Z

    return-void
.end method

.method public setFindShowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isFindShowed:Z

    return-void
.end method

.method public setInitSubTitle(Ljava/lang/String;)Lg/gbt;
    .locals 0

    iput-object p1, p0, Lg/gbt;->initSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setInitTitle(Ljava/lang/String;)Lg/gbt;
    .locals 0

    iput-object p1, p0, Lg/gbt;->initTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setInitUrl(Ljava/lang/String;)Lg/gbt;
    .locals 0

    iput-object p1, p0, Lg/gbt;->initUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setLineNumberChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isLineNumberChecked:Z

    return-void
.end method

.method public setLineNumberable(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isLineNumberable:Z

    return-void
.end method

.method public setOpenWithOtherApp(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isOpenWithOtherApp:Z

    return-object p0
.end method

.method public setShareAttachmentText(Ljava/lang/String;)Lg/gbt;
    .locals 0

    iput-object p1, p0, Lg/gbt;->shareAttachmentText:Ljava/lang/String;

    return-object p0
.end method

.method public setShareable(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isShareable:Z

    return-object p0
.end method

.method public setShortcutable(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isShortcutable:Z

    return-object p0
.end method

.method public setShowOverrideFailTips(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isShowOverrideFailTips:Z

    return-object p0
.end method

.method public setSubtitleShowFullUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isSubtitleShowFullUrl:Z

    return-void
.end method

.method public setUAAppName(Ljava/lang/String;)Lg/gbt;
    .locals 0

    iput-object p1, p0, Lg/gbt;->uaAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setUaAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/gbt;->uaAppName:Ljava/lang/String;

    return-void
.end method

.method public setWrapChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isWrapChecked:Z

    return-void
.end method

.method public setWrapable(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isWrapable:Z

    return-void
.end method

.method public setZoomChecked(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isZoomChecked:Z

    return-object p0
.end method

.method public setZoomable(Z)Lg/gbt;
    .locals 0

    iput-boolean p1, p0, Lg/gbt;->isZoomable:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lg/gbt;->isAutoSetTitle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isAutoSetSubTitle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/gbt;->shareAttachmentText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/gbt;->initTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/gbt;->initSubTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/gbt;->initUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/gbt;->uaAppName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/gbt;->isShareable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isShortcutable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isCopyLinkable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isZoomable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isZoomChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isOpenWithOtherApp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isSubtitleShowFullUrl:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isShowOverrideFailTips:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isFindAble:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isFindShowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isWrapable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isWrapChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isLineNumberable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lg/gbt;->isLineNumberChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
