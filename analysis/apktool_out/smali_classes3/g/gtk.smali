.class public abstract Lg/gtk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/fca;

.field public static final b:Landroid/view/animation/LinearInterpolator;

.field public static final c:Lg/fca;

.field public static final d:Lg/fca;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lg/gtk;->b:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Lg/fca;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/fca;-><init>(I)V

    sput-object v0, Lg/gtk;->c:Lg/fca;

    new-instance v0, Lg/fca;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/fca;-><init>(I)V

    sput-object v0, Lg/gtk;->d:Lg/fca;

    new-instance v0, Lg/fca;

    sget-object v1, Lg/fca;->d:[F

    invoke-direct {v0, v1}, Lg/a;-><init>([F)V

    sput-object v0, Lg/gtk;->a:Lg/fca;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method public static e(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, Lg/awf;->g(FFFF)F

    move-result p0

    return p0
.end method

.method public static f(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p2

    if-gtz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-ltz v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    invoke-static {p0, p1, p4}, Lg/gtk;->e(FFF)F

    move-result p0

    return p0
.end method

.method public static g(IFI)I
    .locals 0

    sub-int/2addr p2, p0

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
