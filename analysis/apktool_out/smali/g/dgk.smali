.class public Lg/dgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cng;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/dgk;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_AREA_BOTTOM:I = 0x100

.field public static final DISPLAY_AREA_CENTER:I = 0x10

.field public static final DISPLAY_AREA_NONE:I = 0x0

.field public static final DISPLAY_AREA_TOP:I = 0x1

.field public static final ICON_TYPE_LOCAL_IMAGE_RES:I = 0x1

.field public static final ICON_TYPE_ONLINE_IMAGE:I = 0x2

.field public static final ICON_TYPE_TEXT:I = 0x3

.field public static final PATH_COMPONENT:I = 0x3

.field public static final PATH_LOCAL_PACKAGE:I = 0x2

.field public static final PATH_URI:I = 0x4

.field public static final PATH_URL:I = 0x5

.field public static final PATH_URL_IN_APP:I = 0x1

.field public static final SHOW_ALL:I = 0x11111111

.field public static final SHOW_NOT:I = 0x0

.field public static final SHOW_ONLY_EN:I = 0x1

.field public static final SHOW_ONLY_ZH_CN:I = 0x10

.field public static final UNIT_DAY:Ljava/lang/String; = "day"

.field public static final UNIT_HOUR:Ljava/lang/String; = "hour"

.field public static final UNIT_MINUTE:Ljava/lang/String; = "minute"

.field public static final UNIT_SECOND:Ljava/lang/String; = "second"


# instance fields
.field private beginDate:Ljava/lang/String;

.field private copyText:Ljava/lang/String;

.field private cornerTipIconUrl:Ljava/lang/String;

.field public cornerTipInterval:I

.field public cornerTipIntervalUnit:Ljava/lang/String;

.field private displayArea:I

.field private endDate:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private iconResId:I

.field private iconText:Ljava/lang/String;

.field private iconType:I

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isShowCornerTip:Z

.field private isSpace:Z

.field private maxSdkVersion:I

.field private minSdkVersion:I

.field private name:Ljava/lang/String;

.field private nameResId:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field public path:Ljava/lang/String;

.field public pathType:I

.field private show:I

.field private toast:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/dgk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/dgk;->nameResId:I

    const/4 v1, 0x1

    iput v1, p0, Lg/dgk;->iconType:I

    iput v0, p0, Lg/dgk;->iconResId:I

    const v2, 0x11111111

    iput v2, p0, Lg/dgk;->show:I

    const/4 v2, 0x0

    iput v2, p0, Lg/dgk;->displayArea:I

    const/4 v3, 0x2

    iput v3, p0, Lg/dgk;->pathType:I

    iput v0, p0, Lg/dgk;->minSdkVersion:I

    iput v0, p0, Lg/dgk;->maxSdkVersion:I

    iput-boolean v2, p0, Lg/dgk;->isShowCornerTip:Z

    const-string v0, "day"

    iput-object v0, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    iput v1, p0, Lg/dgk;->cornerTipInterval:I

    iput-boolean v2, p0, Lg/dgk;->isSpace:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/dgk;->nameResId:I

    const/4 v1, 0x1

    iput v1, p0, Lg/dgk;->iconType:I

    iput v0, p0, Lg/dgk;->iconResId:I

    const v2, 0x11111111

    iput v2, p0, Lg/dgk;->show:I

    const/4 v2, 0x0

    iput v2, p0, Lg/dgk;->displayArea:I

    const/4 v3, 0x2

    iput v3, p0, Lg/dgk;->pathType:I

    iput v0, p0, Lg/dgk;->minSdkVersion:I

    iput v0, p0, Lg/dgk;->maxSdkVersion:I

    iput-boolean v2, p0, Lg/dgk;->isShowCornerTip:Z

    const-string v0, "day"

    iput-object v0, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    iput v1, p0, Lg/dgk;->cornerTipInterval:I

    iput-boolean v2, p0, Lg/dgk;->isSpace:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->nameResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->iconType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->iconResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->iconText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->show:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->displayArea:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->pathType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->path:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->eventId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->copyText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->toast:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->cornerTipInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->minSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/dgk;->maxSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lg/dgk;->isShowCornerTip:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->cornerTipIconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lg/dgk;->isSpace:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/dgk;->endDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x11111111

    iput v0, p0, Lg/dgk;->show:I

    const/4 v0, 0x0

    iput v0, p0, Lg/dgk;->displayArea:I

    const/4 v1, 0x2

    iput v1, p0, Lg/dgk;->pathType:I

    const/4 v1, -0x1

    iput v1, p0, Lg/dgk;->minSdkVersion:I

    iput v1, p0, Lg/dgk;->maxSdkVersion:I

    iput-boolean v0, p0, Lg/dgk;->isShowCornerTip:Z

    const-string v1, "day"

    iput-object v1, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lg/dgk;->cornerTipInterval:I

    iput-boolean v0, p0, Lg/dgk;->isSpace:Z

    iput-object p1, p0, Lg/dgk;->id:Ljava/lang/String;

    iput p2, p0, Lg/dgk;->nameResId:I

    iput p3, p0, Lg/dgk;->iconResId:I

    iput v1, p0, Lg/dgk;->iconType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/dgk;->nameResId:I

    const v1, 0x11111111

    iput v1, p0, Lg/dgk;->show:I

    const/4 v1, 0x0

    iput v1, p0, Lg/dgk;->displayArea:I

    const/4 v2, 0x2

    iput v2, p0, Lg/dgk;->pathType:I

    iput v0, p0, Lg/dgk;->minSdkVersion:I

    iput v0, p0, Lg/dgk;->maxSdkVersion:I

    iput-boolean v1, p0, Lg/dgk;->isShowCornerTip:Z

    const-string v0, "day"

    iput-object v0, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lg/dgk;->cornerTipInterval:I

    iput-boolean v1, p0, Lg/dgk;->isSpace:Z

    iput-object p1, p0, Lg/dgk;->id:Ljava/lang/String;

    iput-object p2, p0, Lg/dgk;->name:Ljava/lang/String;

    iput p3, p0, Lg/dgk;->iconResId:I

    iput v0, p0, Lg/dgk;->iconType:I

    return-void
