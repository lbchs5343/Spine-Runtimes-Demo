.class public final Lg/edj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/edj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final daysInMonth:I

.field final daysInWeek:I

.field private final firstOfMonth:Ljava/util/Calendar;

.field private longName:Ljava/lang/String;

.field final month:I

.field final timeInMillis:J

.field final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dud;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lg/dud;-><init>(I)V

    sput-object v0, Lg/edj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Lg/fau;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lg/edj;->month:I

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lg/edj;->year:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, Lg/edj;->daysInWeek:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lg/edj;->daysInMonth:I

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lg/edj;->timeInMillis:J

    return-void
.end method

.method public static create(II)Lg/edj;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lg/fau;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p0, Lg/edj;

    invoke-direct {p0, v0}, Lg/edj;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static create(J)Lg/edj;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lg/fau;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance p0, Lg/edj;

    invoke-direct {p0, v0}, Lg/edj;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static current()Lg/edj;
    .locals 2

    new-instance v0, Lg/edj;

    invoke-static {}, Lg/fau;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/edj;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lg/edj;)I
    .locals 1

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    iget-object p1, p1, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/edj;

    invoke-virtual {p0, p1}, Lg/edj;->compareTo(Lg/edj;)I

    move-result p1

    return p1
.end method

.method public daysFromStartOfWeekToFirstOfMonth(I)I
    .locals 2

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    iget p1, p0, Lg/edj;->daysInWeek:I

    add-int/2addr v0, p1

    :cond_1
    return v0
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
    instance-of v1, p1, Lg/edj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/edj;

    iget v1, p0, Lg/edj;->month:I

    iget v3, p1, Lg/edj;->month:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lg/edj;->year:I

    iget p1, p1, Lg/edj;->year:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDay(I)J
    .locals 2

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v0}, Lg/fau;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDayOfMonth(J)I
    .locals 1

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v0}, Lg/fau;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getLongName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lg/edj;->longName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Lg/fau;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, "yMMMM"

    invoke-static {v3, v2}, Lg/ayr;->g(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v2

    invoke-static {}, Lg/ayr;->q()Landroid/icu/util/TimeZone;

    move-result-object v3

    invoke-static {v2, v3}, Lg/ayr;->s(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V

    invoke-static {}, Lg/ayr;->j()Landroid/icu/text/DisplayContext;

    invoke-static {v2}, Lg/ayr;->d(Landroid/icu/text/DateFormat;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3}, Lg/o;->b(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2024

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lg/edj;->longName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lg/edj;->longName:Ljava/lang/String;

    return-object v0
.end method

.method public getStableId()J
    .locals 2

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lg/edj;->month:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lg/edj;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public monthsLater(I)Lg/edj;
    .locals 2

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    invoke-static {v0}, Lg/fau;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lg/edj;

    invoke-direct {p1, v0}, Lg/edj;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method public monthsUntil(Lg/edj;)I
    .locals 2

    iget-object v0, p0, Lg/edj;->firstOfMonth:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    iget v0, p1, Lg/edj;->year:I

    iget v1, p0, Lg/edj;->year:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lg/edj;->month:I

    iget v1, p0, Lg/edj;->month:I

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Gregorian calendars are supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lg/edj;->year:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lg/edj;->month:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
