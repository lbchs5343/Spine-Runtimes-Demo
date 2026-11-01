.class public final Lg/bgw;
.super Lg/dfy;
.source "SourceFile"


# static fields
.field public static final a:Lg/gnh;

.field public static final d:Lg/gnh;


# instance fields
.field public _br:Lg/fza;

.field public x:Lg/fza;

.field public y:Lg/ges;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Lg/bjt;->INT:Lg/bjt;

    sget-object v1, Lg/bjt;->BYTE:Lg/bjt;

    sget-object v2, Lg/bjt;->SHORT:Lg/bjt;

    sget-object v3, Lg/bjt;->CHAR:Lg/bjt;

    const/4 v4, 0x7

    new-array v4, v4, [Lg/bjt;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    sget-object v6, Lg/bjt;->BOOLEAN:Lg/bjt;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    sget-object v6, Lg/bjt;->OBJECT:Lg/bjt;

    const/4 v8, 0x2

    aput-object v6, v4, v8

    sget-object v6, Lg/bjt;->ARRAY:Lg/bjt;

    const/4 v9, 0x3

    aput-object v6, v4, v9

    const/4 v6, 0x4

    aput-object v1, v4, v6

    const/4 v10, 0x5

    aput-object v2, v4, v10

    const/4 v10, 0x6

    aput-object v3, v4, v10

    new-instance v10, Lg/gnh;

    invoke-direct {v10, v4}, Lg/gnh;-><init>([Lg/bjt;)V

    sput-object v10, Lg/bgw;->a:Lg/gnh;

    new-array v4, v6, [Lg/bjt;

    aput-object v0, v4, v5

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    new-instance v0, Lg/gnh;

    invoke-direct {v0, v4}, Lg/gnh;-><init>([Lg/bjt;)V

    sput-object v0, Lg/bgw;->d:Lg/gnh;

    return-void
.end method

.method public constructor <init>(Lg/ges;I)V
    .locals 2

    sget-object v0, Lg/hay;->IF:Lg/hay;

    const/4 v1, 0x2

    invoke-direct {p0, v0, p2, v1}, Lg/dfy;-><init>(Lg/hay;II)V

    iput-object p1, p0, Lg/bgw;->y:Lg/ges;

    return-void
.end method

.method public constructor <init>(Lg/ges;Lg/gsh;Lg/ekh;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lg/bgw;-><init>(Lg/ges;I)V

    invoke-virtual {p0, p2}, Lg/eek;->_an(Lg/gsh;)V

    invoke-virtual {p0, p3}, Lg/eek;->_an(Lg/gsh;)V

    return-void
.end method

.method public constructor <init>(Lg/yu;Lg/ges;)V
    .locals 3

    sget-object v0, Lg/hay;->IF:Lg/hay;

    invoke-interface {p1}, Lg/yu;->getTarget()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lg/dfy;-><init>(Lg/hay;II)V

    iput-object p2, p0, Lg/bgw;->y:Lg/ges;

    sget-object v0, Lg/ges;->EQ:Lg/ges;

    if-eq p2, v0, :cond_1

    sget-object v0, Lg/ges;->NE:Lg/ges;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lg/bgw;->d:Lg/gnh;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Lg/bgw;->a:Lg/gnh;

    :goto_1
    sget-object v0, Lg/gsh;->ad:Lg/dba;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lg/yu;->m(I)I

    move-result v0

    new-instance v1, Lg/gks;

    invoke-direct {v1, v0, p2}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {p0, v1}, Lg/eek;->_an(Lg/gsh;)V

    invoke-interface {p1}, Lg/yu;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg/eek;->_an(Lg/gsh;)V

    return-void

    :cond_2
    invoke-interface {p1, v1}, Lg/yu;->m(I)I

    move-result p1

    new-instance v0, Lg/gks;

    invoke-direct {v0, p1, p2}, Lg/gks;-><init>(ILg/cwx;)V

    invoke-virtual {p0, v0}, Lg/eek;->_an(Lg/gsh;)V

    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 3

    new-instance v0, Lg/bgw;

    iget-object v1, p0, Lg/bgw;->y:Lg/ges;

    iget v2, p0, Lg/dfy;->ae:I

    invoke-direct {v0, v1, v2}, Lg/bgw;-><init>(Lg/ges;I)V

    iget-object v1, p0, Lg/bgw;->_br:Lg/fza;

    iput-object v1, v0, Lg/bgw;->_br:Lg/fza;

    iget-object v1, p0, Lg/bgw;->x:Lg/fza;

    iput-object v1, v0, Lg/bgw;->x:Lg/fza;

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/bgw;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/bgw;

    iget-object v1, p0, Lg/bgw;->y:Lg/ges;

    iget-object p1, p1, Lg/bgw;->y:Lg/ges;

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public final aa(Lg/fza;Lg/fza;)V
    .locals 1

    iget-object v0, p0, Lg/bgw;->_br:Lg/fza;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lg/bgw;->_br:Lg/fza;

    :cond_0
    iget-object v0, p0, Lg/bgw;->x:Lg/fza;

    if-ne v0, p1, :cond_1

    iput-object p2, p0, Lg/bgw;->x:Lg/fza;

    :cond_1
    return-void
.end method

.method public final ab()V
    .locals 8

    iget-object v0, p0, Lg/bgw;->y:Lg/ges;

    sget-object v1, Lg/ges;->NE:Lg/ges;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v1}, Lg/gsh;->ar()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/ges;->EQ:Lg/ges;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v3

    new-instance v4, Lg/ekh;

    const-wide/16 v5, 0x1

    sget-object v7, Lg/cwx;->at:Lg/cff;

    invoke-direct {v4, v5, v6, v7}, Lg/ekh;-><init>(JLg/cwx;)V

    iput-object v1, p0, Lg/bgw;->y:Lg/ges;

    invoke-virtual {p0, v2, v3}, Lg/eek;->e(ILg/gsh;)V

    invoke-virtual {p0, v0, v4}, Lg/eek;->e(ILg/gsh;)V

    :cond_0
    return-void
.end method

.method public final ac(Lg/fza;)V
    .locals 2

    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    iget v0, p0, Lg/dfy;->ae:I

    invoke-static {v0, p1}, Lg/ffb;->bo(ILjava/lang/Iterable;)Lg/fza;

    move-result-object v0

    iput-object v0, p0, Lg/bgw;->_br:Lg/fza;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lg/bgw;->_br:Lg/fza;

    iput-object p1, p0, Lg/bgw;->x:Lg/fza;

    return-void

    :cond_0
    iget-object v0, p0, Lg/bgw;->_br:Lg/fza;

    invoke-static {p1, v0}, Lg/ffb;->r(Ljava/util/List;Lg/fza;)Lg/fza;

    move-result-object p1

    iput-object p1, p0, Lg/bgw;->x:Lg/fza;

    return-void
.end method

.method public final ad()I
    .locals 1

    iget-object v0, p0, Lg/bgw;->_br:Lg/fza;

    if-nez v0, :cond_0

    iget v0, p0, Lg/dfy;->ae:I

    return v0

    :cond_0
    iget v0, v0, Lg/fza;->y:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lg/eek;->ag:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg/eek;->ah:Lg/hay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/bgw;->y:Lg/ges;

    invoke-virtual {v2}, Lg/ges;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bgw;->_br:Lg/fza;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lg/dfy;->ae:I

    invoke-static {v1}, Lg/ack;->d(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/eek;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lg/bgw;->y:Lg/ges;

    invoke-virtual {v0}, Lg/ges;->c()Lg/ges;

    move-result-object v0

    iput-object v0, p0, Lg/bgw;->y:Lg/ges;

    iget-object v0, p0, Lg/bgw;->_br:Lg/fza;

    iget-object v1, p0, Lg/bgw;->x:Lg/fza;

    iput-object v1, p0, Lg/bgw;->_br:Lg/fza;

    iput-object v0, p0, Lg/bgw;->x:Lg/fza;

    return-void
.end method
