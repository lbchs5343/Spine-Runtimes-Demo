.class public abstract Lg/ekq;
.super Lg/dms;
.source "SourceFile"


# static fields
.field public static final ACTION_PERMISSION_RESULT_RECEIVER:Ljava/lang/String; = "action_permissionResultReceiver"

.field public static final EXTRA_PERMISSION_NAME:Ljava/lang/String; = "permissionName"

.field public static final EXTRA_PERMISSION_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_PERMISSION_SEQ_ID:Ljava/lang/String; = "permissionSeqID"

.field public static final PERMISSION_RESULT_CANCEL:Ljava/lang/String; = "cancel"

.field public static final PERMISSION_RESULT_OK:Ljava/lang/String; = "ok"


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "permissionSeqID"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "permissionName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lg/apc;

    invoke-direct {v1, p0, v4, v5}, Lg/apc;-><init>(Lg/ekq;J)V

    new-array v0, v0, [Lg/fcd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lg/fyt;->c(Landroid/app/Activity;[Ljava/lang/String;[Lg/fcd;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
