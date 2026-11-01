.class public final Lg/adp;
.super Lg/doi;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Lg/bnj;


# direct methods
.method public constructor <init>(Lg/bnj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/adp;->b:Lg/bnj;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/adp;->a:Z

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lg/adp;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/adp;->a:Z

    iget-object p1, p0, Lg/adp;->b:Lg/bnj;

    invoke-virtual {p1}, Lg/bnj;->j()V

    :cond_0
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/adp;->a:Z

    return-void
.end method
