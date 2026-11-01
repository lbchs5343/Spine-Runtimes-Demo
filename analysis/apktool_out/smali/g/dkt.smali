.class public final synthetic Lg/dkt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lg/atk;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lg/atk;Ljava/io/File;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dkt;->b:Lg/atk;

    iput-object p2, p0, Lg/dkt;->c:Ljava/io/File;

    iput-boolean p3, p0, Lg/dkt;->a:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lg/dkt;->b:Lg/atk;

    iget-object v1, v0, Lg/atk;->r:Lg/atk;

    iget-object v2, p0, Lg/dkt;->c:Ljava/io/File;

    invoke-static {v1, v2}, Lg/baf;->bf(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v2, p0, Lg/dkt;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "text/plain"

    goto :goto_0

    :cond_0
    const-string v2, "text/html"

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    iget-object v2, v0, Lg/atk;->r:Lg/atk;

    const v3, 0x7f1203a7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
