.class public final Lg/bru;
.super Lg/ghh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/ghh;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg/anp;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/ghh;-><init>(Lg/anp;)V

    return-void
.end method


# virtual methods
.method public a(ILg/oi;)V
    .locals 1

    iget-object v0, p0, Lg/bbb;->b:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Lg/fsh;->a(I)I

    move-result p1

    invoke-virtual {p2}, Lg/oi;->i()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lg/bxv;->s(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    return-void
.end method
