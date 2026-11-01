.class public final Lg/flo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lg/gq;

.field public final synthetic b:Lb/c/d;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lb/c/d;Ljava/util/ArrayList;Lg/gq;I)V
    .locals 0

    iput p4, p0, Lg/flo;->c:I

    iput-object p1, p0, Lg/flo;->b:Lb/c/d;

    iput-object p2, p0, Lg/flo;->d:Ljava/util/ArrayList;

    iput-object p3, p0, Lg/flo;->a:Lg/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lg/flo;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/flo;->b:Lb/c/d;

    iget-object p1, p1, Lb/c/d;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lg/flo;->a:Lg/gq;

    iget-object v0, v0, Lg/gq;->c:Ljava/lang/String;

    iget-object v1, p0, Lg/flo;->d:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0}, Lb/c/d;->ae(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/flo;->b:Lb/c/d;

    iget-object p1, p1, Lb/c/d;->ab:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lg/flo;->a:Lg/gq;

    iget-object v0, v0, Lg/gq;->c:Ljava/lang/String;

    iget-object v1, p0, Lg/flo;->d:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0}, Lb/c/d;->ae(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
