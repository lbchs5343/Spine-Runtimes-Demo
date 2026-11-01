.class public final synthetic Lg/czt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lg/axl;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lg/awy;

.field public final synthetic f:Ljava/util/LinkedHashMap;

.field public final synthetic g:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lg/awy;Ljava/util/LinkedHashMap;Landroid/widget/TextView;ILandroid/view/View;Landroid/widget/TextView;Lg/axl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/czt;->e:Lg/awy;

    iput-object p2, p0, Lg/czt;->f:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lg/czt;->b:Landroid/widget/TextView;

    iput p4, p0, Lg/czt;->c:I

    iput-object p5, p0, Lg/czt;->d:Landroid/view/View;

    iput-object p6, p0, Lg/czt;->g:Landroid/widget/TextView;

    iput-object p7, p0, Lg/czt;->a:Lg/axl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    new-instance v2, Ljava/util/ArrayList;

    iget-object p1, p0, Lg/czt;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lg/czt;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lg/czt;->e:Lg/awy;

    invoke-static {v1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v8

    iget v0, p0, Lg/czt;->c:I

    invoke-virtual {v8, v0}, Lg/gmn;->p(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/CharSequence;

    new-instance v0, Lg/ebd;

    iget-object v3, p0, Lg/czt;->d:Landroid/view/View;

    iget-object v4, p0, Lg/czt;->g:Landroid/widget/TextView;

    iget-object v7, p0, Lg/czt;->a:Lg/axl;

    invoke-direct/range {v0 .. v7}, Lg/ebd;-><init>(Lg/awy;Ljava/util/ArrayList;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Lg/axl;)V

    iget-object v1, v8, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/die;

    iput-object v9, v1, Lg/die;->o:[Ljava/lang/CharSequence;

    iput-object v0, v1, Lg/die;->y:Landroid/content/DialogInterface$OnClickListener;

    iput p1, v1, Lg/die;->w:I

    const/4 p1, 0x1

    iput-boolean p1, v1, Lg/die;->l:Z

    invoke-virtual {v8}, Lg/gqc;->ak()Lg/fpl;

    return-void
.end method
