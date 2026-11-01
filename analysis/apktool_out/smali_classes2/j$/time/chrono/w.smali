.class public final Lj$/time/chrono/w;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/chrono/w;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/chrono/w;

    invoke-direct {v0}, Lj$/time/chrono/w;-><init>()V

    sput-object v0, Lj$/time/chrono/w;->c:Lj$/time/chrono/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "Japanese"

    return-object v0
.end method

.method public final j(Lj$/time/temporal/a;)Lj$/time/temporal/u;
    .locals 8

    sget-object v0, Lj$/time/chrono/v;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/u;

    return-object p1

    :pswitch_0
    sget-object p1, Lj$/time/chrono/z;->d:Lj$/time/chrono/z;

    iget p1, p1, Lj$/time/chrono/z;->a:I

    int-to-long v0, p1

    sget-object p1, Lj$/time/chrono/z;->e:[Lj$/time/chrono/z;

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object p1, p1, v3

    iget p1, p1, Lj$/time/chrono/z;->a:I

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/u;->e(JJ)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1

    :pswitch_1
    sget-object p1, Lj$/time/chrono/y;->d:Lj$/time/LocalDate;

    iget p1, p1, Lj$/time/LocalDate;->a:I

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/u;->e(JJ)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lj$/time/chrono/z;->d:Lj$/time/chrono/z;

    sget-object p1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/u;

    iget-wide v3, p1, Lj$/time/temporal/u;->c:J

    sget-object p1, Lj$/time/chrono/z;->e:[Lj$/time/chrono/z;

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v5, p1, v1

    iget-object v6, v5, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    invoke-virtual {v6}, Lj$/time/LocalDate;->J()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x16e

    goto :goto_1

    :cond_0
    const/16 v6, 0x16d

    :goto_1
    iget-object v7, v5, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    invoke-virtual {v7}, Lj$/time/LocalDate;->H()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v2

    int-to-long v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v5}, Lj$/time/chrono/z;->n()Lj$/time/chrono/z;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lj$/time/chrono/z;->n()Lj$/time/chrono/z;

    move-result-object v5

    iget-object v5, v5, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    invoke-virtual {v5}, Lj$/time/LocalDate;->H()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/u;

    iget-wide v0, p1, Lj$/time/temporal/u;->d:J

    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/u;->f(JJ)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1

    :pswitch_3
    sget-object p1, Lj$/time/chrono/z;->e:[Lj$/time/chrono/z;

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    iget-object v0, v0, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    iget v0, v0, Lj$/time/LocalDate;->a:I

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object v3, p1, v3

    iget-object v3, v3, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    iget v3, v3, Lj$/time/LocalDate;->a:I

    const v4, 0x3b9aca00

    sub-int/2addr v4, v3

    aget-object p1, p1, v1

    iget-object p1, p1, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    iget p1, p1, Lj$/time/LocalDate;->a:I

    const/4 v1, 0x1

    :goto_2
    sget-object v3, Lj$/time/chrono/z;->e:[Lj$/time/chrono/z;

    array-length v5, v3

    if-ge v1, v5, :cond_3

    aget-object v3, v3, v1

    iget-object v5, v3, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    iget v5, v5, Lj$/time/LocalDate;->a:I

    sub-int/2addr v5, p1

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object p1, v3, Lj$/time/chrono/z;->b:Lj$/time/LocalDate;

    iget p1, p1, Lj$/time/LocalDate;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    int-to-long v1, v4

    const p1, 0x3b9ac9ff

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lj$/time/temporal/u;->f(JJ)Lj$/time/temporal/u;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance v0, Lj$/time/temporal/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    return-object v0
.end method

.method public final q(I)Lj$/time/chrono/n;
    .locals 0

    invoke-static {p1}, Lj$/time/chrono/z;->q(I)Lj$/time/chrono/z;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lj$/time/temporal/n;)Lj$/time/chrono/b;
    .locals 1

    instance-of v0, p1, Lj$/time/chrono/y;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/chrono/y;

    return-object p1

    :cond_0
    new-instance v0, Lj$/time/chrono/y;

    invoke-static {p1}, Lj$/time/LocalDate;->E(Lj$/time/temporal/n;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/y;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/chrono/F;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/F;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
