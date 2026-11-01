.class public Lg/eeh;
.super Lg/big;
.source "SourceFile"


# instance fields
.field public p:I


# direct methods
.method public constructor <init>(Lg/mi;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/big;-><init>(Lg/mi;)V

    instance-of p1, p1, Lg/dza;

    if-eqz p1, :cond_0

    sget-object p1, Lg/gfv;->HORIZONTAL_DIMENSION:Lg/gfv;

    iput-object p1, p0, Lg/big;->e:Lg/gfv;

    return-void

    :cond_0
    sget-object p1, Lg/gfv;->VERTICAL_DIMENSION:Lg/gfv;

    iput-object p1, p0, Lg/big;->e:Lg/gfv;

    return-void
.end method


# virtual methods
.method public final m(I)V
    .locals 1

    iget-boolean v0, p0, Lg/big;->j:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/big;->j:Z

    iput p1, p0, Lg/big;->l:I

    iget-object p1, p0, Lg/big;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/exs;

    invoke-interface {v0, v0}, Lg/exs;->v(Lg/exs;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
