.class public Lg/dif;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lg/anp;


# instance fields
.field public final m:Lg/anp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lg/bru;

    invoke-direct {v0}, Lg/bru;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    new-instance v0, Lg/ghh;

    invoke-direct {v0}, Lg/ghh;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    new-instance v0, Lg/yd;

    invoke-direct {v0}, Lg/yd;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    new-instance v0, Lg/bbb;

    invoke-direct {v0}, Lg/bbb;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lg/gjd;

    invoke-direct {v0}, Lg/gjd;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lg/ecs;->g()Lg/anp;

    move-result-object v0

    iget-object v0, v0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->k()Lg/anp;

    move-result-object v0

    iget-object v0, v0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->d()Lg/anp;

    move-result-object v0

    iget-object v0, v0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->e()Lg/anp;

    move-result-object v0

    sput-object v0, Lg/dif;->l:Lg/anp;

    return-void
.end method

.method public constructor <init>(Lg/anp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dif;->m:Lg/anp;

    return-void
.end method


# virtual methods
.method public b()Lg/oi;
    .locals 1

    sget-object v0, Lg/oi;->a:Lg/oi;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lg/anp;
    .locals 1

    iget-object v0, p0, Lg/dif;->m:Lg/anp;

    return-object v0
.end method

.method public e()Lg/anp;
    .locals 1

    iget-object v0, p0, Lg/dif;->m:Lg/anp;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/dif;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/dif;

    invoke-virtual {p0}, Lg/dif;->o()Z

    move-result v1

    invoke-virtual {p1}, Lg/dif;->o()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lg/dif;->c()Z

    move-result v1

    invoke-virtual {p1}, Lg/dif;->c()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lg/dif;->u()Lg/oi;

    move-result-object v1

    invoke-virtual {p1}, Lg/dif;->u()Lg/oi;

    move-result-object v3

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lg/dif;->b()Lg/oi;

    move-result-object v1

    invoke-virtual {p1}, Lg/dif;->b()Lg/oi;

    move-result-object v3

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lg/dif;->j()Lg/fve;

    move-result-object v1

    invoke-virtual {p1}, Lg/dif;->j()Lg/fve;

    move-result-object p1

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f(Lg/oi;)V
    .locals 0

    return-void
.end method

.method public h(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lg/dif;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lg/dif;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lg/dif;->u()Lg/oi;

    move-result-object v2

    invoke-virtual {p0}, Lg/dif;->b()Lg/oi;

    move-result-object v3

    invoke-virtual {p0}, Lg/dif;->j()Lg/fve;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(I)Lg/oi;
    .locals 0

    sget-object p1, Lg/oi;->a:Lg/oi;

    return-object p1
.end method

.method public j()Lg/fve;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lg/anp;
    .locals 1

    iget-object v0, p0, Lg/dif;->m:Lg/anp;

    return-object v0
.end method

.method public n()Lg/oi;
    .locals 1

    invoke-virtual {p0}, Lg/dif;->u()Lg/oi;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public q(IIII)Lg/anp;
    .locals 0

    sget-object p1, Lg/dif;->l:Lg/anp;

    return-object p1
.end method

.method public r(I)V
    .locals 0

    return-void
.end method

.method public s([Lg/oi;)V
    .locals 0

    return-void
.end method

.method public t()Lg/oi;
    .locals 1

    invoke-virtual {p0}, Lg/dif;->u()Lg/oi;

    move-result-object v0

    return-object v0
.end method

.method public u()Lg/oi;
    .locals 1

    sget-object v0, Lg/oi;->a:Lg/oi;

    return-object v0
.end method

.method public v(Lg/anp;)V
    .locals 0

    return-void
.end method

.method public w()Lg/oi;
    .locals 1

    invoke-virtual {p0}, Lg/dif;->u()Lg/oi;

    move-result-object v0

    return-object v0
.end method
