.class public Lg/dhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ewr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/dhs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final point:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/akv;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dhs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg/dhs;->point:J

    return-void
.end method

.method public synthetic constructor <init>(JLg/akv;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/dhs;-><init>(J)V

    return-void
.end method

.method public static from(J)Lg/dhs;
    .locals 1

    new-instance v0, Lg/dhs;

    invoke-direct {v0, p0, p1}, Lg/dhs;-><init>(J)V

    return-object v0
.end method

.method public static now()Lg/dhs;
    .locals 2

    invoke-static {}, Lg/fau;->c()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lg/dhs;->from(J)Lg/dhs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/dhs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/dhs;

    iget-wide v3, p0, Lg/dhs;->point:J

    iget-wide v5, p1, Lg/dhs;->point:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lg/dhs;->point:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid(J)Z
    .locals 3

    iget-wide v0, p0, Lg/dhs;->point:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lg/dhs;->point:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
