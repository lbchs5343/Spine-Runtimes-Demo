.class public final Lg/eqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gig;


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Landroidx/appcompat/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eqs;->c:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/eqs;->a:Z

    return-void
.end method


# virtual methods
.method public final bh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/eqs;->a:Z

    return-void
.end method

.method public final bk()V
    .locals 1

    iget-object v0, p0, Lg/eqs;->c:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContextView;->u(Landroidx/appcompat/widget/ActionBarContextView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/eqs;->a:Z

    return-void
.end method

.method public final bp()V
    .locals 2

    iget-boolean v0, p0, Lg/eqs;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lg/eqs;->c:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, v1, Landroidx/appcompat/widget/ActionBarContextView;->t:Lg/elx;

    iget v0, p0, Lg/eqs;->b:I

    invoke-static {v1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->w(Landroidx/appcompat/widget/ActionBarContextView;I)V

    return-void
.end method
