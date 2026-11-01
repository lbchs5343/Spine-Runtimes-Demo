.class public final Lg/bsj;
.super Lg/baf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/amj;

.field public final synthetic b:Lg/eln;

.field public final synthetic c:Lg/fon;


# direct methods
.method public constructor <init>(Lg/amj;Lg/fon;Lg/eln;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bsj;->a:Lg/amj;

    iput-object p2, p0, Lg/bsj;->c:Lg/fon;

    iput-object p3, p0, Lg/bsj;->b:Lg/eln;

    return-void
.end method


# virtual methods
.method public final _ar(Lg/hed;Lg/cfm;)V
    .locals 2

    iget-object p1, p0, Lg/bsj;->a:Lg/amj;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/acw;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/amj;

    instance-of v0, p1, Lg/fza;

    if-eqz v0, :cond_2

    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    iget-object v1, p0, Lg/bsj;->c:Lg/fon;

    invoke-virtual {v1, v0}, Lg/fon;->d(Lg/fza;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    sget-object p1, Lg/csv;->FALL_THROUGH:Lg/csv;

    move-object v0, p2

    check-cast v0, Lg/lh;

    iget-object v0, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v0, p1}, Lg/sm;->g(Lg/csv;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2, p2}, Lg/gs;->q(Lg/amj;Lg/amj;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p2}, Lg/cfm;->x()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lg/eek;

    sget-object v0, Lg/hay;->BREAK:Lg/hay;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lg/eek;-><init>(Lg/hay;I)V

    sget-object v0, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {p2, v0}, Lg/lh;->w(Lg/csv;)V

    new-instance v0, Lg/ayi;

    iget-object v1, p0, Lg/bsj;->b:Lg/eln;

    invoke-direct {v0, v1}, Lg/ayi;-><init>(Lg/eln;)V

    invoke-virtual {p2, v0}, Lg/lh;->m(Lg/eue;)V

    new-instance v0, Lg/gqu;

    invoke-direct {v0, p2}, Lg/gqu;-><init>(Lg/eek;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
