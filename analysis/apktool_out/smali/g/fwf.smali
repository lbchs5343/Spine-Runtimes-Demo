.class public final Lg/fwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fcd;


# instance fields
.field public final synthetic a:Landroid/view/MenuItem;

.field public final synthetic b:Lc/b/b;


# direct methods
.method public constructor <init>(Lc/b/b;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fwf;->b:Lc/b/b;

    iput-object p2, p0, Lg/fwf;->a:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;)V
    .locals 1

    sget p1, Lc/b/b;->d:I

    iget-object p1, p0, Lg/fwf;->b:Lc/b/b;

    iget-object v0, p0, Lg/fwf;->a:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lc/b/b;->ac(Landroid/view/MenuItem;)V

    return-void
.end method

.method public final onDenied(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lg/fwf;->b:Lc/b/b;

    invoke-static {p1}, Lc/b/b;->j(Lc/b/b;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120146

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void
.end method
