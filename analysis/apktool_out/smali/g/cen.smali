.class public final synthetic Lg/cen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/aot;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/cen;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cen;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lg/foj;Ljava/lang/StringBuilder;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lg/cen;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cen;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 5

    iget v0, p0, Lg/cen;->a:I

    iget-object v1, p0, Lg/cen;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lg/foj;->j(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x20

    if-ge p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/16 v4, 0x7f

    if-ge p1, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    sget-object v4, Lg/cbd;->a:Ljava/util/regex/Pattern;

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne p1, v3, :cond_3

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_3

    goto :goto_0

    :goto_1
    xor-int/2addr v3, v2

    :goto_2
    if-eqz v3, :cond_6

    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "%04x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_3
    return-void

    :pswitch_0
    check-cast v1, Lg/aot;

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, v1, Lg/aot;->c:I

    add-int/2addr p1, v2

    iput p1, v1, Lg/aot;->c:I

    :cond_7
    iget p1, v1, Lg/aot;->b:I

    add-int/2addr p1, v2

    iput p1, v1, Lg/aot;->b:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 1

    iget v0, p0, Lg/cen;->a:I

    invoke-static {p0, p1}, Lj$/util/function/l;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method
