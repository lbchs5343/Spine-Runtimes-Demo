.class public final Lg/fin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/fin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:Lg/edj;

.field private final firstDayOfWeek:I

.field private final monthSpan:I

.field private openAt:Lg/edj;

.field private final start:Lg/edj;

.field private final validator:Lg/ewr;

.field private final yearSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/hcm;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lg/edj;Lg/edj;Lg/ewr;Lg/edj;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "start cannot be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "end cannot be null"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "validator cannot be null"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lg/fin;->start:Lg/edj;

    iput-object p2, p0, Lg/fin;->end:Lg/edj;

    iput-object p4, p0, Lg/fin;->openAt:Lg/edj;

    iput p5, p0, Lg/fin;->firstDayOfWeek:I

    iput-object p3, p0, Lg/fin;->validator:Lg/ewr;

    if-eqz p4, :cond_1

    invoke-virtual {p1, p4}, Lg/edj;->compareTo(Lg/edj;)I

    move-result p3

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start Month cannot be after current Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4, p2}, Lg/edj;->compareTo(Lg/edj;)I

    move-result p3

    if-gtz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "current Month cannot be after end Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-ltz p5, :cond_4

    const/4 p3, 0x0

    invoke-static {p3}, Lg/fau;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    const/4 p4, 0x7

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p3

    if-gt p5, p3, :cond_4

    invoke-virtual {p1, p2}, Lg/edj;->monthsUntil(Lg/edj;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lg/fin;->monthSpan:I

    iget p2, p2, Lg/edj;->year:I

    iget p1, p1, Lg/edj;->year:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lg/fin;->yearSpan:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstDayOfWeek is not valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lg/edj;Lg/edj;Lg/ewr;Lg/edj;ILg/hcm;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lg/fin;-><init>(Lg/edj;Lg/edj;Lg/ewr;Lg/edj;I)V

    return-void
.end method

.method public static synthetic access$100(Lg/fin;)Lg/edj;
    .locals 0

    iget-object p0, p0, Lg/fin;->start:Lg/edj;

    return-object p0
.end method

.method public static synthetic access$200(Lg/fin;)Lg/edj;
    .locals 0

    iget-object p0, p0, Lg/fin;->end:Lg/edj;

    return-object p0
.end method

.method public static synthetic access$300(Lg/fin;)Lg/edj;
    .locals 0

    iget-object p0, p0, Lg/fin;->openAt:Lg/edj;

    return-object p0
.end method

.method public static synthetic access$400(Lg/fin;)I
    .locals 0

    iget p0, p0, Lg/fin;->firstDayOfWeek:I

    return p0
.end method

.method public static synthetic access$500(Lg/fin;)Lg/ewr;
    .locals 0

    iget-object p0, p0, Lg/fin;->validator:Lg/ewr;

    return-object p0
.end method


# virtual methods
.method public clamp(Lg/edj;)Lg/edj;
    .locals 1

    iget-object v0, p0, Lg/fin;->start:Lg/edj;

    invoke-virtual {p1, v0}, Lg/edj;->compareTo(Lg/edj;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lg/fin;->start:Lg/edj;

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/fin;->end:Lg/edj;

    invoke-virtual {p1, v0}, Lg/edj;->compareTo(Lg/edj;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lg/fin;->end:Lg/edj;

    :cond_1
    return-object p1
.end method

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
    instance-of v1, p1, Lg/fin;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/fin;

    iget-object v1, p0, Lg/fin;->start:Lg/edj;

    iget-object v3, p1, Lg/fin;->start:Lg/edj;

    invoke-virtual {v1, v3}, Lg/edj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/fin;->end:Lg/edj;

    iget-object v3, p1, Lg/fin;->end:Lg/edj;

    invoke-virtual {v1, v3}, Lg/edj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lg/fin;->openAt:Lg/edj;

    iget-object v3, p1, Lg/fin;->openAt:Lg/edj;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lg/fin;->firstDayOfWeek:I

    iget v3, p1, Lg/fin;->firstDayOfWeek:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lg/fin;->validator:Lg/ewr;

    iget-object p1, p1, Lg/fin;->validator:Lg/ewr;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDateValidator()Lg/ewr;
    .locals 1

    iget-object v0, p0, Lg/fin;->validator:Lg/ewr;

    return-object v0
.end method

.method public getEnd()Lg/edj;
    .locals 1

    iget-object v0, p0, Lg/fin;->end:Lg/edj;

    return-object v0
.end method

.method public getEndMs()J
    .locals 2

    iget-object v0, p0, Lg/fin;->end:Lg/edj;

    iget-wide v0, v0, Lg/edj;->timeInMillis:J

    return-wide v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Lg/fin;->firstDayOfWeek:I

    return v0
.end method

.method public getMonthSpan()I
    .locals 1

    iget v0, p0, Lg/fin;->monthSpan:I

    return v0
.end method

.method public getOpenAt()Lg/edj;
    .locals 1

    iget-object v0, p0, Lg/fin;->openAt:Lg/edj;

    return-object v0
.end method

.method public getOpenAtMs()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lg/fin;->openAt:Lg/edj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-wide v0, v0, Lg/edj;->timeInMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Lg/edj;
    .locals 1

    iget-object v0, p0, Lg/fin;->start:Lg/edj;

    return-object v0
.end method

.method public getStartMs()J
    .locals 2

    iget-object v0, p0, Lg/fin;->start:Lg/edj;

    iget-wide v0, v0, Lg/edj;->timeInMillis:J

    return-wide v0
.end method

.method public getYearSpan()I
    .locals 1

    iget v0, p0, Lg/fin;->yearSpan:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lg/fin;->start:Lg/edj;

    iget-object v1, p0, Lg/fin;->end:Lg/edj;

    iget-object v2, p0, Lg/fin;->openAt:Lg/edj;

    iget v3, p0, Lg/fin;->firstDayOfWeek:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lg/fin;->validator:Lg/ewr;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isWithinBounds(J)Z
    .locals 4

    iget-object v0, p0, Lg/fin;->start:Lg/edj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/edj;->getDay(I)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lg/fin;->end:Lg/edj;

    iget v2, v0, Lg/edj;->daysInMonth:I

    invoke-virtual {v0, v2}, Lg/edj;->getDay(I)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOpenAt(Lg/edj;)V
    .locals 0

    iput-object p1, p0, Lg/fin;->openAt:Lg/edj;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lg/fin;->start:Lg/edj;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lg/fin;->end:Lg/edj;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lg/fin;->openAt:Lg/edj;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lg/fin;->validator:Lg/ewr;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lg/fin;->firstDayOfWeek:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
