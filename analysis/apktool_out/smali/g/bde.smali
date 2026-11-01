.class public final Lg/bde;
.super Lg/cbt;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Lg/ekx;I)V
    .locals 0

    iput p2, p0, Lg/bde;->a:I

    invoke-direct {p0, p1}, Lg/cbt;-><init>(Lg/ekx;)V

    return-void
.end method


# virtual methods
.method public final dq(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/bde;->a:I

    packed-switch v0, :pswitch_data_0

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

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1}, Lg/erl;->ao(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1}, Lg/egh;->av(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_1
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_9

    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1}, Lg/egh;->av(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_2
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/dyd;->af(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/dyd;->af(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 p1, 0x1

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_d

    :goto_6
    const/4 p1, 0x0

    goto/16 :goto_c

    :cond_d
    check-cast v0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    const-string v2, "This type of addition operation is not supported"

    if-nez v1, :cond_21

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_21

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_e

    goto/16 :goto_a

    :cond_e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_13

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_13

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_c

    :cond_10
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_11

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_c

    :cond_11
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_12

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_c

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_c

    :cond_14
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_19

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_19

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_c

    :cond_16
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_c

    :cond_17
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_18

    float-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_c

    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_c

    :cond_1a
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_1f

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_1f

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_1b

    goto :goto_9

    :cond_1b
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_c

    :cond_1c
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_c

    :cond_1d
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_c

    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_c

    :cond_20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v0, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_26

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_26

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_22

    goto :goto_b

    :cond_22
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_23

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_c

    :cond_23
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_24

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_c

    :cond_24
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_25

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_c

    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_b
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_c
    return-object p1

    :pswitch_4
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_d

    :cond_27
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_28

    :goto_d
    const/4 p1, 0x0

    goto/16 :goto_13

    :cond_28
    check-cast v0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    const-string v2, "This type of addition operation is not supported"

    if-nez v1, :cond_3c

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_3c

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_29

    goto/16 :goto_11

    :cond_29
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_2e

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_2e

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_2a

    goto :goto_e

    :cond_2a
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_2b

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_13

    :cond_2b
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_2c

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_13

    :cond_2c
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_2d

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_13

    :cond_2d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_e
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_13

    :cond_2f
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_34

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_34

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_30

    goto :goto_f

    :cond_30
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_13

    :cond_31
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_13

    :cond_32
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_33

    float-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_13

    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :goto_f
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_13

    :cond_35
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_3a

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_3a

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_36

    goto :goto_10

    :cond_36
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_37

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_13

    :cond_37
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_38

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v2, p1

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_13

    :cond_38
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_39

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_13

    :cond_39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    :goto_10
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v2, p1

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_13

    :cond_3b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v0, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_41

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_41

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_3d

    goto :goto_12

    :cond_3d
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_3e

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_13

    :cond_3e
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_3f

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_13

    :cond_3f
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_40

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_13

    :cond_40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_12
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    mul-int p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_13
    return-object p1

    :pswitch_5
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_42

    goto :goto_14

    :cond_42
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_43

    :goto_14
    const/4 p1, 0x0

    goto :goto_15

    :cond_43
    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1}, Lg/erl;->ao(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_15
    return-object p1

    :pswitch_6
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_44

    goto :goto_16

    :cond_44
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_45

    :goto_16
    const/4 p1, 0x0

    goto :goto_17

    :cond_45
    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1}, Lg/ckd;->ai(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_17
    return-object p1

    :pswitch_7
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_46

    goto :goto_18

    :cond_46
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_47

    :goto_18
    const/4 p1, 0x0

    goto/16 :goto_1e

    :cond_47
    check-cast v0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    const-string v2, "This type of addition operation is not supported"

    if-nez v1, :cond_5b

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_5b

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_48

    goto/16 :goto_1c

    :cond_48
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_4d

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_4d

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_49

    goto :goto_19

    :cond_49
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_4a

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_1e

    :cond_4a
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_4b

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_1e

    :cond_4b
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_4c

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_1e

    :cond_4c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    :goto_19
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v2, p1

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_1e

    :cond_4e
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_53

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_53

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_4f

    goto :goto_1a

    :cond_4f
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    rem-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_1e

    :cond_50
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_51

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_1e

    :cond_51
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_52

    float-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_1e

    :cond_52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    rem-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_1e

    :cond_54
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_59

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_59

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_55

    goto :goto_1b

    :cond_55
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_56

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_1e

    :cond_56
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_57

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v2, p1

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_1e

    :cond_57
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_58

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_1e

    :cond_58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v2, p1

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1e

    :cond_5a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v0, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_60

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_60

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_5c

    goto :goto_1d

    :cond_5c
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5d

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1e

    :cond_5d
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_5e

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    rem-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1e

    :cond_5e
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_5f

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1e

    :cond_5f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    rem-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1e
    return-object p1

    :pswitch_8
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_61

    goto :goto_1f

    :cond_61
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_62

    :goto_1f
    const/4 p1, 0x0

    goto :goto_20

    :cond_62
    check-cast p1, Ljava/lang/Number;

    invoke-static {v0, p1}, Lg/ckd;->ai(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_20
    return-object p1

    :pswitch_9
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_63

    goto :goto_21

    :cond_63
    iget-object v1, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v1, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_64

    :goto_21
    const/4 p1, 0x0

    goto/16 :goto_27

    :cond_64
    check-cast v0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    const-string v2, "This type of addition operation is not supported"

    if-nez v1, :cond_78

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_78

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_65

    goto/16 :goto_25

    :cond_65
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_6b

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_6a

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_6a

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_66

    goto :goto_22

    :cond_66
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_67

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_27

    :cond_67
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_68

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_27

    :cond_68
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_69

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_27

    :cond_69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_22
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_27

    :cond_6b
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_71

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_70

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_70

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_6c

    goto :goto_23

    :cond_6c
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_6d

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float p1, v1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_27

    :cond_6d
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_6e

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_27

    :cond_6e
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_6f

    float-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_27

    :cond_6f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    :goto_23
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_27

    :cond_71
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_77

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_76

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_76

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_72

    goto :goto_24

    :cond_72
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_73

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_27

    :cond_73
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_74

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_27

    :cond_74
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_75

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_27

    :cond_75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    :goto_24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_27

    :cond_77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {v0, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    :goto_25
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_7d

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_7d

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_79

    goto :goto_26

    :cond_79
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_7a

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_27

    :cond_7a
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_7b

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_27

    :cond_7b
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_7c

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_27

    :cond_7c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1, v2}, Lg/tn;->s(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    :goto_26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_27
    return-object p1

    :pswitch_a
    iget-object v0, p0, Lg/cbt;->b:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/dyd;->af(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lg/cbt;->c:Lg/faq;

    invoke-interface {v0, p1}, Lg/faq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/dyd;->af(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x1

    goto :goto_28

    :cond_7e
    const/4 p1, 0x0

    :goto_28
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/bde;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lg/cbt;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lg/cbt;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-virtual {p0}, Lg/cbt;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
