.class public final Lg/gct;
.super Lg/egk;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/egk;

.field public final synthetic b:Landroidx/fragment/app/b;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b;Lg/egk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gct;->b:Landroidx/fragment/app/b;

    iput-object p2, p0, Lg/gct;->a:Lg/egk;

    return-void
.end method


# virtual methods
.method public final c(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lg/gct;->a:Lg/egk;

    invoke-virtual {v0}, Lg/egk;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lg/egk;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lg/gct;->b:Landroidx/fragment/app/b;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/b;->onFindViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lg/gct;->a:Lg/egk;

    invoke-virtual {v0}, Lg/egk;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gct;->b:Landroidx/fragment/app/b;

    invoke-virtual {v0}, Landroidx/fragment/app/b;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
