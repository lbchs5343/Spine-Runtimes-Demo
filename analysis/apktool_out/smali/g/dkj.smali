.class public final Lg/dkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fcd;


# instance fields
.field public final synthetic a:Lc/e/b;

.field public final synthetic b:Z

.field public final synthetic c:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Lc/e/b;ZLandroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dkj;->a:Lc/e/b;

    iput-boolean p2, p0, Lg/dkj;->b:Z

    iput-object p3, p0, Lg/dkj;->c:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;)V
    .locals 1

    sget p1, Lc/e/b;->d:I

    iget-object p1, p0, Lg/dkj;->a:Lc/e/b;

    iget-boolean v0, p0, Lg/dkj;->b:Z

    invoke-virtual {p1, v0}, Lc/e/b;->q(Z)V

    return-void
.end method

.method public final onDenied(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lg/dkj;->c:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lg/dkj;->a:Lc/e/b;

    iget-object p1, p1, Lc/e/b;->i:Lc/e/b;

    const v0, 0x7f120146

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void
.end method