.end method

.method public static isShowCornerTipNow(Landroid/content/Context;Lg/dgk;)Z
    .locals 7

    invoke-static {p1}, Lg/ffi;->e(Lg/dgk;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lg/acw;->k(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lg/dgk;->isShowCornerTip()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lg/dgk;->getCornerTipInterval()I

    move-result p0

    const/4 v5, 0x1

    if-nez p0, :cond_1

    cmp-long p0, v3, v1

    if-nez p0, :cond_0

    return v5

    :cond_0
    return v0

    :cond_1
    cmp-long p0, v3, v1

    if-nez p0, :cond_2

    return v5

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p1}, Lg/dgk;->getCornerTipIntervalUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "hour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "second"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "minute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v4, 0xe

    const/16 v6, 0xd

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lg/dgk;->getCornerTipInterval()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v6, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x6

    invoke-virtual {p1}, Lg/dgk;->getCornerTipInterval()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v6, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lg/dgk;->getCornerTipInterval()I

    move-result p1

    invoke-virtual {p0, v6, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lg/dgk;->getCornerTipInterval()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, v6, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->set(II)V

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v5

    :cond_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x400459ec -> :sswitch_3
        -0x3604bb8c -> :sswitch_2
        0x1839c -> :sswitch_1
        0x30f5e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    instance-of v0, p1, Lg/dgk;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lg/dgk;

    iget v0, p0, Lg/dgk;->nameResId:I

    iget v2, p1, Lg/dgk;->nameResId:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lg/dgk;->iconType:I

    iget v2, p1, Lg/dgk;->iconType:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lg/dgk;->iconResId:I

    iget v2, p1, Lg/dgk;->iconResId:I

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget v0, p0, Lg/dgk;->show:I

    iget v2, p1, Lg/dgk;->show:I

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    iget v0, p0, Lg/dgk;->displayArea:I

    iget v2, p1, Lg/dgk;->displayArea:I

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lg/dgk;->pathType:I

    iget v2, p1, Lg/dgk;->pathType:I

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget v0, p0, Lg/dgk;->minSdkVersion:I

    iget v2, p1, Lg/dgk;->minSdkVersion:I

    if-eq v0, v2, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lg/dgk;->maxSdkVersion:I

    iget v2, p1, Lg/dgk;->maxSdkVersion:I

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    iget-boolean v0, p0, Lg/dgk;->isShowCornerTip:Z

    iget-boolean v2, p1, Lg/dgk;->isShowCornerTip:Z

    if-eq v0, v2, :cond_a

    return v1

    :cond_a
    iget v0, p0, Lg/dgk;->cornerTipInterval:I

    iget v2, p1, Lg/dgk;->cornerTipInterval:I

    if-eq v0, v2, :cond_b

    return v1

    :cond_b
    iget-boolean v0, p0, Lg/dgk;->isSpace:Z

    iget-boolean v2, p1, Lg/dgk;->isSpace:Z

    if-eq v0, v2, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lg/dgk;->id:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->id:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lg/dgk;->name:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lg/dgk;->iconUrl:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->iconUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lg/dgk;->iconText:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->iconText:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    :cond_10
    iget-object v0, p0, Lg/dgk;->path:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->path:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Lg/dgk;->eventId:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->eventId:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget-object v0, p0, Lg/dgk;->copyText:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->copyText:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lg/dgk;->toast:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->toast:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lg/dgk;->cornerTipIconUrl:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->cornerTipIconUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->beginDate:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lg/dgk;->endDate:Ljava/lang/String;

    iget-object v2, p1, Lg/dgk;->endDate:Ljava/lang/String;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_18
    iget-object v0, p0, Lg/dgk;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lg/dgk;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBeginDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->copyText:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTipIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->cornerTipIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerTipInterval()I
    .locals 1

    iget v0, p0, Lg/dgk;->cornerTipInterval:I

    return v0
.end method

.method public getCornerTipIntervalUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayArea()I
    .locals 1

    iget v0, p0, Lg/dgk;->displayArea:I

    return v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    iget v0, p0, Lg/dgk;->iconResId:I

    return v0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->iconText:Ljava/lang/String;

    return-object v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lg/dgk;->iconType:I

    return v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSdkVersion()I
    .locals 1

    iget v0, p0, Lg/dgk;->maxSdkVersion:I

    return v0
.end method

.method public getMinSdkVersion()I
    .locals 1

    iget v0, p0, Lg/dgk;->minSdkVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/dgk;->nameResId:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lg/dgk;->name:Ljava/lang/String;

    return-object p1
.end method

.method public getNameResId()I
    .locals 1

    iget v0, p0, Lg/dgk;->nameResId:I

    return v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lg/dgk;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathType()I
    .locals 1

    iget v0, p0, Lg/dgk;->pathType:I

    return v0
.end method

.method public getShow()I
    .locals 1

    iget v0, p0, Lg/dgk;->show:I

    return v0
.end method

.method public getToast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dgk;->toast:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lg/dgk;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->nameResId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->iconType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->iconResId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->iconText:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->show:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->displayArea:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->pathType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->path:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->eventId:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->copyText:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->toast:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->minSdkVersion:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->maxSdkVersion:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/dgk;->isShowCornerTip:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->cornerTipIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->endDate:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/dgk;->cornerTipInterval:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/dgk;->isSpace:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/dgk;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public isDateValid()Z
    .locals 1

    invoke-virtual {p0}, Lg/dgk;->isNotExpired()Z

    move-result v0

    return v0
.end method

.method public isNotExpired()Z
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v3

    :catch_0
    :cond_0
    :try_start_1
    iget-object v2, p0, Lg/dgk;->endDate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lg/dgk;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    return v3

    :catch_1
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isShow(I)Z
    .locals 1

    iget v0, p0, Lg/dgk;->show:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isShowCornerTip()Z
    .locals 1

    iget-boolean v0, p0, Lg/dgk;->isShowCornerTip:Z

    return v0
.end method

.method public isSpace()Z
    .locals 1

    iget-boolean v0, p0, Lg/dgk;->isSpace:Z

    return v0
.end method

.method public isVersionValid(I)Z
    .locals 1

    iget v0, p0, Lg/dgk;->maxSdkVersion:I

    if-ltz v0, :cond_0

    if-gt p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lg/dgk;->minSdkVersion:I

    if-ltz v0, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setBeginDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    return-void
.end method

.method public setCopyText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->copyText:Ljava/lang/String;

    return-void
.end method

.method public setCornerTipIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->cornerTipIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setCornerTipInterval(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->cornerTipInterval:I

    return-void
.end method

.method public setCornerTipIntervalUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    return-void
.end method

.method public setDisplayArea(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->displayArea:I

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->endDate:Ljava/lang/String;

    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->eventId:Ljava/lang/String;

    return-void
.end method

.method public setIconResId(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lg/dgk;->iconResId:I

    const/4 p1, 0x1

    iput p1, p0, Lg/dgk;->iconType:I

    return-void
.end method

.method public setIconText(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lg/dgk;->iconText:Ljava/lang/String;

    const/4 p1, 0x3

    iput p1, p0, Lg/dgk;->iconType:I

    return-void
.end method

.method public setIconType(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->iconType:I

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lg/dgk;->iconUrl:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lg/dgk;->iconType:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->id:Ljava/lang/String;

    return-void
.end method

.method public setMaxSdkVersion(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->maxSdkVersion:I

    return-void
.end method

.method public setMinSdkVersion(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->minSdkVersion:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameResId(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->nameResId:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->path:Ljava/lang/String;

    return-void
.end method

.method public setPathType(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->pathType:I

    return-void
.end method

.method public setShow(I)V
    .locals 0

    iput p1, p0, Lg/dgk;->show:I

    return-void
.end method

.method public setShowCornerTip(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/dgk;->isShowCornerTip:Z

    return-void
.end method

.method public setSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/dgk;->isSpace:Z

    return-void
.end method

.method public setToast(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg/dgk;->toast:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lg/dgk;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/dgk;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lg/dgk;->nameResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/dgk;->iconType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/dgk;->iconResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lg/dgk;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/dgk;->iconText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lg/dgk;->show:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/dgk;->displayArea:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/dgk;->pathType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lg/dgk;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/dgk;->eventId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/dgk;->copyText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/dgk;->toast:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/dgk;->cornerTipIntervalUnit:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lg/dgk;->cornerTipInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/dgk;->minSdkVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/dgk;->maxSdkVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lg/dgk;->isShowCornerTip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/dgk;->cornerTipIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/dgk;->isSpace:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/dgk;->beginDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/dgk;->endDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
