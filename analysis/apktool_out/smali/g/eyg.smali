.class public final Lg/eyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/duf;
.implements Lg/cma;


# static fields
.field public static final a:Lg/eyg;

.field public static final c:Lg/eyg;

.field public static final d:Lg/eyg;

.field public static final e:Lg/eyg;

.field public static final f:Lg/eyg;

.field public static final h:Lg/eyg;

.field public static final i:Lg/eyg;

.field public static final j:Lg/eyg;


# instance fields
.field public final synthetic k:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/eyg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->h:Lg/eyg;

    new-instance v0, Lg/eyg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->i:Lg/eyg;

    new-instance v0, Lg/eyg;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->c:Lg/eyg;

    new-instance v0, Lg/eyg;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->d:Lg/eyg;

    new-instance v0, Lg/eyg;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->e:Lg/eyg;

    new-instance v0, Lg/eyg;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->j:Lg/eyg;

    new-instance v0, Lg/eyg;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->a:Lg/eyg;

    new-instance v0, Lg/eyg;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/eyg;-><init>(I)V

    sput-object v0, Lg/eyg;->f:Lg/eyg;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/eyg;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static l(Lg/ccw;Ljava/lang/Class;Lg/grv;)Ljava/lang/Object;
    .locals 5

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lg/grv;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p2, v2}, Lg/grv;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_1

    invoke-static {v1, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Lg/grv;

    invoke-static {p0, p1, v3}, Lg/eyg;->l(Lg/ccw;Ljava/lang/Class;Lg/grv;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lg/ccw;->k:Lg/mh;

    invoke-static {v3, p1, v4}, Lg/dtu;->j(Ljava/lang/Object;Ljava/lang/Class;Lg/mh;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-object v1, p2, Lg/grv;->l:Ljava/lang/Object;

    iput-object p1, p2, Lg/grv;->k:Ljava/lang/reflect/Type;

    return-object v1
.end method


# virtual methods
.method public final b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10

    iget v0, p0, Lg/eyg;->k:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p1, Lg/cnu;->j:Lg/cxa;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lg/cxa;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lg/cxa;->t(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p1, Lg/cnu;->j:Lg/cxa;

    if-nez p2, :cond_2

    iget p2, p1, Lg/cxa;->k:I

    sget-object p3, Lg/gar;->WriteNullNumberAsZero:Lg/gar;

    iget p3, p3, Lg/gar;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_1

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lg/cxa;->o()V

    goto/16 :goto_1

    :cond_2
    instance-of p3, p2, Ljava/lang/Float;

    const/4 p4, 0x0

    const-string v0, ".0"

    if-eqz p3, :cond_6

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lg/cxa;->o()V

    goto/16 :goto_1

    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lg/cxa;->o()V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-virtual {p1, p2}, Lg/cxa;->write(Ljava/lang/String;)V

    iget p2, p1, Lg/cxa;->k:I

    sget-object p3, Lg/gar;->WriteClassName:Lg/gar;

    iget p3, p3, Lg/gar;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_a

    const/16 p2, 0x46

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    goto :goto_1

    :cond_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lg/cxa;->o()V

    goto :goto_1

    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lg/cxa;->o()V

    goto :goto_1

    :cond_8
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_9
    invoke-virtual {p1, p2}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    iget p2, p1, Lg/cxa;->k:I

    sget-object p3, Lg/gar;->WriteClassName:Lg/gar;

    iget p3, p3, Lg/gar;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_a

    const/16 p2, 0x44

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    :cond_a
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p1, Lg/cnu;->j:Lg/cxa;

    if-nez p2, :cond_e

    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_d

    const-class p2, Ljava/lang/Character;

    if-ne p4, p2, :cond_b

    goto :goto_2

    :cond_b
    iget p1, v0, Lg/cxa;->k:I

    sget-object p2, Lg/gar;->WriteNullListAsEmpty:Lg/gar;

    iget p2, p2, Lg/gar;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_c

    invoke-static {p4}, Lg/dtu;->p(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/util/Enumeration;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "[]"

    invoke-virtual {v0, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v0}, Lg/cxa;->o()V

    goto/16 :goto_9

    :cond_d
    :goto_2
    const-string p2, ""

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_e
    instance-of v1, p2, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_f

    check-cast p2, Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_f
    instance-of v1, p2, Ljava/util/TimeZone;

    if-eqz v1, :cond_10

    check-cast p2, Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_10
    instance-of v1, p2, Ljava/util/Currency;

    if-eqz v1, :cond_11

    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_12

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_12
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_14

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p3

    if-nez p3, :cond_13

    const-string p2, "\u0000"

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    instance-of v1, p2, Ljava/text/SimpleDateFormat;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    move-object p3, p2

    check-cast p3, Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p3

    iget v1, v0, Lg/cxa;->k:I

    sget-object v4, Lg/gar;->WriteClassName:Lg/gar;

    iget v4, v4, Lg/gar;->mask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p4, :cond_15

    const/16 p4, 0x7b

    invoke-virtual {v0, p4}, Lg/cxa;->write(I)V

    const-string p4, "@type"

    invoke-virtual {v0, p4, v3}, Lg/cxa;->p(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lg/cxa;->write(I)V

    const-string p1, "val"

    invoke-virtual {v0, p1, v3}, Lg/cxa;->p(Ljava/lang/String;Z)V

    invoke-virtual {v0, p3}, Lg/cxa;->t(Ljava/lang/String;)V

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Lg/cxa;->write(I)V

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v0, p3}, Lg/cxa;->t(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_16
    instance-of v1, p2, Lg/fpk;

    if-eqz v1, :cond_17

    check-cast p2, Lg/fpk;

    check-cast p2, Lg/ex;

    new-instance p1, Lg/cxa;

    sget p3, Lg/ex;->c:I

    sget-object p4, Lg/gar;->EMPTY:[Lg/gar;

    invoke-direct {p1, p3, p4}, Lg/cxa;-><init>(I[Lg/gar;)V

    :try_start_0
    new-instance p3, Lg/cnu;

    sget-object p4, Lg/cbq;->a:Lg/cbq;

    invoke-direct {p3, p1, p4}, Lg/cnu;-><init>(Lg/cxa;Lg/cbq;)V

    invoke-virtual {p3, p2}, Lg/cnu;->r(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg/cxa;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lg/cxa;->s(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lg/cxa;->close()V

    goto/16 :goto_9

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_1
    new-instance p3, Lg/bfj;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p1}, Lg/cxa;->close()V

    throw p2

    :cond_17
    instance-of v1, p2, Lg/aeu;

    if-eqz v1, :cond_18

    check-cast p2, Lg/aeu;

    check-cast p2, Lg/ex;

    invoke-virtual {p2}, Lg/ex;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    instance-of v1, p2, Ljava/util/Enumeration;

    if-eqz v1, :cond_1d

    iget v1, v0, Lg/cxa;->k:I

    sget-object v4, Lg/gar;->WriteClassName:Lg/gar;

    iget v4, v4, Lg/gar;->mask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_19

    instance-of v1, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_19

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p4

    aget-object p4, p4, v3

    goto :goto_4

    :cond_19
    const/4 p4, 0x0

    :goto_4
    move-object v1, p2

    check-cast v1, Ljava/util/Enumeration;

    iget-object v4, p1, Lg/cnu;->b:Lg/aca;

    invoke-virtual {p1, v4, p2, p3}, Lg/cnu;->q(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p2, 0x5b

    :try_start_2
    invoke-virtual {v0, p2}, Lg/cxa;->write(I)V

    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 p3, v3, 0x1

    if-eqz v3, :cond_1a

    invoke-virtual {v0, v2}, Lg/cxa;->write(I)V

    goto :goto_6

    :catchall_1
    move-exception p2

    goto :goto_8

    :cond_1a
    :goto_6
    if-nez p2, :cond_1b

    invoke-virtual {v0}, Lg/cxa;->o()V

    goto :goto_7

    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p1, Lg/cnu;->f:Lg/cbq;

    invoke-virtual {v6, v5}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, p1, p2, v3, p4}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_7
    move v3, p3

    goto :goto_5

    :cond_1c
    const/16 p2, 0x5d

    invoke-virtual {v0, p2}, Lg/cxa;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object v4, p1, Lg/cnu;->b:Lg/aca;

    goto :goto_9

    :goto_8
    iput-object v4, p1, Lg/cnu;->b:Lg/aca;

    throw p2

    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cnu;->n(Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_2
    iget-object p1, p1, Lg/cnu;->j:Lg/cxa;

    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    if-nez p3, :cond_1f

    iget p2, p1, Lg/cxa;->k:I

    sget-object p3, Lg/gar;->WriteNullNumberAsZero:Lg/gar;

    iget p3, p3, Lg/gar;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_1e

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    goto :goto_b

    :cond_1e
    invoke-virtual {p1}, Lg/cxa;->o()V

    goto :goto_b

    :cond_1f
    instance-of p2, p2, Ljava/lang/Long;

    if-eqz p2, :cond_20

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lg/cxa;->w(J)V

    goto :goto_a

    :cond_20
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lg/cxa;->q(I)V

    :goto_a
    iget p2, p1, Lg/cxa;->k:I

    sget-object v0, Lg/gar;->WriteClassName:Lg/gar;

    iget v0, v0, Lg/gar;->mask:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_23

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_21

    const/16 p2, 0x42

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    goto :goto_b

    :cond_21
    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_22

    const/16 p2, 0x53

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    goto :goto_b

    :cond_22
    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_23

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p2, v1

    if-gtz v3, :cond_23

    const-wide/32 v1, -0x80000000

    cmp-long v3, p2, v1

    if-ltz v3, :cond_23

    if-eq p4, v0, :cond_23

    const/16 p2, 0x4c

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    :cond_23
    :goto_b
    return-void

    :pswitch_3
    iget-object v0, p1, Lg/cnu;->j:Lg/cxa;

    if-nez p2, :cond_25

    iget p1, v0, Lg/cxa;->k:I

    sget-object p2, Lg/gar;->WriteNullListAsEmpty:Lg/gar;

    iget p2, p2, Lg/gar;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_24

    const-string p1, "[]"

    invoke-virtual {v0, p1}, Lg/cxa;->write(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_24
    invoke-virtual {v0}, Lg/cxa;->o()V

    goto/16 :goto_11

    :cond_25
    iget v1, v0, Lg/cxa;->k:I

    sget-object v2, Lg/gar;->WriteClassName:Lg/gar;

    iget v3, v2, Lg/gar;->mask:I

    and-int/2addr v1, v3

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    instance-of v1, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_26

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p4

    aget-object p4, p4, v3

    goto :goto_c

    :cond_26
    const/4 p4, 0x0

    :goto_c
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    iget-object v4, p1, Lg/cnu;->b:Lg/aca;

    invoke-virtual {p1, v4, p2, p3}, Lg/cnu;->q(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;)V

    iget p2, v0, Lg/cxa;->k:I

    iget p3, v2, Lg/gar;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_28

    const-class p2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    if-ne p2, p3, :cond_27

    const-string p2, "Set"

    invoke-virtual {v0, p2}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_27
    const-class p2, Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    if-ne p2, p3, :cond_28

    const-string p2, "TreeSet"

    invoke-virtual {v0, p2}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    :cond_28
    :goto_d
    const/16 p2, 0x5b

    :try_start_3
    invoke-virtual {v0, p2}, Lg/cxa;->write(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, v3, 0x1

    if-eqz v3, :cond_29

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lg/cxa;->write(I)V

    goto :goto_f

    :catchall_2
    move-exception p2

    goto :goto_12

    :cond_29
    :goto_f
    if-nez p3, :cond_2a

    invoke-virtual {v0}, Lg/cxa;->o()V

    goto :goto_10

    :cond_2a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    if-ne v2, v5, :cond_2b

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lg/cxa;->q(I)V

    goto :goto_10

    :cond_2b
    const-class v5, Ljava/lang/Long;

    if-ne v2, v5, :cond_2c

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lg/cxa;->w(J)V

    iget p3, v0, Lg/cxa;->k:I

    sget-object v2, Lg/gar;->WriteClassName:Lg/gar;

    iget v2, v2, Lg/gar;->mask:I

    and-int/2addr p3, v2

    if-eqz p3, :cond_2d

    const/16 p3, 0x4c

    invoke-virtual {v0, p3}, Lg/cxa;->write(I)V

    goto :goto_10

    :cond_2c
    iget-object v5, p1, Lg/cnu;->f:Lg/cbq;

    invoke-virtual {v5, v2}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, p3, v3, p4}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :cond_2d
    :goto_10
    move v3, v1

    goto :goto_e

    :cond_2e
    const/16 p2, 0x5d

    invoke-virtual {v0, p2}, Lg/cxa;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iput-object v4, p1, Lg/cnu;->b:Lg/aca;

    :goto_11
    return-void

    :goto_12
    iput-object v4, p1, Lg/cnu;->b:Lg/aca;

    throw p2

    :pswitch_4
    iget-object p1, p1, Lg/cnu;->j:Lg/cxa;

    check-cast p2, Ljava/lang/Boolean;

    const-string p3, "false"

    if-nez p2, :cond_30

    iget p2, p1, Lg/cxa;->k:I

    sget-object p4, Lg/gar;->WriteNullBooleanAsFalse:Lg/gar;

    iget p4, p4, Lg/gar;->mask:I

    and-int/2addr p2, p4

    if-eqz p2, :cond_2f

    invoke-virtual {p1, p3}, Lg/cxa;->write(Ljava/lang/String;)V

    goto :goto_13

    :cond_2f
    invoke-virtual {p1}, Lg/cxa;->o()V

    goto :goto_13

    :cond_30
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_31

    const-string p2, "true"

    invoke-virtual {p1, p2}, Lg/cxa;->write(Ljava/lang/String;)V

    goto :goto_13

    :cond_31
    invoke-virtual {p1, p3}, Lg/cxa;->write(Ljava/lang/String;)V

    :goto_13
    return-void

    :pswitch_5
    iget-object p1, p1, Lg/cnu;->j:Lg/cxa;

    if-nez p2, :cond_33

    iget p2, p1, Lg/cxa;->k:I

    sget-object p3, Lg/gar;->WriteNullNumberAsZero:Lg/gar;

    iget p3, p3, Lg/gar;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_32

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    goto :goto_14

    :cond_32
    invoke-virtual {p1}, Lg/cxa;->o()V

    goto :goto_14

    :cond_33
    instance-of p3, p2, Ljava/math/BigInteger;

    if-eqz p3, :cond_34

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/cxa;->write(Ljava/lang/String;)V

    goto :goto_14

    :cond_34
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lg/cxa;->write(Ljava/lang/String;)V

    iget p3, p1, Lg/cxa;->k:I

    sget-object v0, Lg/gar;->WriteClassName:Lg/gar;

    iget v0, v0, Lg/gar;->mask:I

    and-int/2addr p3, v0

    if-eqz p3, :cond_35

    const-class p3, Ljava/math/BigDecimal;

    if-eq p4, p3, :cond_35

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    if-nez p2, :cond_35

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Lg/cxa;->write(I)V

    :cond_35
    :goto_14
    return-void

    :pswitch_6
    iget-object p4, p1, Lg/cnu;->j:Lg/cxa;

    iget-object v0, p1, Lg/cnu;->f:Lg/cbq;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    const-string v2, "[]"

    if-nez p2, :cond_37

    iget p1, p4, Lg/cxa;->k:I

    sget-object p2, Lg/gar;->WriteNullListAsEmpty:Lg/gar;

    iget p2, p2, Lg/gar;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_36

    invoke-virtual {p4, v2}, Lg/cxa;->write(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_36
    invoke-virtual {p4}, Lg/cxa;->o()V

    goto/16 :goto_1c

    :cond_37
    array-length v3, v1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_38

    invoke-virtual {p4, v2}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    :cond_38
    iget-object v2, p1, Lg/cnu;->b:Lg/aca;

    invoke-virtual {p1, v2, p2, p3}, Lg/cnu;->q(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p2, 0x5b

    :try_start_4
    invoke-virtual {p4, p2}, Lg/cxa;->write(I)V

    iget p2, p4, Lg/cxa;->k:I

    sget-object p3, Lg/gar;->PrettyFormat:Lg/gar;

    iget p3, p3, Lg/gar;->mask:I

    and-int/2addr p2, p3

    const/16 p3, 0x5d

    const/16 v5, 0x2c

    const/4 v6, 0x0

    if-eqz p2, :cond_3b

    iget p2, p1, Lg/cnu;->i:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lg/cnu;->i:I

    invoke-virtual {p1}, Lg/cnu;->p()V

    :goto_15
    if-ge v6, v3, :cond_3a

    if-eqz v6, :cond_39

    invoke-virtual {p4, v5}, Lg/cxa;->write(I)V

    invoke-virtual {p1}, Lg/cnu;->p()V

    goto :goto_16

    :catchall_3
    move-exception p2

    goto/16 :goto_1d

    :cond_39
    :goto_16
    aget-object p2, v1, v6

    invoke-virtual {p1, p2}, Lg/cnu;->r(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_3a
    iget p2, p1, Lg/cnu;->i:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lg/cnu;->i:I

    invoke-virtual {p1}, Lg/cnu;->p()V

    invoke-virtual {p4, p3}, Lg/cxa;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_17
    iput-object v2, p1, Lg/cnu;->b:Lg/aca;

    goto :goto_1c

    :cond_3b
    const/4 p2, 0x0

    move-object v3, p2

    move-object v7, v3

    :goto_18
    if-ge v6, v4, :cond_3f

    :try_start_5
    aget-object v8, v1, v6

    if-nez v8, :cond_3c

    const-string v8, "null,"

    invoke-virtual {p4, v8}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_3c
    iget-object v9, p1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-eqz v9, :cond_3d

    invoke-virtual {v9, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-virtual {p1, v8}, Lg/cnu;->o(Ljava/lang/Object;)V

    goto :goto_19

    :cond_3d
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v3, :cond_3e

    invoke-interface {v7, p1, v8, p2, p2}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_19

    :cond_3e
    invoke-virtual {v0, v9}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v7

    invoke-interface {v7, p1, v8, p2, p2}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v3, v9

    :goto_19
    invoke-virtual {p4, v5}, Lg/cxa;->write(I)V

    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_3f
    aget-object v1, v1, v4

    if-nez v1, :cond_40

    const-string p2, "null]"

    invoke-virtual {p4, p2}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_40
    iget-object v3, p1, Lg/cnu;->k:Ljava/util/IdentityHashMap;

    if-eqz v3, :cond_41

    invoke-virtual {v3, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p1, v1}, Lg/cnu;->o(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v0

    invoke-interface {v0, p1, v1, v3, p2}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_1b
    :try_start_7
    invoke-virtual {p4, p3}, Lg/cxa;->write(I)V

    goto :goto_17

    :goto_1c
    return-void

    :catch_1
    move-exception p2

    new-instance p3, Lg/bfj;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_1d
    iput-object v2, p1, Lg/cnu;->b:Lg/aca;

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    iget v4, v2, Lg/eyg;->k:I

    const/4 v6, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/16 v13, 0x10

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v0}, Lg/ccw;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v3, v0, Lg/ccw;->h:Lg/fzg;

    iget v4, v3, Lg/fzg;->o:I

    const-class v5, Ljava/lang/Byte;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Short;

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v15, Ljava/lang/Double;

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v12, :cond_9

    if-eq v1, v14, :cond_8

    if-ne v1, v15, :cond_0

    goto :goto_3

    :cond_0
    if-eq v1, v11, :cond_7

    if-ne v1, v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lg/fzg;->ba()J

    move-result-wide v9

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    if-eq v1, v8, :cond_6

    if-ne v1, v7, :cond_2

    goto :goto_1

    :cond_2
    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    const-wide/32 v0, -0x80000000

    cmp-long v3, v9, v0

    if-ltz v3, :cond_4

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, v9, v0

    if-gtz v3, :cond_4

    long-to-int v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_b

    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto/16 :goto_b

    :cond_5
    :goto_0
    long-to-int v0, v9

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    goto/16 :goto_b

    :cond_6
    :goto_1
    long-to-int v0, v9

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    goto/16 :goto_b

    :cond_7
    :goto_2
    invoke-virtual {v3}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    goto/16 :goto_b

    :cond_8
    :goto_3
    invoke-virtual {v3}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto/16 :goto_b

    :cond_9
    if-ne v4, v10, :cond_11

    if-eq v1, v14, :cond_10

    if-ne v1, v15, :cond_a

    goto :goto_6

    :cond_a
    if-eq v1, v11, :cond_f

    if-ne v1, v9, :cond_b

    goto :goto_5

    :cond_b
    new-instance v14, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    if-eq v1, v8, :cond_e

    if-ne v1, v7, :cond_c

    goto :goto_4

    :cond_c
    if-eq v1, v6, :cond_d

    if-ne v1, v5, :cond_1b

    :cond_d
    invoke-virtual {v14}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    goto/16 :goto_b

    :cond_e
    :goto_4
    invoke-virtual {v14}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    goto :goto_b

    :cond_f
    :goto_5
    invoke-virtual {v3}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    goto :goto_b

    :cond_10
    :goto_6
    invoke-virtual {v3}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v14, 0x0

    goto :goto_b

    :cond_12
    if-eq v1, v14, :cond_1a

    if-ne v1, v15, :cond_13

    goto :goto_a

    :cond_13
    if-eq v1, v11, :cond_19

    if-ne v1, v9, :cond_14

    goto :goto_9

    :cond_14
    if-eq v1, v8, :cond_18

    if-ne v1, v7, :cond_15

    goto :goto_8

    :cond_15
    if-eq v1, v6, :cond_17

    if-ne v1, v5, :cond_16

    goto :goto_7

    :cond_16
    invoke-static {v0}, Lg/dtu;->w(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v14

    goto :goto_b

    :cond_17
    :goto_7
    invoke-static {v0}, Lg/dtu;->n(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v14

    goto :goto_b

    :cond_18
    :goto_8
    invoke-static {v0}, Lg/dtu;->q(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v14

    goto :goto_b

    :cond_19
    :goto_9
    invoke-static {v0}, Lg/dtu;->r(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v14

    goto :goto_b

    :cond_1a
    :goto_a
    invoke-static {v0}, Lg/dtu;->c(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v14

    :cond_1b
    :goto_b
    return-object v14

    :pswitch_1
    iget-object v3, v0, Lg/ccw;->h:Lg/fzg;

    const-class v4, Ljava/lang/StackTraceElement;

    const/16 v10, 0xd

    const-string v14, "syntax error"

    if-ne v1, v4, :cond_36

    iget v1, v3, Lg/fzg;->o:I

    if-ne v1, v11, :cond_1c

    invoke-virtual {v3}, Lg/fzg;->az()V

    :goto_c
    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_1c
    const/16 v4, 0xc

    if-eq v1, v4, :cond_1e

    if-ne v1, v13, :cond_1d

    goto :goto_d

    :cond_1d
    new-instance v0, Lg/bfj;

    iget v1, v3, Lg/fzg;->o:I

    invoke-static {v1}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "syntax error: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_d
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_e
    iget-object v7, v0, Lg/ccw;->i:Lg/gqc;

    invoke-virtual {v3, v7}, Lg/fzg;->bl(Lg/gqc;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_21

    iget v5, v3, Lg/fzg;->o:I

    if-ne v5, v10, :cond_1f

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    goto/16 :goto_10

    :cond_1f
    if-ne v5, v13, :cond_21

    iget v5, v3, Lg/fzg;->w:I

    sget-object v10, Lg/cbj;->AllowArbitraryCommas:Lg/cbj;

    iget v10, v10, Lg/cbj;->mask:I

    and-int/2addr v5, v10

    if-eqz v5, :cond_21

    :cond_20
    const/16 v10, 0xd

    goto :goto_e

    :cond_21
    invoke-virtual {v3}, Lg/fzg;->bp()V

    const-string v5, "className"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget v1, v3, Lg/fzg;->o:I

    if-ne v1, v11, :cond_22

    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_22
    if-ne v1, v9, :cond_23

    invoke-virtual {v3}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f

    :cond_23
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const-string v5, "methodName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    iget v4, v3, Lg/fzg;->o:I

    if-ne v4, v11, :cond_25

    const/4 v4, 0x0

    goto/16 :goto_f

    :cond_25
    if-ne v4, v9, :cond_26

    invoke-virtual {v3}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f

    :cond_26
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const-string v5, "fileName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget v5, v3, Lg/fzg;->o:I

    if-ne v5, v11, :cond_28

    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_28
    if-ne v5, v9, :cond_29

    invoke-virtual {v3}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto/16 :goto_f

    :cond_29
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const-string v5, "lineNumber"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget v5, v3, Lg/fzg;->o:I

    if-ne v5, v11, :cond_2b

    const/4 v15, 0x0

    goto :goto_f

    :cond_2b
    if-ne v5, v12, :cond_2c

    invoke-virtual {v3}, Lg/fzg;->bd()I

    move-result v5

    move v15, v5

    goto :goto_f

    :cond_2c
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const-string v5, "nativeMethod"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget v5, v3, Lg/fzg;->o:I

    if-ne v5, v11, :cond_2e

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    goto :goto_f

    :cond_2e
    if-ne v5, v6, :cond_2f

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    goto :goto_f

    :cond_2f
    const/4 v7, 0x7

    if-ne v5, v7, :cond_30

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    goto :goto_f

    :cond_30
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    const-string v5, "@type"

    const-string v10, "syntax error : "

    if-ne v7, v5, :cond_35

    iget v5, v3, Lg/fzg;->o:I

    if-ne v5, v9, :cond_33

    invoke-virtual {v3}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v5

    const-string v7, "java.lang.StackTraceElement"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_f

    :cond_32
    new-instance v0, Lg/bfj;

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    if-ne v5, v11, :cond_34

    :goto_f
    iget v5, v3, Lg/fzg;->o:I

    const/16 v7, 0xd

    if-ne v5, v7, :cond_20

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    :goto_10
    new-instance v14, Ljava/lang/StackTraceElement;

    invoke-direct {v14, v1, v4, v8, v15}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_14

    :cond_34
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Lg/bfj;

    invoke-static {v10, v7}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget v4, v0, Lg/ccw;->c:I

    if-ne v4, v12, :cond_39

    const/4 v4, 0x0

    iput v4, v0, Lg/ccw;->c:I

    invoke-virtual {v0, v13}, Lg/ccw;->w(I)V

    iget v4, v3, Lg/fzg;->o:I

    if-ne v4, v9, :cond_38

    const-string v4, "val"

    invoke-virtual {v3}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v3}, Lg/fzg;->az()V

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Lg/ccw;->w(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Lg/ccw;->w(I)V

    goto :goto_11

    :cond_37
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Lg/bfj;

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_11
    if-nez v5, :cond_3a

    goto/16 :goto_13

    :cond_3a
    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_4b

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3b

    goto/16 :goto_13

    :cond_3b
    const-class v4, Ljava/util/UUID;

    if-ne v1, v4, :cond_3c

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v14

    goto/16 :goto_14

    :cond_3c
    const-class v4, Ljava/lang/Class;

    if-ne v1, v4, :cond_3d

    iget-object v0, v0, Lg/ccw;->k:Lg/mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lg/dtu;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    goto/16 :goto_14

    :cond_3d
    const-class v0, Ljava/util/Locale;

    if-ne v1, v0, :cond_40

    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v8, :cond_3e

    new-instance v14, Ljava/util/Locale;

    const/16 v16, 0x0

    aget-object v0, v0, v16

    invoke-direct {v14, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_3e
    const/16 v16, 0x0

    array-length v1, v0

    if-ne v1, v12, :cond_3f

    new-instance v14, Ljava/util/Locale;

    aget-object v1, v0, v16

    aget-object v0, v0, v8

    invoke-direct {v14, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_3f
    new-instance v14, Ljava/util/Locale;

    aget-object v1, v0, v16

    aget-object v3, v0, v8

    aget-object v0, v0, v12

    invoke-direct {v14, v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_40
    const-class v0, Ljava/net/URI;

    if-ne v1, v0, :cond_41

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    goto/16 :goto_14

    :cond_41
    const-class v0, Ljava/net/URL;

    if-ne v1, v0, :cond_42

    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    new-instance v1, Lg/bfj;

    const-string v3, "create url error"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_42
    const-class v0, Ljava/util/regex/Pattern;

    if-ne v1, v0, :cond_43

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    goto :goto_14

    :cond_43
    const-class v0, Ljava/nio/charset/Charset;

    if-ne v1, v0, :cond_44

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    goto :goto_14

    :cond_44
    const-class v0, Ljava/util/Currency;

    if-ne v1, v0, :cond_45

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v14

    goto :goto_14

    :cond_45
    const-class v0, Ljava/text/SimpleDateFormat;

    if-ne v1, v0, :cond_46

    new-instance v14, Ljava/text/SimpleDateFormat;

    iget-object v0, v3, Lg/fzg;->i:Ljava/util/Locale;

    invoke-direct {v14, v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, v3, Lg/fzg;->u:Ljava/util/TimeZone;

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_14

    :cond_46
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v0, :cond_48

    const-class v0, Ljava/lang/Character;

    if-ne v1, v0, :cond_47

    goto :goto_12

    :cond_47
    invoke-static {v5}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    goto :goto_14

    :cond_48
    :goto_12
    sget-boolean v0, Lg/dtu;->a:Z

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_49

    :goto_13
    goto/16 :goto_c

    :cond_49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_4a

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    :goto_14
    return-object v14

    :cond_4a
    new-instance v0, Lg/bfj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "can not cast to byte, value : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Lg/bfj;

    const-string v1, "except string value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v4, v0, Lg/ccw;->h:Lg/fzg;

    iget v5, v4, Lg/fzg;->o:I

    if-ne v5, v11, :cond_4c

    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    const/4 v14, 0x0

    goto/16 :goto_1a

    :cond_4c
    const-class v6, Ljava/lang/Long;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v12, :cond_4f

    if-eq v1, v7, :cond_4e

    if-ne v1, v6, :cond_4d

    goto :goto_16

    :cond_4d
    :try_start_1
    invoke-virtual {v4}, Lg/fzg;->bd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_15
    move-object v14, v0

    goto :goto_17

    :catch_1
    move-exception v0

    new-instance v1, Lg/bfj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "int value overflow, field : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4e
    :goto_16
    invoke-virtual {v4}, Lg/fzg;->ba()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_15

    :goto_17
    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    goto :goto_1a

    :cond_4f
    if-ne v5, v10, :cond_52

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    if-eq v1, v7, :cond_51

    if-ne v1, v6, :cond_50

    goto :goto_18

    :cond_50
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_1a

    :cond_51
    :goto_18
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_1a

    :cond_52
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v1, v7, :cond_54

    if-ne v1, v6, :cond_53

    goto :goto_19

    :cond_53
    :try_start_2
    invoke-static {v4}, Lg/dtu;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_1a

    :catch_2
    move-exception v0

    goto :goto_1b

    :cond_54
    :goto_19
    invoke-static {v4}, Lg/dtu;->h(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1a
    return-object v14

    :goto_1b
    new-instance v1, Lg/bfj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cast error, field : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_3
    iget-object v4, v0, Lg/ccw;->h:Lg/fzg;

    iget v5, v4, Lg/fzg;->o:I

    if-ne v5, v11, :cond_55

    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    const/4 v14, 0x0

    goto/16 :goto_22

    :cond_55
    const-class v4, Lg/grv;

    if-ne v1, v4, :cond_56

    new-instance v1, Lg/grv;

    invoke-direct {v1}, Lg/grv;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lg/ccw;->u(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v14, v1

    goto/16 :goto_22

    :cond_56
    move-object v4, v1

    :goto_1c
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_62

    check-cast v4, Ljava/lang/Class;

    const-class v5, Ljava/util/AbstractCollection;

    const-class v6, Ljava/lang/Object;

    if-eq v4, v5, :cond_5e

    const-class v5, Ljava/util/Collection;

    if-ne v4, v5, :cond_57

    goto/16 :goto_1e

    :cond_57
    const-class v5, Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_58

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto :goto_1f

    :cond_58
    const-class v5, Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_59

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_1f

    :cond_59
    const-class v5, Ljava/util/TreeSet;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5a

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1f

    :cond_5a
    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1f

    :cond_5b
    const-class v5, Ljava/util/EnumSet;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5d

    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_5c

    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/16 v16, 0x0

    aget-object v4, v4, v16

    goto :goto_1d

    :cond_5c
    move-object v4, v6

    :goto_1d
    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_1f

    :cond_5d
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v5

    goto :goto_1f

    :catch_3
    new-instance v0, Lg/bfj;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "create instane error, class "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    :goto_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1f
    instance-of v5, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_5f

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/16 v16, 0x0

    aget-object v6, v1, v16

    goto :goto_21

    :cond_5f
    instance-of v5, v1, Ljava/lang/Class;

    if-eqz v5, :cond_60

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "java."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_60

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_60

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/16 v16, 0x0

    aget-object v14, v1, v16

    goto :goto_20

    :cond_60
    const/4 v14, 0x0

    :goto_20
    if-nez v14, :cond_61

    goto :goto_21

    :cond_61
    move-object v6, v14

    :goto_21
    invoke-virtual {v0, v6, v4, v3}, Lg/ccw;->aa(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v14, v4

    :goto_22
    return-object v14

    :cond_62
    const/16 v16, 0x0

    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_63

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    goto/16 :goto_1c

    :cond_63
    new-instance v0, Lg/bfj;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-object v1, v0, Lg/ccw;->h:Lg/fzg;

    iget v3, v1, Lg/fzg;->o:I

    if-ne v3, v6, :cond_64

    invoke-virtual {v1, v13}, Lg/fzg;->bg(I)V

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_23

    :cond_64
    const/4 v7, 0x7

    if-ne v3, v7, :cond_65

    invoke-virtual {v1, v13}, Lg/fzg;->bg(I)V

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_23

    :cond_65
    if-ne v3, v12, :cond_67

    invoke-virtual {v1}, Lg/fzg;->bd()I

    move-result v0

    invoke-virtual {v1, v13}, Lg/fzg;->bg(I)V

    if-ne v0, v8, :cond_66

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_23

    :cond_66
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_23

    :cond_67
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_68

    const/4 v14, 0x0

    goto :goto_23

    :cond_68
    invoke-static {v0}, Lg/dtu;->i(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v14

    :goto_23
    return-object v14

    :pswitch_5
    iget-object v3, v0, Lg/ccw;->h:Lg/fzg;

    iget v4, v3, Lg/fzg;->o:I

    const-class v5, Ljava/math/BigInteger;

    if-ne v4, v12, :cond_6a

    invoke-virtual {v3}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    if-ne v1, v5, :cond_69

    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :cond_69
    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :cond_6a
    if-ne v4, v10, :cond_6b

    new-instance v14, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Lg/fzg;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lg/fzg;->bg(I)V

    if-ne v1, v5, :cond_6e

    invoke-virtual {v14}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v14

    goto :goto_24

    :cond_6b
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6c

    const/4 v14, 0x0

    goto :goto_24

    :cond_6c
    if-ne v1, v5, :cond_6d

    invoke-static {v0}, Lg/dtu;->g(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v14

    goto :goto_24

    :cond_6d
    invoke-static {v0}, Lg/dtu;->w(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v14

    :cond_6e
    :goto_24
    return-object v14

    :pswitch_6
    iget-object v4, v0, Lg/ccw;->h:Lg/fzg;

    iget v5, v4, Lg/fzg;->o:I

    if-ne v5, v11, :cond_6f

    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    const/4 v14, 0x0

    goto :goto_25

    :cond_6f
    const-class v6, [C

    if-ne v1, v6, :cond_72

    if-ne v5, v9, :cond_70

    invoke-virtual {v4}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    goto :goto_25

    :cond_70
    if-ne v5, v12, :cond_71

    invoke-virtual {v4}, Lg/fzg;->bf()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    goto :goto_25

    :cond_71
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/ex;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    goto :goto_25

    :cond_72
    if-ne v5, v9, :cond_73

    invoke-virtual {v4}, Lg/fzg;->ao()[B

    move-result-object v14

    invoke-virtual {v4, v13}, Lg/fzg;->bg(I)V

    goto :goto_25

    :cond_73
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Lg/grv;

    invoke-direct {v4}, Lg/grv;-><init>()V

    invoke-virtual {v0, v1, v4, v3}, Lg/ccw;->aa(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-static {v0, v1, v4}, Lg/eyg;->l(Lg/ccw;Ljava/lang/Class;Lg/grv;)Ljava/lang/Object;

    move-result-object v14

    :goto_25
    return-object v14

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
