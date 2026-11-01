.class public Lg/fxe$a;
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
    name = "a"
.end annotation


# static fields
.field public static final ALLOW_TRIAL_CHANNEL_ALL:I = 0xb

.field public static final ALLOW_TRIAL_CHANNEL_CHINA:I = 0xd

.field public static final ALLOW_TRIAL_CHANNEL_GOOGLE_PLAY:I = 0xc

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/fxe$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final NORMAL_VERSION_CODE:I = 0x1343c35


# instance fields
.field public faqTitle:Ljava/lang/String;

.field public faqUrl:Ljava/lang/String;

.field public fii:I

.field public fit:Ljava/lang/String;

.field public isAT:I

.field public isShowFAQ:Z

.field public isShowJSON:Z

.field public isShowMD5:Z

.field public isShowManual:Z

.field public isShowMultilineProcess:Z

.field public isShowUserResearch:Z

.field public jsonTitle:Ljava/lang/String;

.field public jsonUrl:Ljava/lang/String;

.field public mTC:I

.field public manualTitle:Ljava/lang/String;

.field public manualUrl:Ljava/lang/String;

.field public md5Title:Ljava/lang/String;

.field public md5Url:Ljava/lang/String;

.field public multilineProcessTitle:Ljava/lang/String;

.field public multilineProcessUrl:Ljava/lang/String;

.field public tTS:I

.field public userResearchTitle:Ljava/lang/String;

