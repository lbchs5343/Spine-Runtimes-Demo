.class public final Lg/gyc;
.super Lg/js;
.source "SourceFile"


# instance fields
.field public h:Z

.field public final i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/gyc;->h:Z

    iput-object p1, p0, Lg/gyc;->i:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final a(Lg/fqk;)V
    .locals 1

    iget-object p1, p0, Lg/gyc;->i:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg/egh;->m(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/gyc;->h:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lg/gyc;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/egh;->m(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lg/gyc;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg/egh;->m(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final g(Lg/fqk;)V
    .locals 2

    iget-boolean v0, p0, Lg/gyc;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/gyc;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/egh;->m(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    return-void
.end method
