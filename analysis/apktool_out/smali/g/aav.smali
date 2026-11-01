.class public final Lg/aav;
.super Lg/hch;
.source "SourceFile"


# static fields
.field public static final g:Lg/anp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lg/bxv;->w()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v0

    sput-object v0, Lg/aav;->g:Lg/anp;

    return-void
.end method

.method public constructor <init>(Lg/anp;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/hch;-><init>(Lg/anp;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public h(I)Z
    .locals 1

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-static {p1}, Lg/fsh;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Lg/bxv;->ad(Landroid/view/WindowInsets;I)Z

    move-result p1

    return p1
.end method

.method public i(I)Lg/oi;
    .locals 1

    iget-object v0, p0, Lg/efp;->ag:Landroid/view/WindowInsets;

    invoke-static {p1}, Lg/fsh;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Lg/bxv;->ac(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lg/oi;->h(Landroid/graphics/Insets;)Lg/oi;

    move-result-object p1

    return-object p1
.end method
