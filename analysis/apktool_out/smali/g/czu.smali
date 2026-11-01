.class public abstract Lg/czu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lg/fei;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/fei;

    invoke-direct {v0}, Lg/fei;-><init>()V

    iput-object v0, p0, Lg/czu;->a:Lg/fei;

    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lg/czu;->a:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lg/czu;->b()V

    :cond_0
    return-void
.end method
