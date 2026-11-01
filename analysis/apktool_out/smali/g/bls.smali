.class public final Lg/bls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/tj;


# static fields
.field public static final a:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lg/fwv;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lg/fwv;->SAME_FRAME:Lg/fwv;

    new-instance v2, Lg/esk;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lg/esk;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/fwv;->SAME_FRAME_EXTENDED:Lg/fwv;

    new-instance v2, Lg/esk;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lg/esk;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/fwv;->SAME_LOCALS_1_STACK:Lg/fwv;

    new-instance v2, Lg/esk;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Lg/esk;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/fwv;->SAME_LOCALS_1_STACK_EXTENDED:Lg/fwv;

    new-instance v2, Lg/esk;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lg/esk;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/fwv;->CHOP:Lg/fwv;

    new-instance v2, Lg/esk;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lg/esk;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/fwv;->APPEND:Lg/fwv;

    new-instance v2, Lg/abs;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lg/abs;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg/fwv;->FULL:Lg/fwv;

    new-instance v2, Lg/abs;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lg/abs;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lg/bls;->a:Ljava/util/EnumMap;

    return-void
.end method

.method public static b(Lg/cmy;Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lg/fwv;->SAME_FRAME:Lg/fwv;

    iget-object p1, p0, Lg/cmy;->b:Lg/gqc;

    invoke-virtual {p1}, Lg/gqc;->ai()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lg/fwv;->SAME_FRAME:Lg/fwv;

    iget p1, p0, Lg/cmy;->c:I

    :goto_0
    new-instance v0, Lg/dl;

    invoke-static {p0, p1}, Lg/bls;->d(Lg/cmy;I)I

    move-result p1

    invoke-direct {v0, p1}, Lg/dl;-><init>(I)V

    const/4 p1, 0x0

    iput p1, v0, Lg/dl;->c:I

    iget-object v1, p0, Lg/cmy;->d:Lg/dl;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, v1, Lg/dl;->a:I

    :goto_1
    iput p1, v0, Lg/dl;->a:I

    iput-object v0, p0, Lg/cmy;->a:Lg/dl;

    return-void
.end method

.method public static d(Lg/cmy;I)I
    .locals 0

    iget-object p0, p0, Lg/cmy;->d:Lg/dl;

    if-nez p0, :cond_0

    return p1

    :cond_0
    iget p0, p0, Lg/dl;->b:I

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static e(Lg/cmy;Z)V
    .locals 3

    iget-object v0, p0, Lg/cmy;->b:Lg/gqc;

    if-eqz p1, :cond_0

    sget-object p1, Lg/fwv;->SAME_FRAME:Lg/fwv;

    invoke-virtual {v0}, Lg/gqc;->ai()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lg/fwv;->SAME_FRAME:Lg/fwv;

    iget p1, p0, Lg/cmy;->c:I

    add-int/lit8 p1, p1, -0x40

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg/awt;->an(Lg/gqc;I)[Lg/cqz;

    move-result-object v0

    new-instance v2, Lg/dl;

    invoke-static {p0, p1}, Lg/bls;->d(Lg/cmy;I)I

    move-result p1

    invoke-direct {v2, p1}, Lg/dl;-><init>(I)V

    iput v1, v2, Lg/dl;->c:I

    iput-object v0, v2, Lg/dl;->d:[Lg/cqz;

    iget-object p1, p0, Lg/cmy;->d:Lg/dl;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget p1, p1, Lg/dl;->a:I

    :goto_1
    iput p1, v2, Lg/dl;->a:I

    iput-object v2, p0, Lg/cmy;->a:Lg/dl;

    return-void
.end method


# virtual methods
.method public final c(Lg/cmv;Lg/gqc;)Lg/azo;
    .locals 6

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result p1

    new-instance v0, Ljava/util/HashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {p2}, Lg/gqc;->ap()I

    move-result v3

    sget-object v4, Lg/fwv;->a:[Lg/fwv;

    aget-object v4, v4, v3

    sget-object v5, Lg/bls;->a:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/Consumer;

    if-eqz v5, :cond_0

    new-instance v4, Lg/cmy;

    invoke-direct {v4, p2, v3, v1}, Lg/cmy;-><init>(Lg/gqc;ILg/dl;)V

    invoke-interface {v5, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, v4, Lg/cmy;->a:Lg/dl;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v1, Lg/dl;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lg/cyf;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found unsupported stack frame type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lg/eau;

    invoke-direct {p1, v0}, Lg/eau;-><init>(Ljava/util/Map;)V

    return-object p1
.end method