.field public userResearchUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cat;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fxe$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fxe$a;->isShowManual:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowFAQ:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowJSON:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowMD5:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowMultilineProcess:Z

    const v0, 0x1343c35

    iput v0, p0, Lg/fxe$a;->fii:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fxe$a;->isShowManual:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowFAQ:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowJSON:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowMD5:Z

    iput-boolean v0, p0, Lg/fxe$a;->isShowMultilineProcess:Z

    const v1, 0x1343c35

    iput v1, p0, Lg/fxe$a;->fii:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lg/fxe$a;->isShowManual:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lg/fxe$a;->isShowUserResearch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lg/fxe$a;->isShowFAQ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->jsonTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lg/fxe$a;->isShowJSON:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->md5Url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->md5Title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lg/fxe$a;->isShowMD5:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->multilineProcessUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg/fxe$a;->multilineProcessTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lg/fxe$a;->isShowMultilineProcess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/fxe$a;->isAT:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/fxe$a;->mTC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/fxe$a;->tTS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lg/fxe$a;->fii:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/fxe$a;->fit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_c

    :cond_1
    check-cast p1, Lg/fxe$a;

    iget-boolean v2, p0, Lg/fxe$a;->isShowManual:Z

    iget-boolean v3, p1, Lg/fxe$a;->isShowManual:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lg/fxe$a;->isShowUserResearch:Z

    iget-boolean v3, p1, Lg/fxe$a;->isShowUserResearch:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lg/fxe$a;->isShowFAQ:Z

    iget-boolean v3, p1, Lg/fxe$a;->isShowFAQ:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lg/fxe$a;->isShowJSON:Z

    iget-boolean v3, p1, Lg/fxe$a;->isShowJSON:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Lg/fxe$a;->isShowMD5:Z

    iget-boolean v3, p1, Lg/fxe$a;->isShowMD5:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Lg/fxe$a;->isShowMultilineProcess:Z

    iget-boolean v3, p1, Lg/fxe$a;->isShowMultilineProcess:Z

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lg/fxe$a;->isAT:I

    iget v3, p1, Lg/fxe$a;->isAT:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lg/fxe$a;->tTS:I

    iget v3, p1, Lg/fxe$a;->tTS:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p0, Lg/fxe$a;->mTC:I

    iget v3, p1, Lg/fxe$a;->mTC:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Lg/fxe$a;->fii:I

    iget v3, p1, Lg/fxe$a;->fii:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_0
    return v1

    :cond_d
    iget-object v2, p0, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1

    :cond_e
    iget-object v2, p1, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_1
    return v1

    :cond_f
    iget-object v2, p0, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_2

    :cond_10
    iget-object v2, p1, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_2
    return v1

    :cond_11
    iget-object v2, p0, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_3

    :cond_12
    iget-object v2, p1, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_3
    return v1

    :cond_13
    iget-object v2, p0, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_4

    :cond_14
    iget-object v2, p1, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_4
    return v1

    :cond_15
    iget-object v2, p0, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_5

    :cond_16
    iget-object v2, p1, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    if-eqz v2, :cond_17

    :goto_5
    return v1

    :cond_17
    iget-object v2, p0, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_6

    :cond_18
    iget-object v2, p1, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_6
    return v1

    :cond_19
    iget-object v2, p0, Lg/fxe$a;->jsonTitle:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lg/fxe$a;->jsonTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_7

    :cond_1a
    iget-object v2, p1, Lg/fxe$a;->jsonTitle:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_7
    return v1

    :cond_1b
    iget-object v2, p0, Lg/fxe$a;->md5Url:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v3, p1, Lg/fxe$a;->md5Url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_8

    :cond_1c
    iget-object v2, p1, Lg/fxe$a;->md5Url:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_8
    return v1

    :cond_1d
    iget-object v2, p0, Lg/fxe$a;->md5Title:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v3, p1, Lg/fxe$a;->md5Title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_9

    :cond_1e
    iget-object v2, p1, Lg/fxe$a;->md5Title:Ljava/lang/String;

    if-eqz v2, :cond_1f

    :goto_9
    return v1

    :cond_1f
    iget-object v2, p0, Lg/fxe$a;->multilineProcessUrl:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v3, p1, Lg/fxe$a;->multilineProcessUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_a

    :cond_20
    iget-object v2, p1, Lg/fxe$a;->multilineProcessUrl:Ljava/lang/String;

    if-eqz v2, :cond_21

    :goto_a
    return v1

    :cond_21
    iget-object v2, p0, Lg/fxe$a;->multilineProcessTitle:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lg/fxe$a;->multilineProcessTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_b

    :cond_22
    iget-object v2, p1, Lg/fxe$a;->multilineProcessTitle:Ljava/lang/String;

    if-eqz v2, :cond_23

    :goto_b
    return v1

    :cond_23
    iget-object v2, p0, Lg/fxe$a;->fit:Ljava/lang/String;

    iget-object p1, p1, Lg/fxe$a;->fit:Ljava/lang/String;

    if-eqz v2, :cond_24

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_24
    if-nez p1, :cond_25

    return v0

    :cond_25
    :goto_c
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/fxe$a;->isShowManual:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/fxe$a;->isShowUserResearch:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/fxe$a;->isShowFAQ:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->jsonTitle:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/fxe$a;->isShowJSON:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->md5Url:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->md5Title:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/fxe$a;->isShowMD5:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->multilineProcessUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->multilineProcessTitle:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lg/fxe$a;->isShowMultilineProcess:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/fxe$a;->isAT:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/fxe$a;->tTS:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/fxe$a;->mTC:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lg/fxe$a;->fii:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/fxe$a;->fit:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lg/fxe$a;->manualUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fxe$a;->manualTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fxe$a;->isShowManual:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/fxe$a;->userResearchUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fxe$a;->userResearchTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fxe$a;->isShowUserResearch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fxe$a;->isShowFAQ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/fxe$a;->jsonUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fxe$a;->jsonTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fxe$a;->isShowJSON:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/fxe$a;->md5Url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fxe$a;->md5Title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fxe$a;->isShowMD5:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lg/fxe$a;->multilineProcessUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lg/fxe$a;->multilineProcessTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lg/fxe$a;->isShowMultilineProcess:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lg/fxe$a;->isAT:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/fxe$a;->mTC:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/fxe$a;->tTS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/fxe$a;->fii:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lg/fxe$a;->fit:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
