.class public final Lg/enh;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/dvz;


# instance fields
.field public final a:Lg/fts;

.field public final b:Lg/cej;

.field public c:Lg/up;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Lg/cwk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/enh;->a:Lg/fts;

    iget-object p1, p3, Lg/cwk;->a:Lg/eqn;

    invoke-interface {p1}, Lg/eqn;->dq()Lg/cej;

    move-result-object p1

    iput-object p1, p0, Lg/enh;->b:Lg/cej;

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    return-void
.end method

.method public static d(II)I
    .locals 2

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    mul-int v0, v0, p1

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final dq()V
    .locals 1

    iget-object v0, p0, Lg/enh;->a:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
