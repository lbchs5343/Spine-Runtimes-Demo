.class public abstract Lg/efp;
.super Lg/dif;
.source "SourceFile"


# static fields
.field public static aa:Z

.field public static ab:Ljava/lang/reflect/Method;

.field public static x:Ljava/lang/Class;

.field public static y:Ljava/lang/reflect/Field;

.field public static z:Ljava/lang/reflect/Field;


# instance fields
.field public ac:I

.field public ad:[Lg/oi;

.field public ae:Lg/oi;

.field public af:Lg/anp;

.field public final ag:Landroid/view/WindowInsets;

.field public ah:Lg/oi;


# direct methods
.method public constructor <init>(Lg/anp;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/dif;-><init>(Lg/anp;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg/efp;->ae:Lg/oi;

    iput-object p2, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    return-void
.end method

.method private static a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lg/efp;->ab:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lg/efp;->x:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lg/efp;->y:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lg/efp;->z:Ljava/lang/reflect/Field;

    sget-object v1, Lg/efp;->y:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Lg/efp;->z:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, Lg/efp;->aa:Z

    return-void
.end method

.method public static ai(II)Z
    .locals 0

    and-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private am(Landroid/view/View;)Lg/oi;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_4

    sget-boolean v0, Lg/efp;->aa:Z

    if-nez v0, :cond_0

    invoke-static {}, Lg/efp;->a()V

    :cond_0
    sget-object v0, Lg/efp;->ab:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lg/efp;->x:Ljava/lang/Class;

    if-eqz v2, :cond_3

    sget-object v2, Lg/efp;->y:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lg/efp;->z:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lg/efp;->y:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, p1}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private an(IZ)Lg/oi;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Lg/oi;->a:Lg/oi;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Lg/efp;->ak(IZ)Lg/oi;

    move-result-object v2

    invoke-static {v0, v2}, Lg/oi;->f(Lg/oi;Lg/oi;)Lg/oi;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private g()Lg/oi;
    .locals 1

    iget-object v0, p0, Lg/efp;->af:Lg/anp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v0}, Lg/dif;->b()Lg/oi;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lg/oi;->a:Lg/oi;

    return-object v0
.end method


# virtual methods
.method public aj(Lg/oi;)V
    .locals 0

    iput-object p1, p0, Lg/efp;->ah:Lg/oi;

    return-void
.end method

.method public ak(IZ)Lg/oi;
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lg/oi;->a:Lg/oi;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_12

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_d

    const/16 p2, 0x8

    if-eq p1, p2, :cond_9

    const/16 p2, 0x10

    if-eq p1, p2, :cond_8

    const/16 p2, 0x20

    if-eq p1, p2, :cond_7

    const/16 p2, 0x40

    if-eq p1, p2, :cond_6

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Lg/efp;->af:Lg/anp;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lg/anp;->b:Lg/dif;

    invoke-virtual {p1}, Lg/dif;->j()Lg/fve;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/dif;->j()Lg/fve;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_14

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_2

    iget-object v1, p1, Lg/fve;->a:Landroid/view/DisplayCutout;

    invoke-static {v1}, Lg/eyo;->m(Landroid/view/DisplayCutout;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-lt p2, v0, :cond_3

    iget-object v3, p1, Lg/fve;->a:Landroid/view/DisplayCutout;

    invoke-static {v3}, Lg/eyo;->b(Landroid/view/DisplayCutout;)I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-lt p2, v0, :cond_4

    iget-object v4, p1, Lg/fve;->a:Landroid/view/DisplayCutout;

    invoke-static {v4}, Lg/eyo;->o(Landroid/view/DisplayCutout;)I

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-lt p2, v0, :cond_5

    iget-object p1, p1, Lg/fve;->a:Landroid/view/DisplayCutout;

    invoke-static {p1}, Lg/eyo;->a(Landroid/view/DisplayCutout;)I

    move-result v2

    :cond_5
    invoke-static {v1, v3, v4, v2}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lg/dif;->n()Lg/oi;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lg/dif;->w()Lg/oi;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p0}, Lg/dif;->t()Lg/oi;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Lg/efp;->ad:[Lg/oi;

    if-eqz p1, :cond_a

    invoke-static {p2}, Lg/cux;->am(I)I

    move-result p2

    aget-object v0, p1, p2

    :cond_a
    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lg/efp;->u()Lg/oi;

    move-result-object p1

    invoke-direct {p0}, Lg/efp;->g()Lg/oi;

    move-result-object p2

    iget p1, p1, Lg/oi;->b:I

    iget v0, p2, Lg/oi;->b:I

    if-le p1, v0, :cond_c

    invoke-static {v2, v2, v2, p1}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    return-object p1

    :cond_c
    iget-object p1, p0, Lg/efp;->ah:Lg/oi;

    if-eqz p1, :cond_14

    invoke-virtual {p1, v1}, Lg/oi;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lg/efp;->ah:Lg/oi;

    iget p1, p1, Lg/oi;->b:I

    iget p2, p2, Lg/oi;->b:I

    if-le p1, p2, :cond_14

    invoke-static {v2, v2, v2, p1}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    return-object p1

    :cond_d
    if-eqz p2, :cond_e

    invoke-direct {p0}, Lg/efp;->g()Lg/oi;

    move-result-object p1

    invoke-virtual {p0}, Lg/dif;->b()Lg/oi;

    move-result-object p2

    iget v0, p1, Lg/oi;->c:I

    iget v1, p2, Lg/oi;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Lg/oi;->e:I

    iget v3, p2, Lg/oi;->e:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Lg/oi;->b:I

    iget p2, p2, Lg/oi;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, v2, v1, p1}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    return-object p1

    :cond_e
    iget p1, p0, Lg/efp;->ac:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lg/efp;->u()Lg/oi;

    move-result-object p1

    iget-object p2, p0, Lg/efp;->af:Lg/anp;

    if-eqz p2, :cond_10

    iget-object p2, p2, Lg/anp;->b:Lg/dif;

    invoke-virtual {p2}, Lg/dif;->b()Lg/oi;

    move-result-object v0

    :cond_10
    iget p2, p1, Lg/oi;->b:I

    if-eqz v0, :cond_11

    iget v0, v0, Lg/oi;->b:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_11
    iget v0, p1, Lg/oi;->c:I

    iget p1, p1, Lg/oi;->e:I

    invoke-static {v0, v2, p1, p2}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    return-object p1

    :cond_12
    if-eqz p2, :cond_13

    invoke-direct {p0}, Lg/efp;->g()Lg/oi;

    move-result-object p1

    iget p1, p1, Lg/oi;->d:I

    invoke-virtual {p0}, Lg/efp;->u()Lg/oi;

    move-result-object p2

    iget p2, p2, Lg/oi;->d:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1, v2, v2}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    return-object p1

    :cond_13
    iget p1, p0, Lg/efp;->ac:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_15

    :cond_14
    :goto_4
    return-object v1

    :cond_15
    invoke-virtual {p0}, Lg/efp;->u()Lg/oi;

    move-result-object p1

    iget p1, p1, Lg/oi;->d:I

    invoke-static {v2, p1, v2, v2}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object p1

    return-object p1
