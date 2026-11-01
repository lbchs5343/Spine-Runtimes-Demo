.class public final Lms/bz/bd/c/Pgl/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lms/bz/bd/c/Pgl/n0$pgla;


# instance fields
.field public final a:J

.field public final b:Landroid/content/Context;

.field public final c:Lms/bz/bd/c/Pgl/a;


# direct methods
.method public constructor <init>(Lms/bz/bd/c/Pgl/a;Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lms/bz/bd/c/Pgl/m0;->c:Lms/bz/bd/c/Pgl/a;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/m0;->b:Landroid/content/Context;

    iput-wide p3, p0, Lms/bz/bd/c/Pgl/m0;->a:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context could not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
