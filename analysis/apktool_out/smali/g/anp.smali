.class public final Lg/anp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/anp;


# instance fields
.field public final b:Lg/dif;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    sget-object v0, Lg/aav;->g:Lg/anp;

    sput-object v0, Lg/anp;->a:Lg/anp;

    return-void

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    sget-object v0, Lg/gcc;->ap:Lg/anp;

    sput-object v0, Lg/anp;->a:Lg/anp;

    return-void

    :cond_1
    sget-object v0, Lg/dif;->l:Lg/anp;

    sput-object v0, Lg/anp;->a:Lg/anp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/dif;

    invoke-direct {v0, p0}, Lg/dif;-><init>(Lg/anp;)V

    iput-object v0, p0, Lg/anp;->b:Lg/dif;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lg/aav;

    invoke-direct {v0, p0, p1}, Lg/aav;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg/anp;->b:Lg/dif;

    return-void

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    new-instance v0, Lg/hch;

    invoke-direct {v0, p0, p1}, Lg/hch;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg/anp;->b:Lg/dif;

    return-void

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    new-instance v0, Lg/gcc;

    invoke-direct {v0, p0, p1}, Lg/gcc;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg/anp;->b:Lg/dif;

    return-void

    :cond_2
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    new-instance v0, Lg/faf;

    invoke-direct {v0, p0, p1}, Lg/faf;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg/anp;->b:Lg/dif;

    return-void

    :cond_3
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    new-instance v0, Lg/ask;

    invoke-direct {v0, p0, p1}, Lg/ask;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg/anp;->b:Lg/dif;

    return-void

    :cond_4
    new-instance v0, Lg/u;

    invoke-direct {v0, p0, p1}, Lg/u;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lg/anp;->b:Lg/dif;

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;
    .locals 2

    new-instance v0, Lg/anp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lg/anp;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lg/goi;->u(Landroid/view/View;)Lg/anp;

    move-result-object p1

    iget-object v1, v0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v1, p1}, Lg/dif;->v(Lg/anp;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/dif;->p(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Lg/dif;->r(I)V

    :cond_0
    return-object v0
.end method

.method public static d(Lg/oi;IIII)Lg/oi;
    .locals 5

    iget v0, p0, Lg/oi;->c:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lg/oi;->d:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lg/oi;->e:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lg/oi;->b:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget-object v0, p0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->u()Lg/oi;

    move-result-object v0

    iget v0, v0, Lg/oi;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/anp;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lg/anp;

    iget-object v0, p0, Lg/anp;->b:Lg/dif;

    iget-object p1, p1, Lg/anp;->b:Lg/dif;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->u()Lg/oi;

    move-result-object v0

    iget v0, v0, Lg/oi;->b:I

    return v0
.end method

.method public final g(IIII)Lg/anp;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lg/bru;

    invoke-direct {v0, p0}, Lg/bru;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    new-instance v0, Lg/ghh;

    invoke-direct {v0, p0}, Lg/ghh;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    new-instance v0, Lg/yd;

    invoke-direct {v0, p0}, Lg/yd;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    new-instance v0, Lg/bbb;

    invoke-direct {v0, p0}, Lg/bbb;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lg/gjd;

    invoke-direct {v0, p0}, Lg/gjd;-><init>(Lg/anp;)V

    :goto_0
    invoke-static {p1, p2, p3, p4}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/ecs;->h(Lg/oi;)V

    invoke-virtual {v0}, Lg/ecs;->g()Lg/anp;

    move-result-object p1

    return-object p1
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->u()Lg/oi;

    move-result-object v0

    iget v0, v0, Lg/oi;->c:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/anp;->b:Lg/dif;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lg/dif;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->u()Lg/oi;

    move-result-object v0

    iget v0, v0, Lg/oi;->e:I

    return v0
.end method

.method public final j()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lg/anp;->b:Lg/dif;

    instance-of v1, v0, Lg/efp;

    if-eqz v1, :cond_0

    check-cast v0, Lg/efp;

    iget-object v0, v0, Lg/efp;->ag:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
