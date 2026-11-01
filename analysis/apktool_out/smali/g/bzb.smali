.class public abstract Lg/bzb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field public c:F

.field public final d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/bzb;->b:I

    iput-object p2, p0, Lg/bzb;->d:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Lg/bzb;->a:J

    return-void
.end method


# virtual methods
.method public e(F)V
    .locals 0

    iput p1, p0, Lg/bzb;->c:F

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lg/bzb;->a:J

    return-wide v0
.end method

.method public g()F
    .locals 2

    iget-object v0, p0, Lg/bzb;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v1, p0, Lg/bzb;->c:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lg/bzb;->c:F

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lg/bzb;->b:I

    return v0
.end method
