.class public final synthetic Lg/cjy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lg/yb;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lg/yb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cjy;->a:Lg/yb;

    iput p2, p0, Lg/cjy;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lg/cjy;->b:I

    iget-object v0, p0, Lg/cjy;->a:Lg/yb;

    iput p1, v0, Lg/yb;->f:I

    invoke-virtual {v0}, Lg/yb;->n()V

    return-void
.end method
