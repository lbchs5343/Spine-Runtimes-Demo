.class public final Lg/amt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:Lg/bke;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lg/bke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lg/amt;->e:Z

    iput-object p4, p0, Lg/amt;->a:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lg/amt;->b:Lg/bke;

    iput-object p1, p0, Lg/amt;->c:Ljava/lang/String;

    iput-object p2, p0, Lg/amt;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f(Lg/fwg;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lg/amt;->e:Z

    iget-object v1, p0, Lg/amt;->d:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lg/amt;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    invoke-static {p2, v1}, Lg/s;->f(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0

    :cond_0
    invoke-static {p2, v2}, Lg/s;->f(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    invoke-static {v2, p2}, Lg/cpe;->b(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lg/gyr;

    const-string v1, "Accessor "

    const-string v2, " threw exception"

    invoke-static {v1, p2, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-ne v0, p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lg/amt;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lg/fwg;->o(Ljava/lang/String;)V

    iget-object p2, p0, Lg/amt;->b:Lg/bke;

    invoke-virtual {p2, p1, v0}, Lg/bke;->a(Lg/fwg;Ljava/lang/Object;)V

    return-void
.end method
