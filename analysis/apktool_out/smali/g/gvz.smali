.class public final Lg/gvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/duf;
.implements Lg/cma;


# static fields
.field public static final a:Lg/gvz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gvz;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gvz;->a:Lg/gvz;

    return-void
.end method

.method public static c(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lg/ccw;->h:Lg/fzg;

    iget v1, v0, Lg/fzg;->o:I

    const/4 v2, 0x0

    const-class v3, Ljava/util/Calendar;

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    invoke-virtual {v0}, Lg/fzg;->ba()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5}, Lg/fzg;->bg(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x4

    if-ne v1, v7, :cond_3

    invoke-virtual {v0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Lg/fzg;->bg(I)V

    iget v5, v0, Lg/fzg;->w:I

    sget-object v6, Lg/cbj;->AllowISO8601DateFormat:Lg/cbj;

    iget v6, v6, Lg/cbj;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    new-instance v5, Lg/fzg;

    invoke-direct {v5, v1}, Lg/fzg;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lg/fzg;->am(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, v5, Lg/fzg;->m:Ljava/util/Calendar;

    if-ne p1, v3, :cond_1

    invoke-virtual {v5}, Lg/fzg;->aw()V

    return-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :cond_2
    invoke-virtual {v5}, Lg/fzg;->aw()V

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x8

    if-ne v1, v8, :cond_4

    invoke-virtual {v0}, Lg/fzg;->az()V

    move-object v1, v4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0xc

    const/16 v9, 0xd

    const/16 v10, 0x11

    const-string v11, "syntax error"

    if-ne v1, v8, :cond_9

    invoke-virtual {v0}, Lg/fzg;->az()V

    iget v1, v0, Lg/fzg;->o:I

    if-ne v1, v7, :cond_8

    invoke-virtual {v0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v1

    const-string v8, "@type"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lg/fzg;->az()V

    invoke-virtual {p0, v10}, Lg/ccw;->w(I)V

    invoke-virtual {v0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lg/ccw;->k:Lg/mh;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lg/dtu;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object p1, v1

    :cond_5
    invoke-virtual {p0, v7}, Lg/ccw;->w(I)V

    invoke-virtual {p0, v5}, Lg/ccw;->w(I)V

    :cond_6
    invoke-virtual {v0}, Lg/fzg;->bp()V

    iget v1, v0, Lg/fzg;->o:I

    if-ne v1, v6, :cond_7

    invoke-virtual {v0}, Lg/fzg;->ba()J

    move-result-wide v5

    invoke-virtual {v0}, Lg/fzg;->az()V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v9}, Lg/ccw;->w(I)V

    goto :goto_0

    :cond_7
    new-instance p0, Lg/bfj;

    iget p1, v0, Lg/fzg;->o:I

    invoke-static {p1}, Lg/gs;->h(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "syntax error : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lg/bfj;

    invoke-direct {p0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget v1, p0, Lg/ccw;->c:I

    if-ne v1, v6, :cond_c

    iput v2, p0, Lg/ccw;->c:I

    invoke-virtual {p0, v5}, Lg/ccw;->w(I)V

    iget v1, v0, Lg/fzg;->o:I

    if-ne v1, v7, :cond_b

    const-string v1, "val"

    invoke-virtual {v0}, Lg/fzg;->bj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lg/fzg;->az()V

    invoke-virtual {p0, v10}, Lg/ccw;->w(I)V

    invoke-virtual {p0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v9}, Lg/ccw;->w(I)V

    goto :goto_0

    :cond_a
    new-instance p0, Lg/bfj;

    invoke-direct {p0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lg/bfj;

    invoke-direct {p0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {p0, v4}, Lg/ccw;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_d
    :goto_0
    if-nez v1, :cond_e

    :goto_1
    move-object v1, v4

    goto/16 :goto_5

    :cond_e
    instance-of v5, v1, Ljava/util/Date;

    if-eqz v5, :cond_f

    goto/16 :goto_5

    :cond_f
    instance-of v5, v1, Ljava/lang/Number;

    if-eqz v5, :cond_10

    new-instance p0, Ljava/util/Date;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_2
    move-object v1, p0

    goto :goto_5

    :cond_10
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_19

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_11

    goto :goto_1

    :cond_11
    new-instance v5, Lg/fzg;

    invoke-direct {v5, v1}, Lg/fzg;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5, v2}, Lg/fzg;->am(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v1, v5, Lg/fzg;->m:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_12

    :goto_3
    invoke-virtual {v5}, Lg/fzg;->aw()V

    goto :goto_5

    :cond_12
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_13
    invoke-virtual {v5}, Lg/fzg;->aw()V

    if-eqz p2, :cond_14

    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    iget-object p2, p0, Lg/ccw;->g:Ljava/text/SimpleDateFormat;

    if-nez p2, :cond_15

    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lg/ccw;->d:Ljava/lang/String;

    iget-object v5, v0, Lg/fzg;->i:Ljava/util/Locale;

    invoke-direct {p2, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lg/ccw;->g:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lg/fzg;->u:Ljava/util/TimeZone;

    invoke-virtual {p2, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_15
    iget-object p0, p0, Lg/ccw;->g:Ljava/text/SimpleDateFormat;

    :goto_4
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :goto_5
    if-ne p1, v3, :cond_18

    instance-of p0, v1, Ljava/util/Calendar;

    if-eqz p0, :cond_16

    return-object v1

    :cond_16
    check-cast v1, Ljava/util/Date;

    if-nez v1, :cond_17

    return-object v4

    :cond_17
    iget-object p0, v0, Lg/fzg;->u:Ljava/util/TimeZone;

    iget-object p1, v0, Lg/fzg;->i:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p0

    :cond_18
    return-object v1

    :goto_6
    invoke-virtual {v5}, Lg/fzg;->aw()V

    throw p0

    :cond_19
    new-instance p0, Lg/bfj;

    const-string p1, "parse error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lg/cnu;->j:Lg/cxa;

    iget-object v3, v0, Lg/cnu;->d:Ljava/util/TimeZone;

    iget-object v4, v0, Lg/cnu;->h:Ljava/util/Locale;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lg/cxa;->o()V

    return-void

    :cond_0
    iget v5, v2, Lg/cxa;->k:I

    sget-object v6, Lg/gar;->WriteClassName:Lg/gar;

    iget v6, v6, Lg/gar;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v6, p4

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/Date;

    if-ne v3, v4, :cond_1

    const-string v0, "new Date("

    invoke-virtual {v2, v0}, Lg/cxa;->write(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lg/cxa;->w(J)V

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Lg/cxa;->write(I)V

    return-void

    :cond_1
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lg/cxa;->write(I)V

    const-string v3, "@type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lg/cxa;->p(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/cnu;->n(Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Lg/cxa;->write(I)V

    const-string v0, "val"

    invoke-virtual {v2, v0, v4}, Lg/cxa;->p(Ljava/lang/String;Z)V

    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lg/cxa;->w(J)V

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Lg/cxa;->write(I)V

    return-void

    :cond_2
    instance-of v0, v1, Ljava/util/Calendar;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    :goto_0
    iget v1, v2, Lg/cxa;->k:I

    sget-object v5, Lg/gar;->WriteDateUseDateFormat:Lg/gar;

    iget v5, v5, Lg/gar;->mask:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_4

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v5, Lg/ex;->b:Ljava/lang/String;

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/cxa;->t(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget v5, v2, Lg/cxa;->k:I

    sget-object v6, Lg/gar;->UseISO8601DateFormat:Lg/gar;

    iget v6, v6, Lg/gar;->mask:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_9

    sget-object v6, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v7, v6, Lg/gar;->mask:I

    and-int/2addr v5, v7

    const/16 v7, 0x22

    const/16 v8, 0x27

    if-eqz v5, :cond_5

    invoke-virtual {v2, v8}, Lg/cxa;->write(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v7}, Lg/cxa;->write(I)V

    :goto_1
    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v0

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xd

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xe

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v12, 0x10

    const/16 v13, 0x13

    const/16 v7, 0xa

    if-eqz v3, :cond_6

    const-string v16, "0000-00-00T00:00:00.000"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    int-to-long v14, v3

    const/16 v3, 0x17

    invoke-static {v14, v15, v3, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v14, v11

    invoke-static {v14, v15, v13, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v13, v9

    invoke-static {v13, v14, v12, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v11, v5

    invoke-static {v11, v12, v10, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v9, v0

    invoke-static {v9, v10, v7, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v3, v4

    const/4 v0, 0x7

    invoke-static {v3, v4, v0, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v0, v1

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v8}, Lg/cxa;->n(JI[C)V

    goto :goto_2

    :cond_6
    if-nez v11, :cond_7

    if-nez v9, :cond_7

    if-nez v5, :cond_7

    const-string v3, "0000-00-00"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    int-to-long v9, v0

    invoke-static {v9, v10, v7, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v3, v4

    const/4 v0, 0x7

    invoke-static {v3, v4, v0, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v0, v1

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v8}, Lg/cxa;->n(JI[C)V

    goto :goto_2

    :cond_7
    const-string v3, "0000-00-00T00:00:00"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    int-to-long v14, v11

    invoke-static {v14, v15, v13, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v13, v9

    invoke-static {v13, v14, v12, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v11, v5

    invoke-static {v11, v12, v10, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v9, v0

    invoke-static {v9, v10, v7, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v3, v4

    const/4 v0, 0x7

    invoke-static {v3, v4, v0, v8}, Lg/cxa;->n(JI[C)V

    int-to-long v0, v1

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v8}, Lg/cxa;->n(JI[C)V

    :goto_2
    invoke-virtual {v2, v8}, Ljava/io/Writer;->write([C)V

    iget v0, v2, Lg/cxa;->k:I

    iget v1, v6, Lg/gar;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Lg/cxa;->write(I)V

    return-void

    :cond_8
    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Lg/cxa;->write(I)V

    return-void

    :cond_9
    invoke-virtual {v2, v0, v1}, Lg/cxa;->w(J)V

    return-void
.end method

.method public final g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lg/gvz;->c(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
