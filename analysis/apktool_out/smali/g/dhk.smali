.class public final Lg/dhk;
.super Lg/cbt;


# static fields
.field public static final a:Lg/cqw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cqw;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/cqw;-><init>(I)V

    sput-object v0, Lg/dhk;->a:Lg/cqw;

    return-void
.end method


# virtual methods
.method public final dq(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1c

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    check-cast v0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    const-string v2, "This type of addition operation is not supported"

    if-nez v1, :cond_16

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_16

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_8

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_8

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_6

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_7

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_e

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_e

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_d

    float-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_14

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_14

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_10

    goto :goto_3

    :cond_10
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_11
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_12
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v0, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1b

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_1b

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_17

    goto :goto_5

    :cond_17
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_18

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_18
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_19

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_19
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_1a

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1c
    :goto_6
    sget-object v1, Lg/dhk;->a:Lg/cqw;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method