.end method

.method public al(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x80

    if-eq p1, v2, :cond_1

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lg/efp;->ak(IZ)Lg/oi;

    move-result-object p1

    sget-object v0, Lg/oi;->a:Lg/oi;

    invoke-virtual {p1, v0}, Lg/oi;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Lg/dif;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lg/efp;

    iget-object v0, p0, Lg/efp;->ah:Lg/oi;

    iget-object v2, p1, Lg/efp;->ah:Lg/oi;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lg/efp;->ac:I

    iget p1, p1, Lg/efp;->ac:I

    invoke-static {v0, p1}, Lg/efp;->ai(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public h(I)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lg/efp;->al(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public i(I)Lg/oi;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg/efp;->an(IZ)Lg/oi;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/efp;->am(Landroid/view/View;)Lg/oi;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lg/oi;->a:Lg/oi;

    :cond_0
    invoke-virtual {p0, p1}, Lg/efp;->aj(Lg/oi;)V

    return-void
.end method

.method public q(IIII)Lg/anp;
    .locals 3

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    new-instance v1, Lg/bru;

    invoke-direct {v1, v0}, Lg/bru;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    new-instance v1, Lg/ghh;

    invoke-direct {v1, v0}, Lg/ghh;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    new-instance v1, Lg/yd;

    invoke-direct {v1, v0}, Lg/yd;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    new-instance v1, Lg/bbb;

    invoke-direct {v1, v0}, Lg/bbb;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lg/gjd;

    invoke-direct {v1, v0}, Lg/gjd;-><init>(Lg/anp;)V

    :goto_0
    invoke-virtual {p0}, Lg/efp;->u()Lg/oi;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lg/anp;->d(Lg/oi;IIII)Lg/oi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/ecs;->h(Lg/oi;)V

    invoke-virtual {p0}, Lg/dif;->b()Lg/oi;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lg/anp;->d(Lg/oi;IIII)Lg/oi;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/ecs;->e(Lg/oi;)V

    invoke-virtual {v1}, Lg/ecs;->g()Lg/anp;

    move-result-object p1

    return-object p1
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lg/efp;->ac:I

    return-void
.end method

.method public s([Lg/oi;)V
    .locals 0

    iput-object p1, p0, Lg/efp;->ad:[Lg/oi;

    return-void
.end method

.method public final u()Lg/oi;
    .locals 4

    iget-object v0, p0, Lg/efp;->ae:Lg/oi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object v0

    iput-object v0, p0, Lg/efp;->ae:Lg/oi;

    :cond_0
    iget-object v0, p0, Lg/efp;->ae:Lg/oi;

    return-object v0
.end method

.method public v(Lg/anp;)V
    .locals 0

    iput-object p1, p0, Lg/efp;->af:Lg/anp;

    return-void
.end method
