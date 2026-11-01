.class public final Lg/gjd;
.super Lg/ecs;
.source "SourceFile"


# static fields
.field public static b:Z

.field public static l:Ljava/lang/reflect/Field;

.field public static m:Z

.field public static n:Ljava/lang/reflect/Constructor;


# instance fields
.field public o:Lg/oi;

.field public p:Landroid/view/WindowInsets;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/ecs;-><init>()V

    invoke-static {}, Lg/gjd;->q()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lg/gjd;->p:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lg/anp;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/ecs;-><init>(Lg/anp;)V

    invoke-virtual {p1}, Lg/anp;->j()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lg/gjd;->p:Landroid/view/WindowInsets;

    return-void
.end method

.method private static q()Landroid/view/WindowInsets;
    .locals 6

    sget-boolean v0, Lg/gjd;->m:Z

    const/4 v1, 0x1

    const-class v2, Landroid/view/WindowInsets;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "CONSUMED"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lg/gjd;->l:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v1, Lg/gjd;->m:Z

    :cond_0
    sget-object v0, Lg/gjd;->l:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    nop

    :cond_1
    sget-boolean v0, Lg/gjd;->b:Z

    const/4 v4, 0x0

    if-nez v0, :cond_2

    :try_start_2
    new-array v0, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lg/gjd;->n:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-boolean v1, Lg/gjd;->b:Z

    :cond_2
    sget-object v0, Lg/gjd;->n:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    :try_start_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    :cond_3
    return-object v3
.end method


# virtual methods
.method public e(Lg/oi;)V
    .locals 0

    iput-object p1, p0, Lg/gjd;->o:Lg/oi;

    return-void
.end method

.method public g()Lg/anp;
    .locals 3

    invoke-virtual {p0}, Lg/ecs;->k()V

    iget-object v0, p0, Lg/gjd;->p:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v0

    iget-object v1, p0, Lg/ecs;->j:[Lg/oi;

    iget-object v2, v0, Lg/anp;->b:Lg/dif;

    invoke-virtual {v2, v1}, Lg/dif;->s([Lg/oi;)V

    iget-object v1, p0, Lg/gjd;->o:Lg/oi;

    invoke-virtual {v2, v1}, Lg/dif;->f(Lg/oi;)V

    return-object v0
.end method

.method public h(Lg/oi;)V
    .locals 4

    iget-object v0, p0, Lg/gjd;->p:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    iget v1, p1, Lg/oi;->c:I

    iget v2, p1, Lg/oi;->d:I

    iget v3, p1, Lg/oi;->e:I

    iget p1, p1, Lg/oi;->b:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lg/gjd;->p:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method
