.class public final Lg/gfa;
.super Lg/bzb;
.source "SourceFile"


# instance fields
.field public final i:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lg/bzb;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object p1, p0, Lg/gfa;->i:Landroid/view/WindowInsetsAnimation;

    return-void
.end method


# virtual methods
.method public final e(F)V
    .locals 1

    iget-object v0, p0, Lg/gfa;->i:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0, p1}, Lg/guj;->o(Landroid/view/WindowInsetsAnimation;F)V

    return-void
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lg/gfa;->i:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Lg/guj;->b(Landroid/view/WindowInsetsAnimation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()F
    .locals 1

    iget-object v0, p0, Lg/gfa;->i:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Lg/guj;->k(Landroid/view/WindowInsetsAnimation;)F

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lg/gfa;->i:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, Lg/guj;->g(Landroid/view/WindowInsetsAnimation;)I

    move-result v0

    return v0
.end method
