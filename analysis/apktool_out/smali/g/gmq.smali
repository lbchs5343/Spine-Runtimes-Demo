.class public final Lg/gmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lg/fjv;

.field public final synthetic b:Lg/dqe;


# direct methods
.method public constructor <init>(Lg/dqe;Lg/fjv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gmq;->b:Lg/dqe;

    iput-object p2, p0, Lg/gmq;->a:Lg/fjv;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lg/gmq;->b:Lg/dqe;

    invoke-static {p1}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lg/gmq;->a:Lg/fjv;

    invoke-virtual {v0}, Lg/fjv;->getVersionCode()I

    move-result v0

    const-string v1, "update_ignore_version"

    invoke-static {p1, v0, v1}, Lg/cro;->az(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
