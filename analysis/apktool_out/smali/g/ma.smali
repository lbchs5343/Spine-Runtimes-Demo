.class public final synthetic Lg/ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lg/fpl;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lg/fpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ma;->a:Lg/fpl;

    iput-object p2, p0, Lg/ma;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lg/ma;->a:Lg/fpl;

    iget-object p2, p0, Lg/ma;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lg/cro;->s(Lg/fpl;Landroid/view/View;)V

    return-void
.end method
