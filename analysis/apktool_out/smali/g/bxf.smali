.class public final Lg/bxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Lg/ert;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lg/ert;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/bxf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bxf;->a:Landroid/app/Activity;

    iput-object p2, p0, Lg/bxf;->c:Lg/ert;

    return-void
.end method

.method public constructor <init>(Lg/ert;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/bxf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bxf;->c:Lg/ert;

    iput-object p2, p0, Lg/bxf;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lg/bxf;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/bxf;->c:Lg/ert;

    iget-boolean p2, p1, Lg/ert;->e:Z

    iget-object v0, p0, Lg/bxf;->a:Landroid/app/Activity;

    if-eqz p2, :cond_0

    invoke-static {v0}, Lg/acw;->aa(Landroid/content/Context;)V

    :cond_0
    const p2, 0x7f120146

    invoke-static {v0, p2}, Lg/gm;->f(Landroid/content/Context;I)V

    const-string p2, "fail_accessibility_cancel"

    iget-object p1, p1, Lg/ert;->q:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/bxf;->a:Landroid/app/Activity;

    instance-of p2, p1, Lg/elf;

    iget-object v0, p0, Lg/bxf;->c:Lg/ert;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lg/elf;

    iget-object v1, v0, Lg/ert;->q:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p2, Lg/elf;->v:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v1, p2, Lg/elf;->v:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lg/elf;->z:Z

    :cond_2
    :goto_0
    const-string p2, "success_accessibility_positive"

    iget-object v1, v0, Lg/ert;->q:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lg/fso;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lg/ern;->g(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    const p2, 0x7f1203a2

    invoke-static {p1, p2}, Lg/gm;->e(Landroid/content/Context;I)V

    invoke-static {p1, v0}, Lg/cro;->aa(Landroid/app/Activity;Lg/ert;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
