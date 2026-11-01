.class public Lg/faf;
.super Lg/ask;
.source "SourceFile"


# instance fields
.field public am:Lg/oi;

.field public an:Lg/oi;

.field public ao:Lg/oi;


# direct methods
.method public constructor <init>(Lg/anp;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/ask;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg/faf;->am:Lg/oi;

    iput-object p1, p0, Lg/faf;->an:Lg/oi;

    iput-object p1, p0, Lg/faf;->ao:Lg/oi;

    return-void
.end method


# virtual methods
.method public f(Lg/oi;)V
    .locals 0

    return-void
.end method

.method public n()Lg/oi;
    .locals 1

    iget-object v0, p0, Lg/faf;->ao:Lg/oi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-static {v0}, Lg/aft;->g(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lg/oi;->h(Landroid/graphics/Insets;)Lg/oi;

    move-result-object v0

    iput-object v0, p0, Lg/faf;->ao:Lg/oi;

    :cond_0
    iget-object v0, p0, Lg/faf;->ao:Lg/oi;

    return-object v0
.end method

.method public q(IIII)Lg/anp;
    .locals 1

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, Lg/aft;->f(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object p1

    return-object p1
.end method

.method public t()Lg/oi;
    .locals 1

    iget-object v0, p0, Lg/faf;->am:Lg/oi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-static {v0}, Lg/aft;->m(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lg/oi;->h(Landroid/graphics/Insets;)Lg/oi;

    move-result-object v0

    iput-object v0, p0, Lg/faf;->am:Lg/oi;

    :cond_0
    iget-object v0, p0, Lg/faf;->am:Lg/oi;

    return-object v0
.end method

.method public w()Lg/oi;
    .locals 1

    iget-object v0, p0, Lg/faf;->an:Lg/oi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-static {v0}, Lg/aft;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lg/oi;->h(Landroid/graphics/Insets;)Lg/oi;

    move-result-object v0

    iput-object v0, p0, Lg/faf;->an:Lg/oi;

    :cond_0
    iget-object v0, p0, Lg/faf;->an:Lg/oi;

    return-object v0
.end method
