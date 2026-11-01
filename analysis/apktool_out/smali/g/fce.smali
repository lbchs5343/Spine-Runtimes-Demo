.class public final Lg/fce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/yu;


# instance fields
.field public aa:Lg/cqf;

.field public ab:I

.field public o:I

.field public p:J

.field public q:Lg/gqi;

.field public r:Z

.field public s:I

.field public t:I

.field public final u:Lg/ggu;

.field public v:I

.field public w:I

.field public x:[I

.field public y:Lg/ahb;

.field public z:I


# direct methods
.method public constructor <init>(Lg/ggu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lg/fce;->x:[I

    iput-object p1, p0, Lg/fce;->u:Lg/ggu;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lg/fce;->p:J

    return-wide v0
.end method

.method public final ac()Lg/gkr;
    .locals 1

    iget-object v0, p0, Lg/fce;->u:Lg/ggu;

    iget-object v0, v0, Lg/ggu;->d:Lg/cmv;

    iget-object v0, v0, Lg/cmv;->g:Lg/gkr;

    return-object v0
.end method

.method public final ad(I)V
    .locals 1

    iput p1, p0, Lg/fce;->o:I

    iget-object v0, p0, Lg/fce;->x:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array p1, p1, [I

    iput-object p1, p0, Lg/fce;->x:[I

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lg/fce;->y:Lg/ahb;

    iget-object v0, v0, Lg/ahb;->g:Lg/dle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lg/fce;->u:Lg/ggu;

    invoke-interface {v0, v2}, Lg/dle;->_bt(Lg/ggu;)V

    iget-boolean v0, v2, Lg/ggu;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lg/ggu;->i:Lg/fce;

    iget-object v2, v0, Lg/fce;->aa:Lg/cqf;

    sget-object v3, Lg/cqf;->MOVE:Lg/cqf;

    if-ne v2, v3, :cond_0

    sget-object v2, Lg/cqf;->MOVE_EXCEPTION:Lg/cqf;

    iput-object v2, v0, Lg/fce;->aa:Lg/cqf;

    invoke-virtual {v0, v1}, Lg/fce;->ad(I)V

    :cond_0
    iput-boolean v1, p0, Lg/fce;->r:Z

    return-void
.end method

.method public final c(I)Lg/fw;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Lg/ful;
    .locals 2

    invoke-virtual {p0}, Lg/fce;->ac()Lg/gkr;

    move-result-object v0

    iget v1, p0, Lg/fce;->w:I

    invoke-virtual {v0, v1}, Lg/gkr;->j(I)Lg/efh;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lg/enn;
    .locals 1

    iget-object v0, p0, Lg/fce;->y:Lg/ahb;

    iget-object v0, v0, Lg/ahb;->d:Lg/enn;

    return-object v0
.end method

.method public final f()Lg/cba;
    .locals 2

    invoke-virtual {p0}, Lg/fce;->ac()Lg/gkr;

    move-result-object v0

    iget v1, p0, Lg/fce;->w:I

    invoke-virtual {v0, v1}, Lg/gkr;->z(I)Lg/gps;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg/fce;->y:Lg/ahb;

    iget v0, v0, Lg/ahb;->c:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    iget v0, p0, Lg/fce;->w:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lg/cyf;

    const-string v2, "Unknown array type value: "

    invoke-static {v0, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "J"

    return-object v0

    :pswitch_1
    const-string v0, "I"

    return-object v0

    :pswitch_2
    const-string v0, "S"

    return-object v0

    :pswitch_3
    const-string v0, "B"

    return-object v0

    :pswitch_4
    const-string v0, "D"

    return-object v0

    :pswitch_5
    const-string v0, "F"

    return-object v0

    :pswitch_6
    const-string v0, "C"

    return-object v0

    :pswitch_7
    const-string v0, "Z"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/fce;->ac()Lg/gkr;

    move-result-object v0

    iget v1, p0, Lg/fce;->w:I

    invoke-virtual {v0, v1}, Lg/gkr;->h(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
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

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lg/fce;->ab:I

    return v0
.end method

.method public final getTarget()I
    .locals 1

    iget v0, p0, Lg/fce;->s:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lg/fce;->ac()Lg/gkr;

    move-result-object v0

    iget v1, p0, Lg/fce;->w:I

    invoke-virtual {v0, v1}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lg/fce;->o:I

    return v0
.end method

.method public final j()Lg/dkb;
    .locals 9

    invoke-virtual {p0}, Lg/fce;->ac()Lg/gkr;

    move-result-object v0

    iget v1, p0, Lg/fce;->w:I

    iget-object v2, v0, Lg/gkr;->b:Ljava/lang/Object;

    check-cast v2, Lg/gqc;

    invoke-virtual {v0, v1}, Lg/gkr;->y(I)Lg/fha;

    move-result-object v1

    sget-object v3, Lg/gls;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    new-instance v0, Lg/cyf;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected tag type for call site: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lg/cyf;

    const-string v1, "Field call site not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2}, Lg/gqc;->ai()I

    move-result v1

    invoke-virtual {v2}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {v0, v3}, Lg/gkr;->k(I)V

    invoke-virtual {v2}, Lg/gqc;->ai()I

    move-result v3

    invoke-virtual {v2}, Lg/gqc;->ai()I

    move-result v4

    iget-object v5, v0, Lg/gkr;->a:Ljava/lang/Object;

    check-cast v5, Lg/cmv;

    sget-object v6, Lg/zz;->i:Lg/zz;

    iget-object v7, v5, Lg/cmv;->k:Lg/adr;

    iget v7, v7, Lg/adr;->a:I

    iput v7, v2, Lg/gqc;->ab:I

    iget-object v5, v5, Lg/cmv;->h:Lg/erm;

    invoke-virtual {v5, v2, v6}, Lg/erm;->g(Lg/gqc;Lg/zz;)Lg/azo;

    move-result-object v2

    check-cast v2, Lg/fke;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lg/fke;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ewv;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lg/ghr;

    sget-object v6, Lg/dnd;->ENCODED_METHOD_HANDLE:Lg/dnd;

    iget v7, v1, Lg/ewv;->a:I

    invoke-virtual {v0, v7}, Lg/gkr;->ab(I)Lg/dpb;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lg/ghr;

    sget-object v6, Lg/dnd;->ENCODED_STRING:Lg/dnd;

    invoke-virtual {v0, v3}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lg/ghr;

    sget-object v5, Lg/dnd;->ENCODED_METHOD_TYPE:Lg/dnd;

    invoke-virtual {v0, v4}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lg/dnp;

    invoke-direct {v6}, Lg/dnp;-><init>()V

    new-instance v7, Lg/erd;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Lg/erd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v6}, Lg/erd;->c(Lg/dnp;)V

    invoke-direct {v3, v5, v6}, Lg/ghr;-><init>(Lg/dnd;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lg/ewv;->b:[I

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v1, v4

    invoke-virtual {v0, v5}, Lg/gkr;->x(I)Lg/ghr;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lg/dkb;

    invoke-direct {v0, v2}, Lg/dkb;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :cond_3
    new-instance v0, Lg/cyf;

    const-string v1, "Unexpected missing BootstrapMethods attribute"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lg/fce;->z:I

    return v0
.end method

.method public final l()Lg/gqi;
    .locals 1

    iget-object v0, p0, Lg/fce;->q:Lg/gqi;

    return-object v0
.end method

.method public final m(I)I
    .locals 1

    iget-object v0, p0, Lg/fce;->x:[I

    aget p1, v0, p1

    return p1
.end method

.method public final n()Lg/cqf;
    .locals 1

    iget-object v0, p0, Lg/fce;->aa:Lg/cqf;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/fce;->ab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "0x%04X"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fce;->aa:Lg/cqf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fce;->y:Lg/ahb;

    if-nez v1, :cond_0

    iget v1, p0, Lg/fce;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "(0x%04X)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v1, p0, Lg/fce;->o:I

    iget-boolean v2, p0, Lg/fce;->r:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v4, v1, :cond_2

    if-eqz v4, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/fce;->x:[I

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
