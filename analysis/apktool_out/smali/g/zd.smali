.class public final Lg/zd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lg/dmr;


# direct methods
.method public constructor <init>(Lg/dmr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/zd;->a:Lg/dmr;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lg/zd;->a:Lg/dmr;

    iget-object v0, p1, Lg/dmr;->d:Lg/elf;

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->j()Lg/fxe$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p1, Lg/dmr;->e:Lg/elf;

    iget-object v3, v0, Lg/fxe$a;->faqUrl:Ljava/lang/String;

    iget-object p1, v0, Lg/fxe$a;->faqTitle:Ljava/lang/String;

    invoke-static {p1}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string v7, ""

    const-string v5, ""

    invoke-static/range {v2 .. v7}, Lg/dov;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
