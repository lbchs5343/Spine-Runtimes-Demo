.class public final Lg/avr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/avr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/avr;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static c(Lg/gey;Lg/gey;)Z
    .locals 4

    instance-of v0, p0, Lg/fb;

    if-eqz v0, :cond_0

    new-instance v0, Lg/bsa;

    invoke-interface {p0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    instance-of v0, p1, Lg/fb;

    if-eqz v0, :cond_1

    new-instance v0, Lg/bsa;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    instance-of v0, p0, Lg/bsa;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lg/bsa;

    if-nez v0, :cond_3

    :cond_2
    invoke-interface {p0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {p1, p0}, Lg/avr;->f(Lg/gey;Lg/gey;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static d(Lg/ehn;Ljava/util/Iterator;Lg/gey;)Lg/gey;
    .locals 3

    if-eqz p1, :cond_2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    invoke-interface {p0, v0}, Lg/ehn;->l(Lg/gey;)Lg/dpa;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lg/gwa;

    invoke-virtual {v0, v1}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object v0

    instance-of v1, v0, Lg/enl;

    if-eqz v1, :cond_0

    check-cast v0, Lg/enl;

    const-string v1, "break"

    iget-object v2, v0, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lg/gey;->o:Lg/gdz;

    return-object p0

    :cond_1
    const-string v1, "return"

    iget-object v2, v0, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    sget-object p0, Lg/gey;->o:Lg/gdz;

    return-object p0
.end method

.method public static e(Lg/gey;Lg/gey;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    instance-of v0, p0, Lg/gdz;

    if-nez v0, :cond_7

    instance-of v0, p0, Lg/hee;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lg/hbz;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpl-double v0, v3, p0

    if-nez v0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    instance-of v0, p0, Lg/bsa;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, Lg/bbk;

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    if-ne p0, p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v2

    :cond_8
    instance-of v0, p0, Lg/gdz;

    if-nez v0, :cond_9

    instance-of v0, p0, Lg/hee;

    if-eqz v0, :cond_a

    :cond_9
    instance-of v0, p1, Lg/gdz;

    if-nez v0, :cond_16

    instance-of v0, p1, Lg/hee;

    if-nez v0, :cond_16

    :cond_a
    instance-of v0, p0, Lg/hbz;

    if-eqz v0, :cond_c

    instance-of v2, p1, Lg/bsa;

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Lg/hbz;

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    invoke-static {p0, v0}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p0

    return p0

    :cond_c
    :goto_2
    instance-of v2, p0, Lg/bsa;

    if-eqz v2, :cond_e

    instance-of v3, p1, Lg/hbz;

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    new-instance v0, Lg/hbz;

    invoke-interface {p0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    invoke-static {v0, p1}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p0

    return p0

    :cond_e
    :goto_3
    instance-of v3, p0, Lg/bbk;

    if-eqz v3, :cond_f

    new-instance v0, Lg/hbz;

    invoke-interface {p0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    invoke-static {v0, p1}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p0

    return p0

    :cond_f
    instance-of v3, p1, Lg/bbk;

    if-eqz v3, :cond_10

    new-instance v0, Lg/hbz;

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    invoke-static {p0, v0}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p0

    return p0

    :cond_10
    if-nez v2, :cond_11

    if-eqz v0, :cond_12

    :cond_11
    instance-of v0, p1, Lg/fb;

    if-nez v0, :cond_15

    :cond_12
    instance-of v0, p0, Lg/fb;

    if-eqz v0, :cond_14

    instance-of v0, p1, Lg/bsa;

    if-nez v0, :cond_13

    instance-of v0, p1, Lg/hbz;

    if-eqz v0, :cond_14

    :cond_13
    new-instance v0, Lg/bsa;

    invoke-interface {p0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p0

    return p0

    :cond_14
    return v1

    :cond_15
    new-instance v0, Lg/bsa;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, v0}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_16
    return v2
.end method

.method public static f(Lg/gey;Lg/gey;)Z
    .locals 8

    instance-of v0, p0, Lg/fb;

    if-eqz v0, :cond_0

    new-instance v0, Lg/bsa;

    invoke-interface {p0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    instance-of v0, p1, Lg/fb;

    if-eqz v0, :cond_1

    new-instance v0, Lg/bsa;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    instance-of v0, p0, Lg/bsa;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lg/bsa;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    check-cast p0, Lg/bsa;

    iget-object p0, p0, Lg/bsa;->a:Ljava/lang/String;

    check-cast p1, Lg/bsa;

    iget-object p1, p1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    invoke-interface {p0}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_6

    cmpl-double v7, p0, v5

    if-eqz v7, :cond_7

    :cond_6
    if-nez v0, :cond_8

    cmpl-double v0, p0, v5

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_9

    return v1

    :cond_9
    :goto_2
    return v2
.end method

.method public static g(Lg/dpa;Ljava/util/List;)Lg/dxk;
    .locals 5

    sget-object v0, Lg/gdt;->zzz:Lg/gdt;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, p0, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, p0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, p0, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v2

    instance-of v3, v2, Lg/gwa;

    if-eqz v3, :cond_1

    check-cast v2, Lg/gwa;

    invoke-virtual {v2}, Lg/gwa;->e()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :cond_0
    new-instance p1, Lg/dxk;

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2, v3, p0}, Lg/dxk;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lg/dpa;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FN requires an ArrayValue of parameter names found "

    invoke-static {v0, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Lg/ehn;Lg/gey;Lg/gey;)Lg/gey;
    .locals 1

    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lg/avr;->d(Lg/ehn;Ljava/util/Iterator;Lg/gey;)Lg/gey;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-iterable type in for...of loop."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final i(Ljava/lang/String;Lg/dpa;Ljava/util/ArrayList;)Lg/gey;
    .locals 11

    iget v0, p0, Lg/avr;->b:I

    const/16 v1, 0xf

    const-string v2, "break"

    const-string v3, "return"

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lg/gdt;->zza:Lg/gdt;

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v4, :cond_21

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x21

    if-eq v0, v1, :cond_19

    const/16 v1, 0x31

    if-eq v0, v1, :cond_18

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_15

    const/16 v1, 0x11

    if-eq v0, v1, :cond_12

    const/16 v1, 0x12

    if-eq v0, v1, :cond_e

    const/16 v1, 0x23

    if-eq v0, v1, :cond_9

    const/16 v1, 0x24

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, p1}, Lg/avr;->j(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    sget-object p1, Lg/gdt;->zzam:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, p3}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    instance-of v0, p3, Lg/bsa;

    if-eqz v0, :cond_0

    check-cast p3, Lg/bsa;

    iget-object p3, p3, Lg/bsa;->a:Ljava/lang/String;

    sget-object v0, Lg/gey;->o:Lg/gdz;

    invoke-virtual {p2, p3, v0}, Lg/dpa;->m(Ljava/lang/String;Lg/gey;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Expected string for var name. got "

    invoke-static {p3, p2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_8

    :pswitch_1
    sget-object p1, Lg/gdt;->zzal:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, p3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_8

    :pswitch_2
    sget-object p1, Lg/gdt;->zzak:Lg/gdt;

    invoke-static {p1, v7, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of p2, p1, Lg/gdz;

    if-eqz p2, :cond_2

    const-string p1, "undefined"

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lg/bbk;

    if-eqz p2, :cond_3

    const-string p1, "boolean"

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lg/hbz;

    if-eqz p2, :cond_4

    const-string p1, "number"

    goto :goto_1

    :cond_4
    instance-of p2, p1, Lg/bsa;

    if-eqz p2, :cond_5

    const-string p1, "string"

    goto :goto_1

    :cond_5
    instance-of p2, p1, Lg/dxk;

    if-eqz p2, :cond_6

    const-string p1, "function"

    goto :goto_1

    :cond_6
    instance-of p2, p1, Lg/fud;

    if-nez p2, :cond_8

    instance-of p2, p1, Lg/enl;

    if-nez p2, :cond_8

    const-string p1, "object"

    :goto_1
    new-instance p2, Lg/bsa;

    invoke-direct {p2, p1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    :cond_7
    :goto_2
    move-object p1, p2

    goto/16 :goto_8

    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v7, [Ljava/lang/Object;

    aput-object p1, p3, v8

    const-string p1, "Unsupported value type %s in typeof"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    sget-object p1, Lg/gdt;->zzK:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    instance-of p3, p1, Lg/gwa;

    if-eqz p3, :cond_a

    invoke-static {p2}, Lg/byh;->ap(Lg/gey;)Z

    move-result p3

    if-eqz p3, :cond_a

    check-cast p1, Lg/gwa;

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lg/gwa;->g(I)Lg/gey;

    move-result-object p1

    goto/16 :goto_8

    :cond_a
    instance-of p3, p1, Lg/fb;

    if-eqz p3, :cond_b

    check-cast p1, Lg/fb;

    invoke-interface {p2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lg/fb;->zzf(Ljava/lang/String;)Lg/gey;

    move-result-object p1

    goto/16 :goto_8

    :cond_b
    instance-of p3, p1, Lg/bsa;

    if-eqz p3, :cond_d

    const-string p3, "length"

    invoke-interface {p2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    new-instance p2, Lg/hbz;

    check-cast p1, Lg/bsa;

    iget-object p1, p1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto :goto_2

    :cond_c
    invoke-static {p2}, Lg/byh;->ap(Lg/gey;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Lg/bsa;

    iget-object p3, p1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    int-to-double v2, p3

    cmpg-double p3, v0, v2

    if-gez p3, :cond_d

    new-instance p3, Lg/bsa;

    iget-object p1, p1, Lg/bsa;->a:Ljava/lang/String;

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    :goto_3
    move-object p1, p3

    goto/16 :goto_8

    :cond_d
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_8

    :cond_e
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Lg/byt;

    invoke-direct {p1}, Lg/byt;-><init>()V

    goto/16 :goto_8

    :cond_f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    rem-int/2addr p1, v6

    if-nez p1, :cond_11

    new-instance p1, Lg/byt;

    invoke-direct {p1}, Lg/byt;-><init>()V

    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_22

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    iget-object v2, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, p2, v1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    instance-of v2, v0, Lg/enl;

    if-nez v2, :cond_10

    instance-of v2, v1, Lg/enl;

    if-nez v2, :cond_10

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lg/byt;->a(Ljava/lang/String;Lg/gey;)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to evaluate map entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "CREATE_OBJECT requires an even number of arguments, found "

    invoke-static {p2, p3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lg/gwa;

    invoke-direct {p1}, Lg/gwa;-><init>()V

    goto/16 :goto_8

    :cond_13
    new-instance p1, Lg/gwa;

    invoke-direct {p1}, Lg/gwa;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    instance-of v1, v0, Lg/enl;

    if-nez v1, :cond_14

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p1, v8, v0}, Lg/gwa;->r(ILg/gey;)V

    move v8, v1

    goto :goto_5

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to evaluate array element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    sget-object p1, Lg/gdt;->zzag:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    sget-object p3, Lg/gey;->o:Lg/gdz;

    if-eq p1, p3, :cond_17

    sget-object p3, Lg/gey;->i:Lg/hee;

    if-eq p1, p3, :cond_17

    instance-of p3, p1, Lg/gwa;

    if-eqz p3, :cond_16

    instance-of p3, v0, Lg/hbz;

    if-eqz p3, :cond_16

    check-cast p1, Lg/gwa;

    check-cast v0, Lg/hbz;

    iget-object p3, v0, Lg/hbz;->a:Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lg/gwa;->r(ILg/gey;)V

    goto/16 :goto_2

    :cond_16
    instance-of p3, p1, Lg/fb;

    if-eqz p3, :cond_7

    check-cast p1, Lg/fb;

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lg/fb;->a(Ljava/lang/String;Lg/gey;)V

    goto/16 :goto_2

    :cond_17
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can\'t set property "

    const-string v1, " of "

    invoke-static {v0, p3, v1, p1}, Lg/awf;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_18
    sget-object p1, Lg/gdt;->zzX:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, p3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    sget-object p1, Lg/gey;->i:Lg/hee;

    goto/16 :goto_8

    :cond_19
    sget-object p1, Lg/gdt;->zzH:Lg/gdt;

    invoke-static {p1, v7, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of p3, p1, Lg/bsa;

    if-eqz p3, :cond_1a

    check-cast p1, Lg/bsa;

    iget-object p1, p1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lg/dpa;->k(Ljava/lang/String;)Lg/gey;

    move-result-object p1

    goto/16 :goto_8

    :cond_1a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Expected string for get var. got "

    invoke-static {p3, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1b
    sget-object p1, Lg/gdt;->zzy:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, p3}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    sget-object p1, Lg/gey;->o:Lg/gdz;

    :goto_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_22

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of v0, p1, Lg/enl;

    if-nez v0, :cond_1c

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ControlValue cannot be in an expression list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    sget-object p1, Lg/gdt;->zzo:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p3}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    rem-int/2addr p1, v6

    if-nez p1, :cond_20

    :goto_7
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v8, p1, :cond_1f

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of v0, p1, Lg/bsa;

    if-eqz v0, :cond_1e

    check-cast p1, Lg/bsa;

    iget-object p1, p1, Lg/bsa;->a:Ljava/lang/String;

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lg/dpa;->m(Ljava/lang/String;Lg/gey;)V

    iget-object v0, p2, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x2

    goto :goto_7

    :cond_1e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Expected string for const name. got "

    invoke-static {p3, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1f
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto :goto_8

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "CONST requires an even number of arguments, found "

    invoke-static {p2, p3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    sget-object p1, Lg/gdt;->zzd:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of v0, p1, Lg/bsa;

    if-eqz v0, :cond_24

    check-cast p1, Lg/bsa;

    iget-object v0, p1, Lg/bsa;->a:Ljava/lang/String;

    iget-object p1, p1, Lg/bsa;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lg/dpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    goto/16 :goto_3

    :cond_22
    :goto_8
    return-object p1

    :cond_23
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Attempting to assign undefined value "

    invoke-static {p3, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_24
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Expected string for assign var. got "

    invoke-static {p3, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_3
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p2, p1}, Lg/dpa;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p2, p1}, Lg/dpa;->k(Ljava/lang/String;)Lg/gey;

    move-result-object v0

    instance-of v1, v0, Lg/fdk;

    if-eqz v1, :cond_25

    check-cast v0, Lg/fdk;

    invoke-virtual {v0, p2, p3}, Lg/fdk;->e(Lg/dpa;Ljava/util/List;)Lg/gey;

    move-result-object p1

    return-object p1

    :cond_25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Function "

    const-string v0, " is not defined"

    invoke-static {p3, p1, v0}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Command not found: "

    invoke-static {p3, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_4
    sget-object v0, Lg/gdt;->zza:Lg/gdt;

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_29

    const/16 v1, 0x34

    if-eq v0, v1, :cond_28

    const/16 v1, 0x35

    if-eq v0, v1, :cond_28

    const/16 v1, 0x37

    if-eq v0, v1, :cond_27

    const/16 v1, 0x38

    if-eq v0, v1, :cond_27

    packed-switch v0, :pswitch_data_2

    invoke-virtual {p0, p1}, Lg/avr;->j(Ljava/lang/String;)V

    throw v5

    :pswitch_5
    sget-object p1, Lg/gdt;->zzU:Lg/gdt;

    invoke-static {p1, v7, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    new-instance p2, Lg/hbz;

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_b

    :pswitch_6
    sget-object p1, Lg/gdt;->zzT:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    new-instance p3, Lg/hbz;

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    :goto_9
    move-object p2, p3

    goto/16 :goto_b

    :pswitch_7
    sget-object p1, Lg/gdt;->zzS:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    new-instance p3, Lg/hbz;

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto :goto_9

    :cond_27
    invoke-static {v7, p1, p3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    goto/16 :goto_b

    :cond_28
    invoke-static {v6, p1, p3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    invoke-virtual {p2, p3}, Lg/dpa;->j(Lg/gey;)Lg/gey;

    move-object p2, p1

    goto/16 :goto_b

    :cond_29
    sget-object p1, Lg/gdt;->zzah:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    neg-double p2, p2

    new-instance v0, Lg/hbz;

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    add-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    move-object p2, v0

    goto/16 :goto_b

    :cond_2a
    sget-object p1, Lg/gdt;->zzv:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    new-instance p3, Lg/hbz;

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_9

    :cond_2b
    sget-object p1, Lg/gdt;->zza:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    instance-of p3, p1, Lg/fb;

    if-nez p3, :cond_2d

    instance-of p3, p1, Lg/bsa;

    if-nez p3, :cond_2d

    instance-of p3, p2, Lg/fb;

    if-nez p3, :cond_2d

    instance-of p3, p2, Lg/bsa;

    if-eqz p3, :cond_2c

    goto :goto_a

    :cond_2c
    new-instance p3, Lg/hbz;

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_9

    :cond_2d
    :goto_a
    new-instance p3, Lg/bsa;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/bsa;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    :goto_b
    return-object p2

    :pswitch_8
    sget-object v0, Lg/gdt;->zza:Lg/gdt;

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v9, 0x41

    const/4 v10, 0x4

    if-eq v0, v9, :cond_40

    const/16 v9, 0x16

    packed-switch v0, :pswitch_data_3

    invoke-virtual {p0, p1}, Lg/avr;->j(Ljava/lang/String;)V

    throw v5

    :pswitch_9
    sget-object p1, Lg/gdt;->zzG:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lg/bsa;

    if-eqz p1, :cond_2e

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v2, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    new-instance v2, Lg/gtb;

    invoke-direct {v2, p2, v1, p1}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2, v0, p3}, Lg/avr;->h(Lg/ehn;Lg/gey;Lg/gey;)Lg/gey;

    move-result-object p1

    goto/16 :goto_11

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_LET must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    sget-object p1, Lg/gdt;->zzF:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lg/bsa;

    if-eqz p1, :cond_2f

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    new-instance v1, Lg/fdy;

    invoke-direct {v1, p2, v9, p1}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v0, p3}, Lg/avr;->h(Lg/ehn;Lg/gey;Lg/gey;)Lg/gey;

    move-result-object p1

    goto/16 :goto_11

    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_CONST must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b
    sget-object p1, Lg/gdt;->zzE:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lg/bsa;

    if-eqz p1, :cond_30

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    new-instance v1, Lg/akj;

    invoke-direct {v1, p2, v9, p1}, Lg/akj;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v1, v0, p3}, Lg/avr;->h(Lg/ehn;Lg/gey;Lg/gey;)Lg/gey;

    move-result-object p1

    goto/16 :goto_11

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_c
    sget-object p1, Lg/gdt;->zzD:Lg/gdt;

    invoke-static {p1, v10, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of v0, p1, Lg/gwa;

    if-eqz v0, :cond_36

    check-cast p1, Lg/gwa;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gey;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    invoke-virtual {p2}, Lg/dpa;->u()Lg/dpa;

    move-result-object v4

    const/4 v6, 0x0

    :goto_c
    invoke-virtual {p1}, Lg/gwa;->s()I

    move-result v7

    if-ge v6, v7, :cond_31

    invoke-virtual {p1, v6}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v7

    invoke-interface {v7}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lg/dpa;->k(Ljava/lang/String;)Lg/gey;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_31
    :goto_d
    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v6

    invoke-interface {v6}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_35

    move-object v6, p3

    check-cast v6, Lg/gwa;

    invoke-virtual {p2, v6}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object v6

    instance-of v7, v6, Lg/enl;

    if-eqz v7, :cond_33

    check-cast v6, Lg/enl;

    iget-object v7, v6, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_11

    :cond_32
    iget-object v7, v6, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    move-object p1, v6

    goto/16 :goto_11

    :cond_33
    invoke-virtual {p2}, Lg/dpa;->u()Lg/dpa;

    move-result-object v6

    const/4 v7, 0x0

    :goto_e
    invoke-virtual {p1}, Lg/gwa;->s()I

    move-result v9

    if-ge v7, v9, :cond_34

    invoke-virtual {p1, v7}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v9

    invoke-interface {v9}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lg/dpa;->k(Ljava/lang/String;)Lg/gey;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_34
    invoke-virtual {v6, v5}, Lg/dpa;->j(Lg/gey;)Lg/gey;

    move-object v4, v6

    goto :goto_d

    :cond_35
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_11

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initializer variables in FOR_LET must be an ArrayList"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_d
    sget-object p1, Lg/gdt;->zzC:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lg/bsa;

    if-eqz p1, :cond_3a

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    invoke-interface {v0}, Lg/gey;->zzl()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_39

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    invoke-virtual {p2}, Lg/dpa;->u()Lg/dpa;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lg/dpa;->m(Ljava/lang/String;Lg/gey;)V

    move-object v1, p3

    check-cast v1, Lg/gwa;

    invoke-virtual {v4, v1}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object v1

    instance-of v4, v1, Lg/enl;

    if-eqz v4, :cond_37

    check-cast v1, Lg/enl;

    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_11

    :cond_38
    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto/16 :goto_f

    :cond_39
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_11

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_LET must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e
    sget-object p1, Lg/gdt;->zzB:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lg/bsa;

    if-eqz p1, :cond_3b

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    new-instance v1, Lg/fdy;

    invoke-direct {v1, p2, v9, p1}, Lg/fdy;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0}, Lg/gey;->zzl()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {v1, p1, p3}, Lg/avr;->d(Lg/ehn;Ljava/util/Iterator;Lg/gey;)Lg/gey;

    move-result-object p1

    goto/16 :goto_11

    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_CONST must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_f
    sget-object p1, Lg/gdt;->zzA:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lg/bsa;

    if-eqz p1, :cond_3f

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-interface {p1}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    invoke-interface {v0}, Lg/gey;->zzl()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3e

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    invoke-virtual {p2, p1, v1}, Lg/dpa;->m(Ljava/lang/String;Lg/gey;)V

    move-object v1, p3

    check-cast v1, Lg/gwa;

    invoke-virtual {p2, v1}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object v1

    instance-of v4, v1, Lg/enl;

    if-eqz v4, :cond_3c

    check-cast v1, Lg/enl;

    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_11

    :cond_3d
    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_f

    :cond_3e
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_11

    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN must be a string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    sget-object p1, Lg/gdt;->zzan:Lg/gdt;

    invoke-static {p1, v10, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v4, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v4, Lg/ffr;

    iget-object v5, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v5, Lg/ffr;

    invoke-virtual {v4, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    invoke-virtual {v5, p2, v1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    invoke-interface {v1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_10

    :cond_41
    move-object v1, p3

    check-cast v1, Lg/gwa;

    invoke-virtual {p2, v1}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object v1

    instance-of v4, v1, Lg/enl;

    if-eqz v4, :cond_43

    check-cast v1, Lg/enl;

    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto :goto_11

    :cond_42
    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    :goto_f
    move-object p1, v1

    goto :goto_11

    :cond_43
    :goto_10
    invoke-virtual {v5, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    invoke-interface {v1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_46

    move-object v1, p3

    check-cast v1, Lg/gwa;

    invoke-virtual {p2, v1}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object v1

    instance-of v4, v1, Lg/enl;

    if-eqz v4, :cond_45

    check-cast v1, Lg/enl;

    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto :goto_11

    :cond_44
    iget-object v4, v1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_f

    :cond_45
    invoke-virtual {p2, v0}, Lg/dpa;->j(Lg/gey;)Lg/gey;

    goto :goto_10

    :cond_46
    sget-object p1, Lg/gey;->o:Lg/gdz;

    :goto_11
    return-object p1

    :pswitch_10
    sget-object v0, Lg/gdt;->zza:Lg/gdt;

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v7, :cond_4a

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_49

    const/16 v1, 0x32

    if-ne v0, v1, :cond_48

    sget-object p1, Lg/gdt;->zzY:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_12

    :cond_47
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    goto :goto_12

    :cond_48
    invoke-virtual {p0, p1}, Lg/avr;->j(Ljava/lang/String;)V

    throw v5

    :cond_49
    sget-object p1, Lg/gdt;->zzV:Lg/gdt;

    invoke-static {p1, v7, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    new-instance p2, Lg/bbk;

    invoke-interface {p1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Lg/bbk;-><init>(Ljava/lang/Boolean;)V

    move-object p1, p2

    goto :goto_12

    :cond_4a
    sget-object p1, Lg/gdt;->zzb:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_12

    :cond_4b
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    :goto_12
    return-object p1

    :pswitch_11
    sget-object v0, Lg/gdt;->zza:Lg/gdt;

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v6, :cond_66

    if-eq v0, v1, :cond_65

    const/16 v1, 0x19

    if-eq v0, v1, :cond_64

    const/16 v1, 0x29

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x36

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x39

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x13

    if-eq v0, v1, :cond_59

    const/16 v1, 0x14

    if-eq v0, v1, :cond_57

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_4c

    packed-switch v0, :pswitch_data_4

    invoke-virtual {p0, p1}, Lg/avr;->j(Ljava/lang/String;)V

    throw v5

    :pswitch_12
    sget-object p1, Lg/gdt;->zzm:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, p3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    sget-object p1, Lg/gey;->n:Lg/enl;

    goto/16 :goto_17

    :pswitch_13
    invoke-virtual {p2}, Lg/dpa;->u()Lg/dpa;

    move-result-object p1

    new-instance p2, Lg/gwa;

    invoke-direct {p2, p3}, Lg/gwa;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object p1

    goto/16 :goto_17

    :cond_4c
    sget-object p1, Lg/gdt;->zzaj:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-virtual {v1, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    goto/16 :goto_17

    :cond_4d
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    invoke-virtual {v1, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    goto/16 :goto_17

    :cond_4e
    sget-object p1, Lg/gdt;->zzai:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    instance-of v4, v0, Lg/gwa;

    if-eqz v4, :cond_56

    instance-of v4, p3, Lg/gwa;

    if-eqz v4, :cond_55

    check-cast v0, Lg/gwa;

    check-cast p3, Lg/gwa;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result v6

    if-ge v4, v6, :cond_53

    if-nez v5, :cond_50

    invoke-virtual {v0, v4}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    goto :goto_14

    :cond_4f
    const/4 v5, 0x0

    goto :goto_15

    :cond_50
    :goto_14
    invoke-virtual {p3, v4}, Lg/gwa;->g(I)Lg/gey;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v5

    instance-of v6, v5, Lg/enl;

    if-eqz v6, :cond_52

    move-object p1, v5

    check-cast p1, Lg/enl;

    iget-object p1, p1, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_17

    :cond_51
    move-object p1, v5

    goto/16 :goto_17

    :cond_52
    const/4 v5, 0x1

    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_53
    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {p3}, Lg/gwa;->s()I

    move-result v2

    if-ne p1, v2, :cond_54

    invoke-virtual {v0}, Lg/gwa;->s()I

    move-result p1

    invoke-virtual {p3, p1}, Lg/gwa;->g(I)Lg/gey;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of p2, p1, Lg/enl;

    if-eqz p2, :cond_54

    move-object p2, p1

    check-cast p2, Lg/enl;

    iget-object p2, p2, Lg/enl;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_67

    const-string p3, "continue"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_67

    :cond_54
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_17

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, case statements are not a list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, cases are not a list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    sget-object p1, Lg/gdt;->zzu:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p3}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    invoke-static {p2, p3}, Lg/avr;->g(Lg/dpa;Ljava/util/List;)Lg/dxk;

    move-result-object p1

    iget-object p3, p1, Lg/fdk;->g:Ljava/lang/String;

    if-nez p3, :cond_58

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    goto/16 :goto_17

    :cond_58
    invoke-virtual {p2, p3, p1}, Lg/dpa;->q(Ljava/lang/String;Lg/gey;)V

    goto/16 :goto_17

    :cond_59
    :pswitch_14
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5a

    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_17

    :cond_5a
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of p3, p1, Lg/gwa;

    if-eqz p3, :cond_5b

    check-cast p1, Lg/gwa;

    invoke-virtual {p2, p1}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object p1

    goto/16 :goto_17

    :cond_5b
    sget-object p1, Lg/gey;->o:Lg/gdz;

    goto/16 :goto_17

    :cond_5c
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5d

    sget-object p1, Lg/gey;->k:Lg/enl;

    goto/16 :goto_17

    :cond_5d
    sget-object p1, Lg/gdt;->zzaf:Lg/gdt;

    invoke-static {p1, v7, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    new-instance p2, Lg/enl;

    invoke-direct {p2, v3, p1}, Lg/enl;-><init>(Ljava/lang/String;Lg/gey;)V

    move-object p1, p2

    goto/16 :goto_17

    :cond_5e
    new-instance p1, Lg/gwa;

    invoke-direct {p1, p3}, Lg/gwa;-><init>(Ljava/util/List;)V

    goto/16 :goto_17

    :cond_5f
    sget-object p1, Lg/gdt;->zzP:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p3}, Lg/byh;->bf(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_60

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v5

    :cond_60
    sget-object p3, Lg/gey;->o:Lg/gdz;

    invoke-interface {p1}, Lg/gey;->zzg()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_61

    check-cast v0, Lg/gwa;

    invoke-virtual {p2, v0}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object p1

    goto :goto_16

    :cond_61
    if-eqz v5, :cond_62

    check-cast v5, Lg/gwa;

    invoke-virtual {p2, v5}, Lg/dpa;->t(Lg/gwa;)Lg/gey;

    move-result-object p1

    goto :goto_16

    :cond_62
    move-object p1, p3

    :goto_16
    instance-of p2, p1, Lg/enl;

    if-eqz p2, :cond_63

    goto :goto_17

    :cond_63
    move-object p1, p3

    goto :goto_17

    :cond_64
    invoke-static {p2, p3}, Lg/avr;->g(Lg/dpa;Ljava/util/List;)Lg/dxk;

    move-result-object p1

    goto :goto_17

    :cond_65
    sget-object p1, Lg/gdt;->zzm:Lg/gdt;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, p3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    sget-object p1, Lg/gey;->l:Lg/enl;

    goto :goto_17

    :cond_66
    sget-object p1, Lg/gdt;->zzc:Lg/gdt;

    invoke-static {p1, v4, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p3

    instance-of v1, p3, Lg/gwa;

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    check-cast p3, Lg/gwa;

    invoke-virtual {p3}, Lg/gwa;->e()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lg/gey;->_ag(Ljava/lang/String;Lg/dpa;Ljava/util/ArrayList;)Lg/gey;

    move-result-object p1

    :cond_67
    :goto_17
    return-object p1

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Function name for apply is undefined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Function arguments for Apply are not a list found "

    invoke-static {p3, p2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_15
    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p3}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v1, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/16 v1, 0x17

    if-eq p3, v1, :cond_6d

    const/16 v1, 0x30

    if-eq p3, v1, :cond_6c

    const/16 v1, 0x2a

    if-eq p3, v1, :cond_6b

    const/16 v1, 0x2b

    if-eq p3, v1, :cond_6a

    packed-switch p3, :pswitch_data_5

    invoke-virtual {p0, p1}, Lg/avr;->j(Ljava/lang/String;)V

    throw v5

    :pswitch_16
    invoke-static {v0, p2}, Lg/byh;->ae(Lg/gey;Lg/gey;)Z

    move-result p1

    :goto_18
    xor-int/2addr p1, v7

    goto :goto_19

    :pswitch_17
    invoke-static {v0, p2}, Lg/byh;->ae(Lg/gey;Lg/gey;)Z

    move-result p1

    goto :goto_19

    :pswitch_18
    invoke-static {p2, v0}, Lg/avr;->c(Lg/gey;Lg/gey;)Z

    move-result p1

    goto :goto_19

    :pswitch_19
    invoke-static {p2, v0}, Lg/avr;->f(Lg/gey;Lg/gey;)Z

    move-result p1

    goto :goto_19

    :cond_6a
    invoke-static {v0, p2}, Lg/avr;->c(Lg/gey;Lg/gey;)Z

    move-result p1

    goto :goto_19

    :cond_6b
    invoke-static {v0, p2}, Lg/avr;->f(Lg/gey;Lg/gey;)Z

    move-result p1

    goto :goto_19

    :cond_6c
    invoke-static {v0, p2}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p1

    goto :goto_18

    :cond_6d
    invoke-static {v0, p2}, Lg/avr;->e(Lg/gey;Lg/gey;)Z

    move-result p1

    :goto_19
    if-eqz p1, :cond_6e

    sget-object p1, Lg/gey;->j:Lg/bbk;

    goto :goto_1a

    :cond_6e
    sget-object p1, Lg/gey;->m:Lg/bbk;

    :goto_1a
    return-object p1

    :pswitch_1a
    sget-object v0, Lg/gdt;->zza:Lg/gdt;

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v1, 0x1f

    packed-switch v0, :pswitch_data_6

    invoke-virtual {p0, p1}, Lg/avr;->j(Ljava/lang/String;)V

    throw v5

    :pswitch_1b
    sget-object p1, Lg/gdt;->zzk:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lg/byh;->az(D)I

    move-result p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lg/byh;->az(D)I

    move-result p2

    new-instance p3, Lg/hbz;

    xor-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :pswitch_1c
    sget-object p1, Lg/gdt;->zzj:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lg/byh;->az(D)I

    move-result p1

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lg/byh;->az(D)I

    move-result p1

    int-to-long p1, p1

    new-instance p3, Lg/hbz;

    and-long/2addr p1, v1

    long-to-int p2, p1

    ushr-long p1, v3, p2

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :pswitch_1d
    sget-object p1, Lg/gdt;->zzi:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lg/byh;->az(D)I

    move-result p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lg/byh;->az(D)I

    move-result p2

    int-to-long p2, p2

    new-instance v0, Lg/hbz;

    and-long/2addr p2, v1

    long-to-int p3, p2

    shr-int/2addr p1, p3

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    :goto_1b
    move-object p3, v0

    goto/16 :goto_1c

    :pswitch_1e
    sget-object p1, Lg/gdt;->zzh:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lg/byh;->az(D)I

    move-result p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lg/byh;->az(D)I

    move-result p2

    new-instance p3, Lg/hbz;

    or-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :pswitch_1f
    sget-object p1, Lg/gdt;->zzg:Lg/gdt;

    invoke-static {p1, v7, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object p3, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p3, Lg/ffr;

    invoke-virtual {p3, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lg/byh;->az(D)I

    move-result p1

    new-instance p3, Lg/hbz;

    not-int p1, p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1c

    :pswitch_20
    sget-object p1, Lg/gdt;->zzf:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lg/byh;->az(D)I

    move-result p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lg/byh;->az(D)I

    move-result p2

    int-to-long p2, p2

    new-instance v0, Lg/hbz;

    and-long/2addr p2, v1

    long-to-int p3, p2

    shl-int/2addr p1, p3

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1b

    :pswitch_21
    sget-object p1, Lg/gdt;->zze:Lg/gdt;

    invoke-static {p1, v6, p3, v8}, Lg/dub;->n(Lg/gdt;ILjava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lg/byh;->az(D)I

    move-result p1

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/gey;

    iget-object v0, p2, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    invoke-virtual {v0, p2, p3}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p2

    invoke-interface {p2}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lg/byh;->az(D)I

    move-result p2

    new-instance p3, Lg/hbz;

    and-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    :goto_1c
    return-object p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_15
        :pswitch_11
        :pswitch_10
        :pswitch_8
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_13
        :pswitch_12
        :pswitch_14
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x25
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lg/avr;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lg/byh;->ab(Ljava/lang/String;)Lg/gdt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Command not implemented: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Command not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
