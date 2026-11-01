.class public final Lg/fhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lg/fxe$c;

.field public final synthetic b:Lg/elf;


# direct methods
.method public constructor <init>(Lg/elf;Lg/fxe$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fhd;->b:Lg/elf;

    iput-object p2, p0, Lg/fhd;->a:Lg/fxe$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lg/fhd;->b:Lg/elf;

    iget-object p2, p1, Lg/elf;->aa:Lg/elf;

    const/4 v0, 0x1

    sput-boolean v0, Lg/byh;->k:Z

    const-string v1, "is_agree_newest_agreement"

    invoke-static {p2, v1, v0}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object p2, p0, Lg/fhd;->a:Lg/fxe$c;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lg/fxe$c;->uaVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lg/elf;->aa:Lg/elf;

    const-string v2, "pagreeVersion"

    invoke-static {v1, v2, v0}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Lg/fxe$c;->paVersion:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object v0, p1, Lg/elf;->aa:Lg/elf;

    const-string v1, "uagreeVersion"

    invoke-static {v0, v1, p2}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object p2, p1, Lg/elf;->aa:Lg/elf;

    invoke-static {p2}, Lcn/trinea/developertools/MyApplication;->d(Landroid/content/Context;)V

    iget-object p2, p1, Lg/elf;->aa:Lg/elf;

    invoke-static {p2}, Lg/byh;->q(Landroid/content/ContextWrapper;)V

    iget-object p2, p1, Lg/elf;->aa:Lg/elf;

    invoke-static {p2}, Lg/fml;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lg/elf;->aa:Lg/elf;

    invoke-static {v1}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v1

    invoke-virtual {v1}, Lg/atf;->o()Z

    invoke-static {p2, v0}, Lcn/trinea/android/lib/view/BaseApplication;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/elf;->ai()V

    return-void
.end method
