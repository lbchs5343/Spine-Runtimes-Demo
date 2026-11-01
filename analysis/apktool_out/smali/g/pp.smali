.class public abstract Lg/pp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/pp;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/pp;->a:Lg/dba;

    return-void
.end method

.method public static b(JLg/cwx;Lg/foj;ZZ)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lg/cwx;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object p4, Lg/dsv;->a:[I

    invoke-virtual {p2}, Lg/cwx;->f()Lg/bjt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const-wide/16 v0, 0x0

    packed-switch p4, :pswitch_data_0

    new-instance p0, Lg/gck;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown type in literalToString: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    cmp-long p3, p0, v0

    if-eqz p3, :cond_1

    const-string p3, "Wrong object literal: {} for type: {}"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    sget-object p5, Lg/pp;->a:Lg/dba;

    invoke-interface {p5, p4, p3, p2}, Lg/dba;->t(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Lg/foj;->g(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Lg/foj;->i(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p3, p0, p1, p5}, Lg/foj;->p(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p2, p3, Lg/foj;->b:Lg/csu;

    sget-object p4, Lg/csu;->AUTO:Lg/csu;

    if-ne p2, p4, :cond_4

    long-to-int p2, p0

    const/high16 p4, -0x80000000

    if-eq p2, p4, :cond_3

    const p4, 0x7fffffff

    if-eq p2, p4, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Integer.MAX_VALUE"

    return-object p0

    :cond_3
    const-string p0, "Integer.MIN_VALUE"

    return-object p0

    :cond_4
    :goto_0
    const/4 p2, 0x4

    invoke-virtual {p3, p2, p5, p0, p1}, Lg/foj;->n(IZJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p2, p3, Lg/foj;->b:Lg/csu;

    sget-object p4, Lg/csu;->AUTO:Lg/csu;

    if-ne p2, p4, :cond_7

    long-to-int p2, p0

    int-to-short p2, p2

    const/16 p4, -0x8000

    if-eq p2, p4, :cond_6

    const/16 p4, 0x7fff

    if-eq p2, p4, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, "Short.MAX_VALUE"

    return-object p0

    :cond_6
    const-string p0, "Short.MIN_VALUE"

    return-object p0

    :cond_7
    :goto_1
    const/4 p2, 0x2

    invoke-virtual {p3, p2, p5, p0, p1}, Lg/foj;->n(IZJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/4 p2, 0x1

    invoke-virtual {p3, p2, p5, p0, p1}, Lg/foj;->n(IZJ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    long-to-int p1, p0

    int-to-char p0, p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p5}, Lg/foj;->f(CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    cmp-long p2, p0, v0

    if-nez p2, :cond_8

    const-string p0, "false"

    return-object p0

    :cond_8
    const-string p0, "true"

    return-object p0

    :cond_9
    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    if-eqz p4, :cond_e

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p4

    const-wide/16 v0, 0x64

    cmp-long v2, p4, v0

    if-lez v2, :cond_e

    const-string p4, "(0x"

    invoke-static {p3, p4}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_a

    sget-object p4, Lg/bjt;->FLOAT:Lg/bjt;

    invoke-virtual {p2, p4}, Lg/cwx;->o(Lg/bjt;)Z

    move-result p4

    if-eqz p4, :cond_b

    :cond_a
    const-string p4, ", float:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int p4, p0

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz p2, :cond_c

    sget-object p4, Lg/bjt;->DOUBLE:Lg/bjt;

    invoke-virtual {p2, p4}, Lg/cwx;->o(Lg/bjt;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    const-string p2, ", double:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_d
    const/16 p0, 0x29

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lg/cwx;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lg/cwx;->f()Lg/bjt;

    move-result-object v0

    sget-object v1, Lg/bjt;->OBJECT:Lg/bjt;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lg/bjt;->ARRAY:Lg/bjt;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/cwx;->k()Lg/cwx;

    move-result-object p0

    invoke-static {p0}, Lg/pp;->c(Lg/cwx;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lg/bjt;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
