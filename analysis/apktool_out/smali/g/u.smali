.class public Lg/u;
.super Lg/efp;
.source "SourceFile"


# instance fields
.field public a:Lg/oi;


# direct methods
.method public constructor <init>(Lg/anp;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/efp;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg/u;->a:Lg/oi;

    return-void
.end method


# virtual methods
.method public final b()Lg/oi;
    .locals 4

    iget-object v0, p0, Lg/u;->a:Lg/oi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object v0

    iput-object v0, p0, Lg/u;->a:Lg/oi;

    :cond_0
    iget-object v0, p0, Lg/u;->a:Lg/oi;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public d()Lg/anp;
    .locals 2

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v0

    return-object v0
.end method

.method public e()Lg/anp;
    .locals 2

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v0

    return-object v0
.end method

.method public f(Lg/oi;)V
    .locals 0

    iput-object p1, p0, Lg/u;->a:Lg/oi;

    return-void
.end method
