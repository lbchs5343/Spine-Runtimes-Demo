.class public final synthetic Lg/eon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lb/c/d;


# direct methods
.method public synthetic constructor <init>(Lb/c/d;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/eon;->b:I

    iput-object p1, p0, Lg/eon;->c:Lb/c/d;

    iput-object p2, p0, Lg/eon;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lg/eon;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/eon;->c:Lb/c/d;

    iget-object v0, p1, Lb/c/d;->u:Lb/c/d;

    const/4 v1, 0x1

    iget-object v2, p0, Lg/eon;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lg/baf;->ap(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lb/c/d;->u:Lb/c/d;

    const v0, 0x7f1203a3

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/eon;->c:Lb/c/d;

    iget-object v0, p1, Lb/c/d;->u:Lb/c/d;

    const/4 v1, 0x1

    iget-object v2, p0, Lg/eon;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lg/baf;->ap(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lb/c/d;->u:Lb/c/d;

    const v0, 0x7f1203a3

    invoke-static {p1, v0}, Lg/gm;->f(Landroid/content/Context;I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
