.class public final synthetic Lg/dxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/fza;


# direct methods
.method public synthetic constructor <init>(Lg/diu;Lg/fza;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lg/dxx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dxx;->b:Lg/fza;

    return-void
.end method

.method public synthetic constructor <init>(Lg/fza;I)V
    .locals 0

    iput p2, p0, Lg/dxx;->a:I

    iput-object p1, p0, Lg/dxx;->b:Lg/fza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/dxx;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/dxx;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    iget v0, p0, Lg/dxx;->a:I

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lg/dxx;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dxx;->b:Lg/fza;

    check-cast p1, Lg/fza;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    iget-object v0, p0, Lg/dxx;->b:Lg/fza;

    check-cast p1, Lg/fza;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_1
    check-cast p1, Lg/adk;

    iget-object v0, p1, Lg/adk;->a:Ljava/util/List;

    sget-object v1, Lg/eln;->g:Lg/cuf;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lg/adk;->b:Lg/amj;

    iget-object v0, p0, Lg/dxx;->b:Lg/fza;

    invoke-static {v0, p1}, Lg/diu;->b(Lg/fza;Lg/amj;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_2
    check-cast p1, Lg/exw;

    iget-object p1, p1, Lg/exw;->a:Lg/fza;

    iget-object v0, p0, Lg/dxx;->b:Lg/fza;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    return p1

    :pswitch_3
    check-cast p1, Lg/mw;

    iget-object p1, p1, Lg/mw;->f:Lg/fza;

    iget-object v0, p0, Lg/dxx;->b:Lg/fza;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    return p1

    :pswitch_4
    check-cast p1, Lg/mw;

    iget-object p1, p1, Lg/mw;->a:Lg/fza;

    iget-object v0, p0, Lg/dxx;->b:Lg/fza;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    return p1

    :pswitch_5
    check-cast p1, Lg/aea;

    iget-object p1, p1, Lg/aea;->i:Lg/fza;

    iget-object v0, p0, Lg/dxx;->b:Lg/fza;

    invoke-static {p1, v0}, Lg/ffb;->ac(Lg/fza;Lg/fza;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
