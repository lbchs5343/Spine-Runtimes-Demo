.class public final Lg/azw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public a:Lg/emr;

.field public final b:Landroid/view/ActionProvider;


# direct methods
.method public constructor <init>(Lg/hcv;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/azw;->b:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Lg/azw;->a:Lg/emr;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lg/far;

    iget-object p1, p1, Lg/far;->f:Lg/ftn;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lg/ftn;->b:Z

    invoke-virtual {p1, v0}, Lg/ftn;->am(Z)V

    :cond_0
    return-void
.end method
