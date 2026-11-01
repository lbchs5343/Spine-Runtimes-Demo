.class public final Lg/mt;
.super Lg/eek;
.source "SourceFile"


# static fields
.field public static final _ah:Lg/gnh;

.field public static final _ai:Lg/gnh;

.field public static final _aj:Lg/gnh;

.field public static final a:Lg/gnh;


# instance fields
.field public final _ak:I

.field public final _al:I

.field public final g:Ljava/lang/Object;

.field public i:Lg/gnh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lg/bjt;

    sget-object v2, Lg/bjt;->BYTE:Lg/bjt;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/bjt;->BOOLEAN:Lg/bjt;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lg/gnh;

    invoke-direct {v2, v1}, Lg/gnh;-><init>([Lg/bjt;)V

    sput-object v2, Lg/mt;->_ah:Lg/gnh;

    new-array v1, v0, [Lg/bjt;

    sget-object v2, Lg/bjt;->SHORT:Lg/bjt;

    aput-object v2, v1, v3

    sget-object v2, Lg/bjt;->CHAR:Lg/bjt;

    aput-object v2, v1, v4

    new-instance v2, Lg/gnh;

    invoke-direct {v2, v1}, Lg/gnh;-><init>([Lg/bjt;)V

    sput-object v2, Lg/mt;->_aj:Lg/gnh;

    new-array v1, v0, [Lg/bjt;

    sget-object v2, Lg/bjt;->INT:Lg/bjt;

    aput-object v2, v1, v3

    sget-object v2, Lg/bjt;->FLOAT:Lg/bjt;

    aput-object v2, v1, v4

    new-instance v2, Lg/gnh;

    invoke-direct {v2, v1}, Lg/gnh;-><init>([Lg/bjt;)V

    sput-object v2, Lg/mt;->_ai:Lg/gnh;

    new-array v0, v0, [Lg/bjt;

    sget-object v1, Lg/bjt;->LONG:Lg/bjt;

    aput-object v1, v0, v3

    sget-object v1, Lg/bjt;->DOUBLE:Lg/bjt;

    aput-object v1, v0, v4

    new-instance v1, Lg/gnh;

    invoke-direct {v1, v0}, Lg/gnh;-><init>([Lg/bjt;)V

    sput-object v1, Lg/mt;->a:Lg/gnh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 2

    sget-object v0, Lg/hay;->FILL_ARRAY_DATA:Lg/hay;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    iput-object p1, p0, Lg/mt;->g:Ljava/lang/Object;

    iput p2, p0, Lg/mt;->_al:I

    iput p3, p0, Lg/mt;->_ak:I

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x4

    if-eq p3, p1, :cond_1

    const/16 p1, 0x8

    if-ne p3, p1, :cond_0

    sget-object p1, Lg/mt;->a:Lg/gnh;

    goto :goto_0

    :cond_0
    new-instance p1, Lg/gck;

    const-string p2, "Unknown array element width: "

    invoke-static {p3, p2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lg/mt;->_ai:Lg/gnh;

    goto :goto_0

    :cond_2
    sget-object p1, Lg/mt;->_aj:Lg/gnh;

    goto :goto_0

    :cond_3
    sget-object p1, Lg/mt;->_ah:Lg/gnh;

    :goto_0
    iput-object p1, p0, Lg/mt;->i:Lg/gnh;

    return-void
.end method


# virtual methods
.method public final _o()Lg/eek;
    .locals 4

    new-instance v0, Lg/mt;

    iget v1, p0, Lg/mt;->_al:I

    iget v2, p0, Lg/mt;->_ak:I

    iget-object v3, p0, Lg/mt;->g:Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lg/mt;-><init>(Ljava/lang/Object;II)V

    iget-object v1, p0, Lg/mt;->i:Lg/gnh;

    iput-object v1, v0, Lg/mt;->i:Lg/gnh;

    invoke-virtual {p0, v0}, Lg/eek;->am(Lg/eek;)V

    return-object v0
.end method

.method public final _p(Lg/eek;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lg/mt;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg/mt;

    iget-object v0, p0, Lg/mt;->i:Lg/gnh;

    iget-object v1, p1, Lg/mt;->i:Lg/gnh;

    invoke-virtual {v0, v1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/mt;->g:Ljava/lang/Object;

    iget-object p1, p1, Lg/mt;->g:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lg/eek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget-object v2, p0, Lg/mt;->g:Ljava/lang/Object;

    iget v3, p0, Lg/mt;->_ak:I

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x4

    if-eq v3, v1, :cond_1

    const/16 v1, 0x8

    if-eq v3, v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    check-cast v2, [J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    check-cast v2, [S

    invoke-static {v2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
