.class public final Lg/dja;
.super Lg/ckz;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/dja;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;ILjava/util/Deque;Lg/dbf;)I
    .locals 7

    iget v0, p0, Lg/dja;->c:I

    const/16 v1, 0x2e

    const/16 v2, 0x28

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    move v0, p2

    :goto_0
    invoke-static {v0, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v1

    invoke-static {v1}, Lg/fso;->az(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lg/fso;->p(C)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    if-eq v1, v2, :cond_1

    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lg/bmf;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Lg/bmf;->b:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, v0, 0x1

    :goto_1
    return p1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    if-eq v2, v0, :cond_3

    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto :goto_3

    :cond_3
    new-instance p1, Lg/dzd;

    sget-object p4, Lg/abo;->dq:Lg/abo;

    invoke-direct {p1, p4, v5}, Lg/dzd;-><init>(Ljava/lang/Enum;I)V

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, p2, 0x1

    :goto_3
    return p1

    :pswitch_1
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lg/fso;->az(C)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto :goto_6

    :cond_4
    const/4 p4, 0x0

    :goto_4
    add-int v0, p4, p2

    invoke-static {v0, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v2

    invoke-static {v2}, Lg/fso;->az(C)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v2}, Lg/fso;->p(C)Z

    move-result v5

    if-nez v5, :cond_7

    if-eq v1, v2, :cond_7

    const/16 v5, 0x5b

    if-eq v5, v2, :cond_7

    const/16 v5, 0x5d

    if-eq v5, v2, :cond_7

    const/16 v5, 0x5f

    if-eq v5, v2, :cond_7

    if-ne v3, v2, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lg/dvr;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/dvr;

    if-eqz p2, :cond_6

    new-instance p2, Lg/dzd;

    invoke-direct {p2, p1}, Lg/dzd;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_5
    move p1, v0

    goto :goto_6

    :cond_6
    new-instance p2, Lg/doy;

    invoke-direct {p2, p1, v4}, Lg/doy;-><init>(Ljava/lang/String;I)V

    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_5

    :goto_6
    return p1

    :cond_7
    :goto_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :goto_8
    :pswitch_2
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_8
    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    return p1

    :pswitch_3
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    if-ne v3, v0, :cond_b

    invoke-interface {p3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/faq;

    invoke-interface {v0}, Lg/faq;->dq()Lg/axb;

    move-result-object v0

    sget-object v2, Lg/ekx;->dq:Lg/ekx;

    instance-of v0, v0, Lg/ekx;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lg/fso;->p(C)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized - symbol, not a negative number or operator, problem range:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_b
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lg/fso;->p(C)Z

    move-result v0

    :goto_9
    if-nez v0, :cond_c

    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto :goto_c

    :cond_c
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result p4

    if-ne p4, v3, :cond_d

    add-int/lit8 p4, p2, 0x1

    goto :goto_a

    :cond_d
    move p4, p2

    :cond_e
    :goto_a
    invoke-static {p4, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lg/fso;->p(C)Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v4, :cond_f

    if-ne v0, v1, :cond_f

    goto :goto_d

    :cond_f
    if-eq v0, v1, :cond_12

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lg/dzd;

    invoke-direct {p2}, Lg/dzd;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p2, Lg/dzd;->b:Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p2, Lg/dzd;->b:Ljava/io/Serializable;

    goto :goto_b

    :cond_10
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lg/dzd;->b:Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lg/dzd;->b:Ljava/io/Serializable;

    :cond_11
    :goto_b
    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    move p1, p4

    :goto_c
    return p1

    :cond_12
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal negative number format, problem interval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_13
    :goto_d
    add-int/lit8 p4, p4, 0x1

    if-ne v0, v1, :cond_e

    const/4 v4, 0x1

    goto :goto_a

    :pswitch_4
    const/16 v0, 0x29

    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v1

    if-eq v0, v1, :cond_14

    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto/16 :goto_10

    :cond_14
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    :goto_e
    invoke-interface {p3}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/faq;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lg/faq;->dq()Lg/axb;

    move-result-object v1

    sget-object v2, Lg/euc;->dq:Lg/euc;

    if-eq v1, v2, :cond_15

    invoke-interface {v0}, Lg/faq;->dq()Lg/axb;

    move-result-object v1

    sget-object v2, Lg/abo;->dq:Lg/abo;

    if-eq v1, v2, :cond_15

    invoke-virtual {p4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_e

    :cond_15
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lg/faq;->dq()Lg/axb;

    move-result-object v1

    sget-object v2, Lg/euc;->dq:Lg/euc;

    if-ne v1, v2, :cond_19

    check-cast v0, Lg/bmf;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/faq;

    invoke-interface {v3}, Lg/faq;->dq()Lg/axb;

    move-result-object v4

    sget-object v6, Lg/abo;->s:Lg/abo;

    if-ne v4, v6, :cond_16

    invoke-static {v2, p1, p2}, Lg/dyd;->bb(Ljava/util/AbstractList;Ljava/lang/String;I)Lg/faq;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_f

    :cond_16
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_f

    :cond_17
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_18

    invoke-static {v2, p1, p2}, Lg/dyd;->bb(Ljava/util/AbstractList;Ljava/lang/String;I)Lg/faq;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p1

    new-array p1, p1, [Lg/faq;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg/faq;

    iput-object p1, v0, Lg/bmf;->a:[Lg/faq;

    add-int/lit8 p1, p2, 0x1

    invoke-interface {p3, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_10

    :cond_19
    invoke-static {p4, p1, p2}, Lg/dyd;->bb(Ljava/util/AbstractList;Ljava/lang/String;I)Lg/faq;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, p2, 0x1

    :goto_10
    return p1

    :cond_1a
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_5
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v1, v0, :cond_1c

    if-eq v3, v0, :cond_1c

    const/16 v1, 0x2a

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x2f

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x25

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x3d

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x3e

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x3c

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x21

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x26

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x7c

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x3f

    if-eq v1, v0, :cond_1c

    const/16 v1, 0x3a

    if-ne v1, v0, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto :goto_12

    :cond_1c
    :goto_11
    new-instance p4, Ljava/lang/String;

    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v2

    const/4 v3, 0x2

    new-array v6, v3, [C

    aput-char v0, v6, v4

    aput-char v2, v6, v5

    invoke-direct {p4, v6}, Ljava/lang/String;-><init>([C)V

    sget-object v0, Lg/ekx;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ekx;

    if-eqz v2, :cond_1d

    new-instance p1, Lg/dzd;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/ekx;

    invoke-direct {p1, p4, v4}, Lg/dzd;-><init>(Ljava/lang/Enum;I)V

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, p2, 0x2

    goto :goto_12

    :cond_1d
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ekx;

    if-eqz v2, :cond_1e

    new-instance p1, Lg/dzd;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/ekx;

    invoke-direct {p1, p2, v4}, Lg/dzd;-><init>(Ljava/lang/Enum;I)V

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    move p1, v1

    :goto_12
    return p1

    :cond_1e
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized:"

    const-string v1, "examine:"

    invoke-static {v0, p4, v1}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :pswitch_6
    const/16 v0, 0x2c

    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v1

    if-eq v0, v1, :cond_1f

    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto :goto_13

    :cond_1f
    new-instance p1, Lg/dzd;

    sget-object p4, Lg/abo;->s:Lg/abo;

    invoke-direct {p1, p4, v5}, Lg/dzd;-><init>(Ljava/lang/Enum;I)V

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, p2, 0x1

    :goto_13
    return p1

    :pswitch_7
    invoke-static {p2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    const/16 v1, 0x27

    if-eq v1, v0, :cond_20

    invoke-interface {p4, p1, p2, p3}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    goto :goto_15

    :cond_20
    add-int/lit8 p4, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v2, p4

    :goto_14
    if-ge v2, v0, :cond_21

    invoke-static {v2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v3

    if-eq v3, v1, :cond_21

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    invoke-static {v2, p1}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v0

    if-ne v0, v1, :cond_22

    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lg/doy;

    invoke-direct {p2, p1, v5}, Lg/doy;-><init>(Ljava/lang/String;I)V

    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, v2, 0x1

    :goto_15
    return p1

    :cond_22
    new-instance p3, Lg/dwb;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "String expression not surrounded by \',problem area:"

    invoke-static {p2, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
