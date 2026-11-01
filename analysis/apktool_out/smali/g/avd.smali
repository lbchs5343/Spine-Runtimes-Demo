.class public final synthetic Lg/avd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lg/qy;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lg/qy;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/avd;->a:Lg/qy;

    iput-object p2, p0, Lg/avd;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object p1, Lg/qy;->CONNECTION:Lg/qy;

    iget-object p2, p0, Lg/avd;->a:Lg/qy;

    iget-object v0, p0, Lg/avd;->b:Landroid/app/Activity;

    if-eq p2, p1, :cond_1

    sget-object p1, Lg/qy;->RESULT_UNKNOWN:Lg/qy;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lg/bus;->a:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p1}, Lg/bus;->s(Landroid/app/Activity;Landroid/os/Bundle;)Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lg/afo;->ao(Landroid/content/Context;Z)Z

    return-void
.end method
