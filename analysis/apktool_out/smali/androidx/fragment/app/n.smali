.class public abstract Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final e:Landroidx/fragment/app/a;

.field public final f:Lg/ac;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a;Lg/ac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    iput-object p2, p0, Landroidx/fragment/app/n;->f:Lg/ac;

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    iget-object v1, v0, Landroidx/fragment/app/a;->c:Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/fragment/app/n;->f:Lg/ac;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/a;->k()V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    iget-object v1, v0, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, Lg/gdn;->c(Landroid/view/View;)Lg/gdn;

    move-result-object v1

    iget-object v0, v0, Landroidx/fragment/app/a;->d:Lg/gdn;

    if-eq v1, v0, :cond_1

    sget-object v2, Lg/gdn;->VISIBLE:Lg/gdn;

    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
