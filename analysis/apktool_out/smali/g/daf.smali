.class public abstract Lg/daf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;Lg/gxm;I)V
    .locals 4

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lg/cip;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_DELAY_MET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, p1}, Lg/cip;->g(Landroid/content/Intent;Lg/gxm;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x24000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000000

    :goto_0
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object p2

    invoke-virtual {p1}, Lg/gxm;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lg/gxm;J)V
    .locals 4

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->g()Lg/duw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg/duw;->o(Lg/gxm;)Lg/cgv;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p1, v1, Lg/cgv;->c:I

    invoke-static {p0, p2, p1}, Lg/daf;->b(Landroid/content/Context;Lg/gxm;I)V

    invoke-static {p0, p2, p1, p3, p4}, Lg/daf;->d(Landroid/content/Context;Lg/gxm;IJ)V

    return-void

    :cond_0
    new-instance v1, Lg/dcq;

    invoke-direct {v1, p1}, Lg/dcq;-><init>(Landroidx/work/impl/WorkDatabase;)V

    new-instance v2, Lg/amb;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lg/amb;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v2}, Lg/gac;->ai(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "workDatabase.runInTransa\u2026NAGER_ID_KEY) }\n        )"

    invoke-static {p1, v1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, Lg/cgv;

    iget-object v2, p2, Lg/gxm;->a:Ljava/lang/String;

    iget v3, p2, Lg/gxm;->b:I

    invoke-direct {v1, v2, v3, p1}, Lg/cgv;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lg/duw;->u(Lg/cgv;)V

    invoke-static {p0, p2, p1, p3, p4}, Lg/daf;->d(Landroid/content/Context;Lg/gxm;IJ)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lg/gxm;IJ)V
    .locals 4

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/high16 v1, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    sget-object v2, Lg/cip;->a:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ACTION_DELAY_MET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2, p1}, Lg/cip;->g(Landroid/content/Intent;Lg/gxm;)V

    invoke-static {p0, p2, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method
