.class public Lg/bbb;
.super Lg/ecs;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/ecs;-><init>()V

    invoke-static {}, Lg/aft;->c()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lg/anp;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/ecs;-><init>(Lg/anp;)V

    invoke-virtual {p1}, Lg/anp;->j()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lg/aft;->i(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/aft;->c()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public c(Lg/oi;)V
    .locals 1

    iget-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lg/oi;->i()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Lg/aft;->h(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public d(Lg/oi;)V
    .locals 1

    iget-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lg/oi;->i()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Lg/aft;->z(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public e(Lg/oi;)V
    .locals 1

    iget-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lg/oi;->i()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Lg/io;->y(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public f(Lg/oi;)V
    .locals 1

    iget-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lg/oi;->i()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Lg/io;->m(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public g()Lg/anp;
    .locals 3

    invoke-virtual {p0}, Lg/ecs;->k()V

    iget-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, Lg/aft;->t(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v0

    iget-object v1, p0, Lg/ecs;->j:[Lg/oi;

    iget-object v2, v0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v2, v1}, Lg/dif;->s([Lg/oi;)V

    return-object v0
.end method

.method public h(Lg/oi;)V
    .locals 1

    iget-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lg/oi;->i()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Lg/io;->l(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
