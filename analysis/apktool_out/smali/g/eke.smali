.class public final Lg/eke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lg/die;

.field public final synthetic b:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic c:Lg/bgn;


# direct methods
.method public constructor <init>(Lg/die;Landroidx/appcompat/app/AlertController$RecycleListView;Lg/bgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eke;->a:Lg/die;

    iput-object p2, p0, Lg/eke;->b:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Lg/eke;->c:Lg/bgn;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lg/eke;->a:Lg/die;

    iget-object p2, p1, Lg/die;->j:[Z

    iget-object p4, p0, Lg/eke;->b:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p5

    aput-boolean p5, p2, p3

    :cond_0
    iget-object p1, p1, Lg/die;->d:Lg/gnt;

    iget-object p2, p0, Lg/eke;->c:Lg/bgn;

    iget-object p2, p2, Lg/bgn;->x:Lg/fpl;

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lg/gnt;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
