.class public final Lg/gyg;
.super Lg/ftn;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final aw:Lg/ftn;

.field public final ax:Lg/far;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/ftn;Lg/far;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/ftn;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lg/gyg;->aw:Lg/ftn;

    iput-object p3, p0, Lg/gyg;->ax:Lg/far;

    return-void
.end method


# virtual methods
.method public final aa()Lg/ftn;
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0}, Lg/ftn;->aa()Lg/ftn;

    move-result-object v0

    return-object v0
.end method

.method public final ab()Z
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0}, Lg/ftn;->ab()Z

    move-result v0

    return v0
.end method

.method public final ac()Z
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0}, Lg/ftn;->ac()Z

    move-result v0

    return v0
.end method

.method public final ad(Lg/far;)Z
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0, p1}, Lg/ftn;->ad(Lg/far;)Z

    move-result p1

    return p1
.end method

.method public final af(Lg/ftn;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lg/ftn;->af(Lg/ftn;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0, p1, p2}, Lg/ftn;->af(Lg/ftn;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ak(Lg/far;)Z
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0, p1}, Lg/ftn;->ak(Lg/far;)Z

    move-result p1

    return p1
.end method

.method public final an()Z
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0}, Lg/ftn;->an()Z

    move-result v0

    return v0
.end method

.method public final aq()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lg/gyg;->ax:Lg/far;

    if-eqz v0, :cond_0

    iget v0, v0, Lg/far;->k:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v1, "android:menu:actionviewstates:"

    invoke-static {v0, v1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lg/gyg;->ax:Lg/far;

    return-object v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0, p1}, Lg/ftn;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lg/ftn;->ah(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lg/ftn;->ah(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/ftn;->ah(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lg/ftn;->ah(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lg/ftn;->ah(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lg/gyg;->ax:Lg/far;

    invoke-virtual {v0, p1}, Lg/far;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lg/gyg;->ax:Lg/far;

    invoke-virtual {v0, p1}, Lg/far;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Lg/gyg;->aw:Lg/ftn;

    invoke-virtual {v0, p1}, Lg/ftn;->setQwertyMode(Z)V

    return-void
.end method
